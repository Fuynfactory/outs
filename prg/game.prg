
// ficha del juego 
process tab(
	int posx,
	int posy)
private
	int modo;
	int prof;
	int tabl;
	int posa;
	int value;
	int cont;	
	bool toZero= false;
	bool active = false;
end
begin 
	cont=0;
	modo=Game_now.modo;
	prof=Game_now.prof;
	tabl=Game_now.tabl;

	posa= (posx-1)+((posy-1)*6);
	x = MODE_VGA_X/19;
	y = (MODE_VGA_Y/14)-2;
	x=x*posx*2;
	y=y*posy*2;
	file = fpg_icons;
	
	// saber cuales estan activados 
	if (tabl==4) // tablado de 4x4
		if ((posa<7) 
		  or (posa==11) 
		  or (posa==12) 
		  or (posa==17) 
		  or (posa==18) 
		  or (posa==23) 
		  or (posa==24) 
		  or (posa=>29))
			active= false;	// tapado
		elseif
			active= true;	
		end
	elseif (tabl==5) // tablero de 5x5
		if ((posa<7) 		  
		  or (posa==12) 		  
		  or (posa==18) 		  
		  or (posa==24) 
		  or (posa==30))
			active= false;	// tapado
		elseif
			active= true;	
		end		
	elseif (tabl==6) // tablero de 6x6
		active= true; // todos activados 		
	end
	
	// asignacion de graficos 
	if (active) // si es activado 
		value = G_iPanel[posa];
		if (prof==2) // binario 
			if (value==0)
				graph=110;
			else
				graph=115;
			end			
		elseif (prof==3) // ternario 
			if (value==0)
				graph=120;
			elseif (value==1)
				graph=124;
			else
				graph=128;
			end 
		elseif (prof==4)// cuatrinario
			if (value==0)
				graph=140;
			elseif (value==1)
				graph=142;
			elseif (value==2)
				graph=144;
			else
				graph=146;
			end 
		elseif (prof==5) // quintario 
			if (value==0)
				graph=150;
			elseif (value==1)
				graph=153;
			elseif (value==2)
				graph=156;
			elseif (value==3)
				graph=159;
			else
				graph=162;
			end 
		
		end
	else // no activado 
		graph=105; // tapadera
	end
	
	size = 39*2;
	While ((not bg_Salir)and (Sceeen == GAME_SCR))
		cont++;
		if (active)
			if (value <> G_iPanel[posa])
				if (prof==2) // binario	
					if (G_iPanel[posa]==1)						
						graph++;
						if (graph=115) 
							cont=0;
							value=1; 
						end
					else
						graph--;
						if (graph=110) 
							cont=0;
							value=0; 
						end
					end	
					
				elseif (prof==3) // ternario 
					graph++;
						
					if (graph==124) 
						cont=0;
						value=1; 
					elseif (graph==128) 
						value=2; 
						cont=0;
					elseif(graph==132) 
						cont=0;
						value=0; 
						graph=120; 
					end	
					
				elseif (prof==4)// cuatrinario
					graph++;
					if (graph==142)
						cont=0;
						value=1;
					elseif (graph==144)
						cont=0;
						value=2;
					elseif (graph==146)
						cont=0;
						value=3;
					elseif (graph==148)
						cont=0;
						graph=140;
						value=0;
					end
					
					
				elseif (prof==5) // quintario 
					if (toZero)
						graph--;
						if (graph==150)
							toZero= false;
							cont=0;
							value=0;
						end
					else 
						graph++;
						if (graph==153)
							cont=0;
							value=1;
						elseif (graph==156)
							cont=0;
							value=2;
						elseif (graph==159)
							cont=0;
							value=3;
						elseif (graph==162)
							cont=0;
							value=4;
						elseif (graph==163)
							graph=162;
							toZero= true;
						end
					end
				end
			else 
				if (cont>15)			
					if (prof==2) // binario	
						if (G_iPanel[posa]==1)
							graph=115;
						else 
							graph=110;
						end
					elseif (prof==3)
						if (G_iPanel[posa]==1)
							graph=124;
						elseif (G_iPanel[posa]==2)
							graph=128;
						else
							graph=120;
						end
					elseif (prof==4)
						if (G_iPanel[posa]==1)
							graph=142;
						elseif (G_iPanel[posa]==2)
							graph=144;
						elseif (G_iPanel[posa]==3)
							graph=146;
						else
							graph=140;
						end
					elseif (prof==5)
						if (G_iPanel[posa]==1)
							graph=153;
						elseif (G_iPanel[posa]==2)
							graph=156;
						elseif (G_iPanel[posa]==3)
							graph=159;
						elseif (G_iPanel[posa]==4)
							graph=162;
						else
							graph=150;
						end
					end
				end
				if (Tablero_active)
					If (collision (type raton) and (bool_raton_has_click))				
						if (mouse.left)// cuando pulsemos con el raton encima de el 
							bool_raton_has_click=false;
							play_wav(snd_click,0);
							//----------
							games_press ( posa);
							if	(suma()==0)
								pasar_Nivel();							
							end
						end		
					end
				end 
			end			
		end
		frame;	
	end	
end;


process pasar_Nivel()
private
end
begin
	//TODO sonido victoria 
	//oarar el juego	
	Tablero_active = false;
	frame (3000);
	fade(0,0,0,4);
	while((fading==1)and (not bg_Salir))
		frame;						
	end
	if (Game_now.level>=10) // cuando llega al nivel 10 salir a los niveles
		level_clear_Scr(); //marcar el nivel terminado 
		savedata();
		fade(0,0,0,4);
		while((fading==1)and (not bg_Salir))
			frame;						
		end
		//TODO  parar la musica 
		unload_music_Screen();
		
		graph = 100;
		Sceeen = SELECT_SCR;
		Seleccion_Nivel_screen();
		fade(100,100,100,4);
		while((fading==1)and (not bg_Salir))
			frame;						
		end
	else
		help_cheat= false;
		Game_now.level=Game_now.level+1;
		loadGameRom();
	end
	fade(100,100,100,4);
	while((fading==1)and (not bg_Salir))
		frame;
	end
	Tablero_active = true;
end


// informacion de cuanto hay que pulsar para solucionar 
function int lessTo (int ins)
private 
	int prof;
	int outs=0;
end
begin
	prof= Game_now.prof;
	
	if (prof==2)
		if (ins==1) 
			outs=1;
		end
	elseif (prof==3)
		if (ins==1) 
			outs=2;
		elseif (ins==2) 
			outs=1;
		end
	elseif (prof==4)
		if (ins==1) 
			outs=3;
		elseif (ins==2) 
			outs=2;
		elseif (ins==3) 
			outs=1;
		end
	else 
		if (ins==1) 
			outs=4;
		elseif (ins==2) 
			outs=3;
		elseif (ins==3) 
			outs=2;
		elseif (ins==4) 
			outs=1;
		end
	end
	return outs;
end


// cuando se pressiona una casilla tanto en load como en el juego 
function games_press (
	int posa)
private 
	int modo;
	int prof;
	int tabl;
end 
begin 	
	modo=Game_now.modo;
	prof=Game_now.prof;
	tabl=Game_now.tabl;
	
	G_iPanel[posa]= (G_iPanel[posa]+1) mod prof;// cambia el mismo
	p_ipanel[posa]= (p_ipanel[posa]+1) mod prof;// anotacion
	
	if (modo == MCRUZ)
		//p_ipanel[posa]= (lessTo (p_ipanel[posa], prof);// anotacion
			
 		// cmabio arriba 
		if ((tabl==4)||(tabl==5)) // cuando es tamaño 4 el tablero or 5
			if (posa>11)
				G_iPanel[posa-6]= (G_iPanel[posa-6]+1) mod prof;
			end
		else 
			if (posa>5)
				G_iPanel[posa-6]= (G_iPanel[posa-6]+1) mod prof;
			end
		end
		
		// cambio drecha 
		if (tabl==4)
			if ((posa<>10) && (posa<>16) && (posa<>22) && (posa<>28))
				G_iPanel[posa+1]= (G_iPanel[posa+1]+1) mod prof;
			end
		elseif (tabl==5)
			if ((posa<>11) && (posa<>17) && (posa<>23) && (posa<>29) && (posa<>35))
				G_iPanel[posa+1]= (G_iPanel[posa+1]+1) mod prof;
			end
		else 
			if ((posa<>11) && (posa<>17) && (posa<>23) && (posa<>29) && (posa<>35) && (posa<>5))
				G_iPanel[posa+1]= (G_iPanel[posa+1]+1) mod prof;
			end							
		end
		
		// cambio abajo 
		if (tabl==4)
			if (posa<25)
				G_iPanel[posa+6]= (G_iPanel[posa+6]+1) mod prof;
			end
		elseif ((tabl==5) || (tabl==6))
			if (posa<30)
				G_iPanel[posa+6]= (G_iPanel[posa+6]+1) mod prof;
			end
		end

		// cambio izquierda
		if ((tabl==4) || (tabl==5))
			if ((posa<>01) && (posa<>07) && (posa<>13) && (posa<>19) && (posa<>25)&& (posa<>31))
				G_iPanel[posa-1]= (G_iPanel[posa-1]+1) mod prof;
			end
		else 
			if ((posa<>00) && (posa<>06) && (posa<>12) && (posa<>18) && (posa<>24)&& (posa<>30))
				G_iPanel[posa-1]= (G_iPanel[posa-1]+1) mod prof;
			end
		end
	else // equis
	
	//modo = MEQUIS;		
		// cmabio arriba derecha
		if (tabl==4) 
			if ((posa>12) && (posa<>16) && (posa<>22) && (posa<>28))
				G_iPanel[posa-5]= (G_iPanel[posa-5]+1) mod prof;
			end
		elseif (tabl==5)
			if ((posa>12) && (posa<>17) && (posa<>23) && (posa<>29) && (posa<>35))
				G_iPanel[posa-5]= (G_iPanel[posa-5]+1) mod prof;
			end
		else 
			if ((posa>5) && (posa<>11) && (posa<>17) && (posa<>23) && (posa<>29) && (posa<>35))
				G_iPanel[posa-5]= (G_iPanel[posa-5]+1) mod prof;
			end
		end

		// cmabio abajo derecha
		if (tabl==4) 
			if ((posa<22) && (posa<>16) && (posa<>10))
				G_iPanel[posa+7]= (G_iPanel[posa+7]+1) mod prof;
			end
		else 
			if ((posa<29) && (posa<>23) && (posa<>17) && (posa<>11)&& (posa<>5))
				G_iPanel[posa+7]= (G_iPanel[posa+7]+1) mod prof;
			end
		end

	// 00 01 02 03 04 05 
	// 06 07 08 09 10 11
	// 12 13 14 15 16 17
	// 18 19 20 21 22 23
	// 24 25 26 27 28 29
	// 30 31 32 33 34 35
	
		// cmabio abajo izquierda
		if (tabl==4)
			if ((posa<23) && (posa<>19) && (posa<>13) && (posa<>07))
				G_iPanel[posa+5]= (G_iPanel[posa+5]+1) mod prof;
			end
		elseif (tabl==5)							
			if ((posa<30) && (posa<>25) && (posa<>19) && (posa<>13) && (posa<>07))
				G_iPanel[posa+5]= (G_iPanel[posa+5]+1) mod prof;
			end
		else 
			if ((posa<30) && (posa<>24) && (posa<>18) && (posa<>12) && (posa<>06) && (posa<>00))
				G_iPanel[posa+5]= (G_iPanel[posa+5]+1) mod prof;
			end
		end
		
		// cmabio arriba izquierda
		if ((tabl==4) || (tabl==5))
			if ((posa>12) && (posa<>19) && (posa<>25) && (posa<>31))
				G_iPanel[posa-7]= (G_iPanel[posa-7]+1) mod prof;
			end
		else 
			if ((posa>6) && (posa<>12) && (posa<>18) && (posa<>24) && (posa<>30))
				G_iPanel[posa-7]= (G_iPanel[posa-7]+1) mod prof;
			end
		end
		
	end
	//prof = 5; tabl = 6;
	
	//****************
	// hacer cuando se pu
	//*****************
	
end;

// informacion del modo de juego a la derecha del panel 
process game_tab_Inf(
	int tpe,
	int data)
private 
	int posx;
	int posy;
end
begin
	size = 39*2;
	if (tpe==I_LEVEL)
	graph=170+Game_now.level;
	posx=8;
	posy=1;
	elseif (tpe==I_MODE)
	posx=9;
	posy=1;
	if (data==MCRUZ)
		graph=61;
	elseif
		graph=62;
	end
	elseif (tpe==I_PROF)
		posx=8;
		posy=2;
		graph=40+data;
	else
		posx=9;
		posy=2;
		graph=50+data;
	end	
	
	
	x = MODE_VGA_X/19;
	y = (MODE_VGA_Y/14)-2;
	x=(x*posx*2)-20;
	y=y*posy*2;	
	file = fpg_icons;
	
	While ((not bg_Salir) and (Sceeen == GAME_SCR))
		if (tpe==I_LEVEL)
			graph=170+Game_now.level;
		end;
		frame;	
	end
end;


/// carga una pantalla 
function loadGameRom()
private 
	int modo;
	int prof;
	int tabl;
	int nivel;
	
	int cont=0;
	int ted;	
	String cao;
end
begin	
	modo=Game_now.modo;
	prof=Game_now.prof;
	tabl=Game_now.tabl;
	nivel=Game_now.level;


	romGame();
	
	g_ipanel=C_PANELZERO;
	//write(0,10,10,0,s_loadGameRom);
	while (cont<36)		
		ted=0;
		cao=substr (s_loadGameRom,cont,1);
		ted=atoi (cao);
		
		//write(0,cont*50,10,0,cao);
		//write(0,cont*10,10,0,ted);
		//write(0,cont*10,10,0,ted);
		
		//p_ipanel[cont]=ted;
		//games_press (cont, modo, prof, cont);
		if (ted>0)		
			games_press (cont);
		end
		if (ted>1)
			games_press (cont);
		end
		if (ted>2)
			games_press (cont);
		end
		if (ted>3)
			games_press (cont);
		end
		cont++;
	end	
end



// si el nivel esta completo la suma deve ser 0
function int suma()
private 
	int tab1;
	int out=0;
end
begin
	tab1= Game_now.tabl;
	// 0 0 0 0 0 0
	// 0 1 1 1 1 0
	// 0 1 1 1 1 0
	// 0 1 1 1 1 0
	// 0 1 1 1 1 0
	// 0 0 0 0 0 0
	if (tab1>3)
		out=out+G_iPanel[7]+G_iPanel[8]+G_iPanel[9]+G_iPanel[10];
		out=out+G_iPanel[13]+G_iPanel[14]+G_iPanel[15]+G_iPanel[16];
		out=out+G_iPanel[19]+G_iPanel[20]+G_iPanel[21]+G_iPanel[22];
		out=out+G_iPanel[25]+G_iPanel[26]+G_iPanel[27]+G_iPanel[28];
	end
	if (tab1>4)
		out=out+G_iPanel[11]+G_iPanel[17]+G_iPanel[23]+G_iPanel[29];
		out=out+G_iPanel[31]+G_iPanel[32]+G_iPanel[33]+G_iPanel[34]+G_iPanel[35];
	end
	if (tab1>5)
		out=out+G_iPanel[0]+G_iPanel[1]+G_iPanel[2]+G_iPanel[3]+G_iPanel[4]+G_iPanel[5];
		out=out+G_iPanel[6]+G_iPanel[12]+G_iPanel[18]+G_iPanel[24]+G_iPanel[30];		
	end
	
	return out;
end


// los numeros que quedan
process quedan(	
	int posx,
	int posy)
private 
	int prof;
	int modo;
	int tabl;
	int posa;
	int value;
end
begin 
	modo=Game_now.modo;
	tabl=Game_now.tabl;
	prof=Game_now.prof;
	
	posa= (posx-1)+((posy-1)*6);
	x = MODE_VGA_X/19;
	y = (MODE_VGA_Y/14)-2;
	x=x*posx*2;
	y=y*posy*2;
	file = fpg_icons;
	while ((not bg_Salir)and (Sceeen == GAME_SCR))
		if (help_cheat)
			graph =(lessTo (p_ipanel[posa])+100);
		else 
			graph = 100;
		end 
		frame;
	end
end


//tipo 1 primera ayuda
process helper(int tipo)
private 
	bool sigue = TRUE;	
	boll activado = FALSE;
end
begin 
	x=-(ig_x_Max/2);
	y= ig_y_Max/2;	
	if (tipo == 1)
		graph= 200;
	end
	if (tipo == 2)
		graph= 210;
	end
	if (tipo == 3)
		graph= 207;
	end
	if (tipo == 4)
		graph= 208;
	end
	if (tipo == 5)
		graph= 209;
	end

	Tablero_active = false;
	size= 70;
	while ((sigue) and (not bg_Salir))
		if (activado)
			if (collision (type raton) and (bool_raton_has_click))
				if (mouse.left)
				play_wav(snd_click,0);
				bool_raton_has_click=false;
					if (tipo == 1)
						if (graph==206)
							sigue = FALSE;
						else 
							graph++;
						end
					elseif (tipo == 2)
						if (graph==215)
							sigue = FALSE;
						else 
							graph++;
						end
					else 
						sigue = FALSE;					
					end
				end
			end
		else 
			x=x+10; 
			if (x>(ig_x_Max/2))
				activado = TRUE;
			end
		end 
		frame ;
	end
	while ((x<(ig_x_Max+(ig_x_Max/2))) and (not bg_Salir))
		x=x+10; 
		frame;
	end
	Tablero_active = true;
end


process game()

private 
	int modo;
	int prof;
	int tabl;

	int buttons[36];
	int helps[36];
	int nivel;
	int ip_btn_help;
	int ip_btn_reset;
	int ip_btn_exit;
	int inf_level;
	int inf_mode;
	int inf_prof;
	int inf_tama;

	
end
begin 	
	modo=Game_now.modo;
	prof=Game_now.prof;
	tabl=Game_now.tabl;
	nivel=Game_now.level;
	Tablero_active = false;
	
	load_music_Screen(); // 
	
	/// TODO pantallas de ayuda tutorial inicial 
	if (GameK_Scr.HelpIniCr == BLOQUEADO)		
		helper(1);		 
		GameK_Scr.HelpIniCr = ACTIVADO;
	elseif ((GameK_Scr.HelpIniEx == BLOQUEADO) && (Game_now.modo == MEQUIS))// pantalla de ayuda tutorial con el X 
		// primera exis		
		helper(2);		
		GameK_Scr.HelpIniEx = ACTIVADO;
	elseif ((GameK_Scr.Help3Pos == BLOQUEADO) && (Game_now.prof == 3 ))// pantalla de ayuda de 3 posiciones 
		// ayuda de 3		
		helper(3);
		GameK_Scr.Help3Pos = ACTIVADO; 
	elseif ((GameK_Scr.Help4Pos == BLOQUEADO) && (Game_now.prof == 4 ))	// pantalla de ayuda de 4 posiciones 
		// auida de 4		
		helper(4);
		GameK_Scr.Help4Pos = ACTIVADO; 
	elseif ((GameK_Scr.Help5Pos == BLOQUEADO) && (Game_now.prof == 5 )) // pantalla de ayuda de 5 posiciones 
		// ayuda de 5			
		helper(5);
		GameK_Scr.Help5Pos = ACTIVADO; 
	else 
		Tablero_active=true;
	end
	
	//iniciar los botones 
	help_cheat= false;
	helps[0]=quedan(1,1);
	helps[1]=quedan(2,1);
	helps[2]=quedan(3,1);
	helps[3]=quedan(4,1);
	helps[4]=quedan(5,1);
	helps[5]=quedan(6,1);
	helps[6]=quedan(1,2);
	helps[7]=quedan(2,2);
	helps[8]=quedan(3,2);
	helps[9]=quedan(4,2);
	helps[10]=quedan(5,2);
	helps[11]=quedan(6,2);
	helps[12]=quedan(1,3);
	helps[13]=quedan(2,3);
	helps[14]=quedan(3,3);
	helps[15]=quedan(4,3);
	helps[16]=quedan(5,3);
	helps[17]=quedan(6,3);
	helps[18]=quedan(1,4);
	helps[19]=quedan(2,4);
	helps[20]=quedan(3,4);
	helps[21]=quedan(4,4);
	helps[22]=quedan(5,4);
	helps[23]=quedan(6,4);
	helps[24]=quedan(1,5);
	helps[25]=quedan(2,5);
	helps[26]=quedan(3,5);
	helps[27]=quedan(4,5);
	helps[28]=quedan(5,5);
	helps[29]=quedan(6,5);
	helps[30]=quedan(1,6);
	helps[31]=quedan(2,6);
	helps[32]=quedan(3,6);
	helps[33]=quedan(4,6);
	helps[34]=quedan(5,6);
	helps[35]=quedan(6,6);
	
	
	buttons[0]= tab(1 ,1);
	buttons[1]= tab(2 ,1);
	buttons[2]= tab(3 ,1);
	buttons[3]= tab(4 ,1);
	buttons[4]= tab(5 ,1);
	buttons[5]= tab(6 ,1);
	buttons[6]= tab(1 ,2);
	buttons[7]= tab(2 ,2);
	buttons[8]= tab(3 ,2);
	buttons[9]= tab(4 ,2);
	buttons[10]= tab(5 ,2);	
	buttons[11]= tab(6 ,2);
	buttons[12]= tab(1 ,3);
	buttons[13]= tab(2 ,3);
	buttons[14]= tab(3 ,3);
	buttons[15]= tab(4 ,3);
	buttons[16]= tab(5 ,3);
	buttons[17]= tab(6 ,3);
	buttons[18]= tab(1 ,4);
	buttons[19]= tab(2 ,4);
	buttons[20]= tab(3 ,4);
	buttons[21]= tab(4 ,4);
	buttons[22]= tab(5 ,4);	
	buttons[23]= tab(6 ,4);
	buttons[24]= tab(1 ,5);
	buttons[25]= tab(2 ,5);
	buttons[26]= tab(3 ,5);
	buttons[27]= tab(4 ,5);
	buttons[28]= tab(5 ,5);
	buttons[29]= tab(6 ,5);
	buttons[30]= tab(1 ,6);
	buttons[31]= tab(2 ,6);
	buttons[32]= tab(3 ,6);
	buttons[33]= tab(4 ,6);
	buttons[34]= tab(5 ,6);	
	buttons[35]= tab(6 ,6);
	ip_btn_help=btn_help();
	ip_btn_reset=btn_reset();
	ip_btn_exit=btn_exit();	
	
	inf_level=game_tab_Inf(I_LEVEL, nivel);
	inf_mode=game_tab_Inf(I_MODE, modo );
	inf_prof=game_tab_Inf(I_PROF,prof);
	inf_tama=game_tab_Inf(I_TAMA,tabl);
	
	
	
	// reset de los paneles 
	
	
	p_panelZero();
	//p_ipanel=C_PANELZERO;
	//G_iPanel=C_PANELZERO;	
	frame;
	
	
	
	loadGameRom();
	
	
	
	//h14 -> 50p 
	//W19 -> w9
	// relacion 39%
	While ((not bg_Salir) and (Sceeen == GAME_SCR))
		frame;	
	end
end;

function p_panelZero()
private 
	int cont=0;
end
begin
	while (cont<36)
		p_ipanel[cont]=0;
		G_iPanel[cont]=0;
		cont++;
	end	
end




// boton exit del juego 
process btn_exit()
	
private 
	int posx=8;
	int posy=3;
	int posa;
	int value;
end
begin 
	posa= (posx-1)+((posy-1)*6);
	x = MODE_VGA_X/19;
	y = (MODE_VGA_Y/14)+1;
	x=x*posx*2;
	y=y*posy*2;
	file = fpg_icons;
	graph = 5;
	while ((not bg_Salir)and (Sceeen == GAME_SCR))
		if (Tablero_active)
			If (collision (type raton) and (bool_raton_has_click))				
				if (mouse.left)// cuando pulsemos con el raton encima de el 					
					bool_raton_has_click=false; 
					play_wav(snd_click,0);
					/// se pierde los avances echos 
					
					fade(0,0,0,4);
					while((fading==1)and (not bg_Salir))
						frame;						
					end
					
					unload_music_Screen();
					graph = 100;
					Sceeen = SELECT_SCR;
					Seleccion_Nivel_screen();
					fade(100,100,100,4);
					while((fading==1)and (not bg_Salir))
						frame;						
					end				
				end		
			end
		end
		frame;
	end
end

// boton reset del juego
process btn_reset()
	
private 
	int posx=8;
	int posy=4;
	int posa;
	int value;
end
begin 
	posa= (posx-1)+((posy-1)*6);
	x = MODE_VGA_X/19;
	y = (MODE_VGA_Y/14)+4;
	x=x*posx*2;
	y=(y*posy*2)+5;
	file = fpg_icons;
	graph = 7;
	while ((not bg_Salir)and (Sceeen == GAME_SCR))
		if (Tablero_active)
			If (collision (type raton) and (bool_raton_has_click))				
				if (mouse.left)// cuando pulsemos con el raton encima de el 
					bool_raton_has_click=false;
					play_wav(snd_click,0);
					
					help_cheat= false;
					p_panelZero();
					//p_ipanel=C_PANELZERO;
					//G_iPanel=C_PANELZERO;	
					frame;
					loadGameRom();
				
				end		
			end
		end
		frame;
	end
end

// boton help del juego 
process btn_help()
	
private 
	int posx=8;
	int posy=5;
	int posa;
	int value;
end
begin 
	posa= (posx-1)+((posy-1)*6);
	x = MODE_VGA_X/19;
	y = (MODE_VGA_Y/14)+7;
	x=x*posx*2;
	y=y*posy*2;
	file = fpg_icons;
	graph = 6;
	while ((not bg_Salir)and (Sceeen == GAME_SCR))
		if (Tablero_active)
			If (collision (type raton) and (bool_raton_has_click))				
				if (mouse.left)// cuando pulsemos con el raton encima de el 
					play_wav(snd_click,0);
					bool_raton_has_click=false;
					help_cheat= true;
				end		
			end
		end
		frame;
	end
end


function load_music_Screen()
	private	
		int modo;
		int prof;
	end
	begin
		modo=Game_now.modo;
		prof=Game_now.prof;
		if (modo==MEQUIS)
			if (prof==2)
				snd_sound =load_song(MUS+"track005.ogg");
			elseif (prof==3)
				snd_sound =load_song(MUS+"track006.ogg");
			elseif (prof==4)
				snd_sound =load_song(MUS+"track007.ogg");
			else
				snd_sound =load_song(MUS+"track008.ogg");
			end
		else
			if (prof==2)
				snd_sound =load_song(MUS+"track001.ogg");
			elseif (prof==3)
				snd_sound =load_song(MUS+"track002.ogg");
			elseif (prof==4)
				snd_sound =load_song(MUS+"track003.ogg");
			else
				snd_sound =load_song(MUS+"track004.ogg");
			end
		end
		set_song_volume(Game_Sound.Music);
		play_song(snd_sound,-1);
		
		
		if (prof==2)
			img_fondo=load_png(IMG+"pant001.png");
		elseif (prof==3)
			img_fondo=load_png(IMG+"pant002.png");
		elseif (prof==4)
			img_fondo=load_png(IMG+"pant003.png");
		else
			img_fondo=load_png(IMG+"pant004.png");
		end
		
		
		put_screen (0,img_fondo);
		///hay que pasar las musica en OGG!!!
		
	end
	
function unload_music_Screen()
	private
	end
	begin
		fade_music_off(200);
		unload_song(snd_sound);
		unload_map(0,img_fondo);
	end
