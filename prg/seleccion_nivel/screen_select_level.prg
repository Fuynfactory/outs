// pantalla seleccion de nivel
process Seleccion_Nivel_screen()
	private
		int idLevel[24];
		int idCartel[16];		
		int button_exit;
		int Button_end;
	end
	begin 
		
		idCartel[0] = cartelSelectMode(MEQUIS);
		idCartel[1] = cartelSelectMode(MCRUZ);
		idCartel[2] = cartelSelectMode(P2T0);
		idCartel[3] = cartelSelectMode(P3T0);
		idCartel[4] = cartelSelectMode(P4T0);
		idCartel[5] = cartelSelectMode(P5T0);
		idCartel[6] = cartelSelectMode(P0T4);
		idCartel[7] = cartelSelectMode(P0T5);
		idCartel[8] = cartelSelectMode(P0T6);
		idCartel[9] = cartelSelectMode(P2T01);
		idCartel[10] = cartelSelectMode(P3T01);
		idCartel[11] = cartelSelectMode(P4T01);
		idCartel[12] = cartelSelectMode(P5T01);
		idCartel[13] = cartelSelectMode(P0T41);
		idCartel[14] = cartelSelectMode(P0T51);
		idCartel[15] = cartelSelectMode(P0T61);
		
		idLevel[0] = cartelSelectLevel(CP2T4);
		idLevel[1] = cartelSelectLevel(CP2T5);
		idLevel[2] = cartelSelectLevel(CP2T6);
		idLevel[3] = cartelSelectLevel(CP3T4);
		idLevel[4] = cartelSelectLevel(CP3T5);
		idLevel[5] = cartelSelectLevel(CP3T6);
		idLevel[6] = cartelSelectLevel(CP4T4);
		idLevel[7] = cartelSelectLevel(CP4T5);
		idLevel[8] = cartelSelectLevel(CP4T6);
		idLevel[9] = cartelSelectLevel(CP5T4);
		idLevel[10] = cartelSelectLevel(CP5T5);
		idLevel[11] = cartelSelectLevel(CP5T6);	
		idLevel[12] = cartelSelectLevel(EP2T4);
		idLevel[13] = cartelSelectLevel(EP2T5);
		idLevel[14] = cartelSelectLevel(EP2T6);
		idLevel[15] = cartelSelectLevel(EP3T4);
		idLevel[16] = cartelSelectLevel(EP3T5);
		idLevel[17] = cartelSelectLevel(EP3T6);
		idLevel[18] = cartelSelectLevel(EP4T4);
		idLevel[19] = cartelSelectLevel(EP4T5);
		idLevel[20] = cartelSelectLevel(EP4T6);
		idLevel[21] = cartelSelectLevel(EP5T4);
		idLevel[22] = cartelSelectLevel(EP5T5);
		idLevel[23] = cartelSelectLevel(EP5T6);	
		
		button_exit = SsslExitButton();
		Button_end = SsslEndButton();
		
		// carga 
		
		
		// iniciar
		x=MODE_VGA_X/2;
		y=MODE_VGA_Y/2;
		
		img_fondo = load_png(IMG+"seleccionnivel\fondoSelNivel.png");
		put_screen (0,img_fondo);

		// Loop principal 
		While ((not bg_Salir) and (Sceeen == SELECT_SCR))
			frame;	
		end;
		
		// limpieza de memoria 
		//map_clear(0,BACKGROUND);
		
		//Clear_screen();
		//unload_map(0,img_fondo);
		
		//signal (idOpcion1,S_KILL);
	end
	
	
process  cartelSelectMode(int idScreen)
	private 
		bool rodate= false;
	end
	begin		
		// carga
		
		// iniciar 		
		x=MODE_VGA_X/11;
		y=MODE_VGA_Y/8;
		if (idScreen == MEQUIS) x=x*8; y=y*1;
		elseif (idScreen == MCRUZ) x=x*3; y=y*1;		
		elseif (idScreen == P2T0) x=x*1; y=y*3; rodate= true;
		elseif (idScreen == P3T0) x=x*1; y=y*4; rodate= true;
		elseif (idScreen == P4T0) x=x*1; y=y*5; rodate= true;
		elseif (idScreen == P5T0) x=x*1; y=y*6; rodate= true;
		elseif (idScreen == P0T4) x=x*2; y=y*2;
		elseif (idScreen == P0T5) x=x*3; y=y*2;
		elseif (idScreen == P0T6) x=x*4; y=y*2;
		elseif (idScreen == P2T01)	idScreen=idScreen-100; x=x*6; y=y*3; rodate= true;
		elseif (idScreen == P3T01)	idScreen=idScreen-100; x=x*6; y=y*4; rodate= true;
		elseif (idScreen == P4T01)	idScreen=idScreen-100; x=x*6; y=y*5; rodate= true;
		elseif (idScreen == P5T01)	idScreen=idScreen-100; x=x*6; y=y*6; rodate= true;
		elseif (idScreen == P0T41)	idScreen=idScreen-100; x=x*7; y=y*2;
		elseif (idScreen == P0T51)	idScreen=idScreen-100; x=x*8; y=y*2;
		elseif (idScreen == P0T61) idScreen=idScreen-100; x=x*9; y=y*2;
		else 
		end
		y=y+MODE_VGA_Y/16; // correccion para salir algo mas abajo
		x=x+MODE_VGA_X/22; // correccion para salir algo mas abajo
		size=60;
		file = fpg_icons;		
		graph= idScreen;
		z=10;
		//write(0,160,100,4,IMG+"seleccionnivel\nivel.png"+x+" "+y);
		
		// loop
		While ((not bg_Salir) and (Sceeen == SELECT_SCR))			
			if (rodate)
				angle= angle + 5000;
			end
			frame;
		end
		// limpieza de memoria 
		//unload_map(0,idOpcion1Img);
	end 

	
	process  cartelSelectLevel(int idScreen)
	private 		
		int estado;
		int graphOrg;
		int cont_a;
		
		int modo;
		int prof;
		int tabl;
	end
	begin		
		// carga
		
		// iniciar 		
		x = MODE_VGA_X/11;
		y = MODE_VGA_Y/8;
		if (idScreen == CP2T4) x = x*2; y = y*3; estado = GameK_Scr.cruzP2T4;	modo = MCRUZ; prof = 2; tabl = 4;
		elseif (idScreen == CP2T5) x = x*3; y = y*3; estado = GameK_Scr.cruzP2T5; modo = MCRUZ; prof = 2; tabl = 5;
		elseif (idScreen == CP2T6) x = x*4; y = y*3; estado = GameK_Scr.cruzP2T6; modo = MCRUZ; prof = 2; tabl = 6;
		elseif (idScreen == CP3T4) x = x*2; y = y*4; estado = GameK_Scr.cruzP3T4; modo = MCRUZ; prof = 3; tabl = 4;
		elseif (idScreen == CP3T5) x = x*3; y = y*4; estado = GameK_Scr.cruzP3T5; modo = MCRUZ; prof = 3; tabl = 5;
		elseif (idScreen == CP3T6) x = x*4; y = y*4; estado = GameK_Scr.cruzP3T6; modo = MCRUZ; prof = 3; tabl = 6;
		elseif (idScreen == CP4T4) x = x*2; y = y*5; estado = GameK_Scr.cruzP4T4; modo = MCRUZ; prof = 4; tabl = 4;
		elseif (idScreen == CP4T5) x = x*3; y = y*5; estado = GameK_Scr.cruzP4T5; modo = MCRUZ; prof = 4; tabl = 5;
		elseif (idScreen == CP4T6) x = x*4; y = y*5; estado = GameK_Scr.cruzP4T6; modo = MCRUZ; prof = 4; tabl = 6;
		elseif (idScreen == CP5T4) x = x*2; y = y*6; estado = GameK_Scr.cruzP5T4; modo = MCRUZ; prof = 5; tabl = 4;
		elseif (idScreen == CP5T5) x = x*3; y = y*6; estado = GameK_Scr.cruzP5T5; modo = MCRUZ; prof = 5; tabl = 5;
		elseif (idScreen == CP5T6) x = x*4; y = y*6; estado = GameK_Scr.cruzP5T6; modo = MCRUZ; prof = 5; tabl = 6;
		
		elseif (idScreen == EP2T4) x = x*7; y = y*3; estado = GameK_Scr.equisP2T4; modo = MEQUIS; prof = 2; tabl = 4;
		elseif (idScreen == EP2T5) x = x*8; y = y*3; estado = GameK_Scr.equisP2T5; modo = MEQUIS; prof = 2; tabl = 5;
		elseif (idScreen == EP2T6) x = x*9; y = y*3; estado = GameK_Scr.equisP2T6; modo = MEQUIS; prof = 2; tabl = 6;
		elseif (idScreen == EP3T4) x = x*7; y = y*4; estado = GameK_Scr.equisP3T4; modo = MEQUIS; prof = 3; tabl = 4;
		elseif (idScreen == EP3T5) x = x*8; y = y*4; estado = GameK_Scr.equisP3T5; modo = MEQUIS; prof = 3; tabl = 5;
		elseif (idScreen == EP3T6) x = x*9; y = y*4; estado = GameK_Scr.equisP3T6; modo = MEQUIS; prof = 3; tabl = 6;
		elseif (idScreen == EP4T4) x = x*7; y = y*5; estado = GameK_Scr.equisP4T4; modo = MEQUIS; prof = 4; tabl = 4;
		elseif (idScreen == EP4T5) x = x*8; y = y*5; estado = GameK_Scr.equisP4T5; modo = MEQUIS; prof = 4; tabl = 5;
		elseif (idScreen == EP4T6) x = x*9; y = y*5; estado = GameK_Scr.equisP4T6; modo = MEQUIS; prof = 4; tabl = 6;
		elseif (idScreen == EP5T4) x = x*7; y = y*6; estado = GameK_Scr.equisP5T4; modo = MEQUIS; prof = 5; tabl = 4;
		elseif (idScreen == EP5T5) x = x*8; y = y*6; estado = GameK_Scr.equisP5T5; modo = MEQUIS; prof = 5; tabl = 5;
		elseif (idScreen == EP5T6) x = x*9; y = y*6; estado = GameK_Scr.equisP5T6; modo = MEQUIS; prof = 5; tabl = 6;
		end
		
		if (estado == BLOQUEADO)
		graph = 11;
		elseif (estado == ACTIVADO)
		graph = 21;
		elseif (estado == COMPLETADO)
		graph = 31;
		end		
		y=y+MODE_VGA_Y/16; // correccion para salir algo mas abajo
		x=x+MODE_VGA_X/22; // correccion para salir algo mas abajo
		size=50;
		file = fpg_icons;		
		z=10;
		graphOrg=graph;
		//write(0,160,100,4,IMG+"seleccionnivel\nivel.png"+x+" "+y);
		
		// loop
		cont_a=0;
		While ((not bg_Salir) and (Sceeen == SELECT_SCR))			
			if (collision (type raton))
				cont_a++;
				if (cont_a==4)
					if (graph==graphOrg+5)
						graph=graphOrg;
					end				
					graph++;
					cont_a=0;
				end;
				if (mouse.left)
					//TODO cuiando se pulse si se pulsa uno bloqueado 
					play_wav(snd_click,0);
					fade(0,0,0,4);
					while((fading==1)and (not bg_Salir))
						frame;						
					end	
					Sssl_unload();

					Sceeen = GAME_SCR;
					Game_now.modo=modo;
					Game_now.prof=prof;
					Game_now.tabl=tabl;
					Game_now.level=1;
					game();
					
					fade(100,100,100,4);
					while((fading==1)and (not bg_Salir))
						frame;						
					end
				end
			else
			graph=graphOrg;	
			end
			frame;
		end
		// limpieza de memoria 
		//unload_map(0,idOpcion1Img);
	end 

	
	process SsslExitButton()
	private 
		bool has_click;
	end
	
	begin
		has_click= false;
		x=MODE_VGA_X/11;
		y=MODE_VGA_Y/8;
		x=x*4; 
		y=y*1;
		size=50;
		y=y+MODE_VGA_Y/16; // correccion para salir algo mas abajo
		x=x+MODE_VGA_X/22; // correccion para salir algo mas abajo
		z=10;
		graph = 9;
		while ((not bg_Salir) and (Sceeen == SELECT_SCR))
			if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
				if (mouse.left)
					if (!has_click)					 
						has_click=true;
						////////////////////sonido
						play_wav(snd_click,0);
						
						fade(0,0,0,4);
						while((fading==1)and (not bg_Salir))
							frame;
						end	
						Sssl_unload();
						
						Sceeen = INICIO_SCR;	
						pantalla_Inicio();
						
					end
				else 
					has_click=False;
				end			
			end
			frame;
		end
	end

	
	process SsslEndButton()
	private 
		bool has_click;
	end
	
	begin
		has_click= false;
		x=MODE_VGA_X/11;
		y=MODE_VGA_Y/8;
		size=50;
		x=x*7; 
		y=y*1;		
     	y=y+MODE_VGA_Y/16; // correccion para salir algo mas abajo
		x=x+MODE_VGA_X/22; // correccion para salir algo mas abajo

		z=10;
		graph = 8;
		while ((not bg_Salir) and (Sceeen == SELECT_SCR))
			if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
				if (mouse.left)
					if (!has_click)					 
						has_click=true;
						////////////////////sonido
						play_wav(snd_click,0);
						
						fade(0,0,0,4);
						while((fading==1)and (not bg_Salir))
							frame;
						end	
						Sssl_unload();
						
						Sceeen = INICIO_SCR;	
						pantalla_Inicio();
						
					end
				else 
					has_click=False;
				end			
			end
			frame;
		end
	end

	
	function  Sssl_unload()
		private 
		end
		begin
			Clear_screen();
			map_unload(0,img_fondo);

		end
		