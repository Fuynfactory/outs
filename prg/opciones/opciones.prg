
process game_Option_Screen()
	private
		int idGSBtnAddSound;
		int idGSSoundValue;
		int idGSBtnMenSound;
		int idGSBtnAddMusic;
		int idGSMusicValue;	
		int idGSBtnMenMusic;
		int idGSBtnExit; 
		int idGSBtnReset;
		int idFondooption;
		int idWolrdOption;
		int idWolrdMusic;
		int idWolrdSound;
	end

	begin
		// carga 
		graph =252;
		Z=20;
		// iniciar
		x=(MODE_VGA_X/100)*55;
		y=(MODE_VGA_Y/200)*71;
			
		idGSBtnReset= GSBtnReset();
		idGSBtnExit =  GSBtnExit();
		idGSSoundValue = GSSoundValue();
		idGSMusicValue = GSMusicValue();	
		idGSBtnAddSound = GSBtnAddSound();
		idGSBtnMenSound = GSBtnMenSound();
		idGSBtnAddMusic = GSBtnAddMusic();
		idGSBtnMenMusic = GSBtnMenMusic();
		idFondooption = MenuOptionGround();

		idWolrdOption=GSBmsg(265, (MODE_VGA_X/24)*12, (MODE_VGA_Y/24)*17);
		idWolrdMusic=GSBmsg(267, (MODE_VGA_X/24)*12, (MODE_VGA_Y/24)*17);
		idWolrdSound=GSBmsg(266, (MODE_VGA_X/24)*12, (MODE_VGA_Y/24)*17);
		
		// Loop principal 
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			frame;	
		end
		
		// limpieza de memoria 
		//map_clear(0,BACKGROUND);		
	end;
	
	//TODO hacer  aparecer los testos 
process GSBmsg(graph, x, y)	
	begin
		z=10;
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			frame;
		end
	end
	
process GSBtnAddSound()
	private 
		bool has_click;
	end 
	
	begin 
		has_click= false;
		x=(MODE_VGA_X/24)*9;
		y=(MODE_VGA_Y/24)*17;
		graph = 235;// 236; 
		z=10;
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			if (Game_Sound.Sound==SOUNDON4)
				graph = 236;
			else 
				graph = 235;
				if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
					if (mouse.left)
						if (!has_click)
							has_click=true;
							////////////////////sonido
							if (Game_Sound.Sound==SOUNDON1) Game_Sound.Sound=SOUNDON2;
							elseif (Game_Sound.Sound==SOUNDON2) Game_Sound.Sound=SOUNDON3;
							else Game_Sound.Sound=SOUNDON4;
							end
							set_wav_volume(snd_click, Game_Sound.Sound); // set del sonido volumen
							play_wav(snd_click,0);
						end
					else 
						has_click=False;
					end
				end
			end
			frame;
		end	
	end
	
	
	process MenuOptionGround()
	private 
	end
	begin
		x=(MODE_VGA_X/2);
		y=(MODE_VGA_Y/2);
		z=100;
		graph = 302;
		while ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			frame;
		end
	end
	
	
// Barras de sonido	
process GSSoundValue()	
	private 
	end 
	
	begin 
		graph = 235;
		z=10;
		x=(MODE_VGA_X/24)*11;
		y=(MODE_VGA_Y/24)*17;
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			if (Game_Sound.Sound==SOUNDON1) 
				graph=231;
			elseif(Game_Sound.Sound==SOUNDON2) 
				graph=232;
			elseif(Game_Sound.Sound==SOUNDON3) 
				graph=233;
			else
				graph=234;
			end
			
			frame;	
		end	
	end

	
process GSBtnMenSound()
	private 
		bool has_click;
	end
	
	begin
		has_click= false;
		graph = 237;
		z=10;
		x=(MODE_VGA_X/24)*13;
		y=(MODE_VGA_Y/24)*17;
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			if (Game_Sound.Sound==SOUNDON1)
				graph = 238;
			else 
				graph = 237;
				if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
					if (mouse.left)
						if (!has_click)					 
							has_click=true;														
							////////////////////sonido
							if (Game_Sound.Sound==SOUNDON4) Game_Sound.Sound=SOUNDON3;
							elseif (Game_Sound.Sound==SOUNDON3) Game_Sound.Sound=SOUNDON2;
							else Game_Sound.Sound=SOUNDON1;
							end
							set_wav_volume(snd_click, Game_Sound.Sound); // set del sonido volumen
							play_wav(snd_click,0);							
						end
					else 
						has_click=False;
					end			
				end
			end
			
			frame;
		end	

	end

	
	
	
	
	
process GSBtnAddMusic()
	private 
		bool has_click;
	end
	
	begin
		has_click= false;
		x=(MODE_VGA_X/24)*9;
		y=(MODE_VGA_Y/24)*20;
		graph = 235;// 236; 
		z=10;
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			if (Game_Sound.Music==SOUNDON4)
				graph = 236;
			else 
				graph = 235;
				if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
					if (mouse.left)
						if (!has_click)
							has_click=true;
							////////////////////sonido
							if (Game_Sound.Music==SOUNDON1) Game_Sound.Music=SOUNDON2;
							elseif (Game_Sound.Music==SOUNDON2) Game_Sound.Music=SOUNDON3;
							else Game_Sound.Music=SOUNDON4;
							end
							
							play_wav(snd_click,0);
						end
					else 
						has_click=False;
					end
				end
			end
			frame;
		end
	end

process GSMusicValue()	
	private 
	end
	begin
		graph = 235;
		z=10;
		x=(MODE_VGA_X/24)*11;
		y=(MODE_VGA_Y/24)*20;
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			if (Game_Sound.Music==SOUNDON1) 
				graph=231;
			elseif(Game_Sound.Music==SOUNDON2) 
				graph=232;
			elseif(Game_Sound.Music==SOUNDON3) 
				graph=233;
			else
				graph=234;
			end
			
			frame;
		end
	end

process GSBtnMenMusic()
	private 
		bool has_click;
	end
	
	begin
		has_click= false;
		graph = 237;
		z=10;
		x=(MODE_VGA_X/24)*13;
		y=(MODE_VGA_Y/24)*20;
		While ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
			if (Game_Sound.Music==SOUNDON1)
				graph = 238;
			else 
				graph = 237;
				if (collision (type raton))
				//*****************************************************************
				//TODO animacion de pasar el raton por encima como cambio de color 
				//*****************************************************************				
					if (mouse.left)
						if (!has_click)					 
							has_click=true;
							////////////////////sonido
							if (Game_Sound.Music==SOUNDON4) Game_Sound.Music=SOUNDON3;
							elseif (Game_Sound.Music==SOUNDON3) Game_Sound.Music=SOUNDON2;
							else Game_Sound.Music=SOUNDON1;
							end
							
							play_wav(snd_click,0);
						end
					else 
						has_click=False;
					end			
				end
			end
			frame;	
		end	
	end

	
process GSBtnExit()
	private 
		bool has_click;
	end
	
	begin
		has_click= false;
		x=(MODE_VGA_X/24)*19;
		y=(MODE_VGA_Y/24)*16;
		size = 80;
		z=10;
		graph = 253;
		while ((not bg_Salir) and (Sceeen == GAME_OPTION_SOUND))
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
	
process GSBtnReset ()
	private 
		bool has_click;
	end
	
	begin
		has_click= false;
		x=(MODE_VGA_X/24)*19;
		y=(MODE_VGA_Y/24)*20;
		size = 80;
		z=10; 
		graph = 255;
		while ((not bg_Salir)and (Sceeen == GAME_OPTION_SOUND))
			if (mouse.left)
				if (!has_click)		
					play_wav(snd_click,0);				
					has_click=true;					
					///TODO gravar el archivo vacio o por defecto 
					reset_saveGame();
				end
			end
			
			frame;
		end		
	end
	