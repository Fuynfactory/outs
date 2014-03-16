// pantalla de menu principal
process pantalla_Inicio()
	private		
		int idBtnGame;
		int idBtnSalir;
		int idBtnOption;
		int idFondo;
		int idText;
		int tim;
	end
	begin
		// carga 
		// idFondo = load_png(IMG+"inicio\inicio.png");
		// iniciar
		x=MODE_VGA_X/2;
		y=MODE_VGA_Y/2;
		
		// muestra los logos del software usado
		graph=250;
		z=5;
				
		// carga sonido intro 
		snd_sound=load_song(MUS+"Newintro.WAV");
		play_song(snd_sound,0);
		set_song_volume(Game_Sound.Music);

		//muestra el titulo del juego en el centro de la pantalla 
		graph=252; 
		fade(100,100,100,4);
		while((fading==1)and (not bg_Salir))
			frame;						
		end				
		while (y > 200)
			frame 
			y=y-6;
		end
		
		// flash para aparecer fondos y menus 
		fade(200,200,200,15);
		while((fading==1)and (not bg_Salir))
			frame;						
		end		
		idFondo = MenuScreenBtnBlackGround();
		idBtnGame = MenuScreenBtnGame();
		idBtnSalir = MenuScreenBtnSalir ();
		idBtnOption = MenuScreenBtnOption();
		idText = write(0,100,700,0,"Outs! from http://www.Fuyn.net 2014");

		frame;
		fade(100,100,100,15);
		while((fading==1)and (not bg_Salir))
			frame;						
		end				

		// Loop principal 
		While ((not bg_Salir) and (Sceeen == INICIO_SCR))
			frame;	
		end
		delete_text(idText);
		// limpieza de memoria 
		//map_clear(0,BACKGROUND);
		// unload_map(0,idFondo);		
	end;

process MenuScreenBtnBlackGround()
	private 
	end
	begin
		x=(MODE_VGA_X/2);
		y=(MODE_VGA_Y/2);
		z=10;
		graph = 301;
		while ((not bg_Salir) and (Sceeen == INICIO_SCR))
			frame;
		end
	end
	
	
//Boton Salir
process MenuScreenBtnSalir ()
	private 
	end
	begin
		x=(MODE_VGA_X/6)*5;
		y=(MODE_VGA_Y/6)*5;
		graph = 253;
		z=5;
		while ((not bg_Salir) and (Sceeen == INICIO_SCR))
			if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
				if (mouse.left)
					graph = 254;
					play_wav(snd_click,0);
					fade(0,0,0,4);
					FADE_MUSIC_OFF (200);
					while((fading==1)and (not bg_Salir))
						frame;
					end
					graph= 100;
					bg_Salir=true;
				end
			end
			frame;
		end
	end;
	
	
// Boton Opcion
process MenuScreenBtnOption ()
	private 
	end
	begin
		x=(MODE_VGA_X/6)*3;
		y=(MODE_VGA_Y/6)*5;
		graph = 263;
		while ((not bg_Salir) and (Sceeen == INICIO_SCR))
			if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
				if (mouse.left)
					graph = 264;
					play_wav(snd_click,0);
					fade(0,0,0,4);
					FADE_MUSIC_OFF (200);
					while((fading==1)and (not bg_Salir))
						frame;
					end
					graph= 100;
					Sceeen = GAME_OPTION_SOUND;
					game_Option_Screen();
					fade(100,100,100,4);
					while((fading==1)and (not bg_Salir))
						frame;						
					end
				end
			end
			frame;
		end
	end;
	
	
	
	


// opcion 1 del juego para iniciar el juego 
process MenuScreenBtnGame()
	private 
	end
	begin 	
		// iniciar 
		x=(MODE_VGA_X/6)*1;
		y=(MODE_VGA_Y/6)*5;
		graph= 261;
		
		// loop
		While ((not bg_Salir) and (Sceeen == INICIO_SCR))
			If (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
				if (mouse.left)
					graph= 262;
					play_wav(snd_click,0);
					fade(0,0,0,4);
					FADE_MUSIC_OFF (200);
					while((fading==1)and (not bg_Salir))
						frame;						
					end
					graph= 100;
					Sceeen = SELECT_SCR;
					Seleccion_Nivel_screen();
					fade(100,100,100,4);
					while((fading==1)and (not bg_Salir))
						frame;						
					end
				end		
				
			end		
			frame;
		end		
		// limpieza de memoria 		
	end;