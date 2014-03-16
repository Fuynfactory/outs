// Save load game 
function savedata()
	private 
		int savedata[31];
	end 
	begin
		savedata[0] = GameK_Scr.equisP2T4;
		savedata[1] = GameK_Scr.equisP2T5;
		savedata[2] = GameK_Scr.equisP2T6;
		savedata[3] = GameK_Scr.equisP3T4;
		savedata[4] = GameK_Scr.equisP3T5;
		savedata[5] = GameK_Scr.equisP3T6;
		savedata[6] = GameK_Scr.equisP4T4;
		savedata[7] = GameK_Scr.equisP4T5;
		savedata[8] = GameK_Scr.equisP4T6;
		savedata[9] = GameK_Scr.equisP5T4;
		savedata[10] = GameK_Scr.equisP5T5;
		savedata[11] = GameK_Scr.equisP5T6;
		savedata[12] = GameK_Scr.cruzP2T4;
		savedata[13] = GameK_Scr.cruzP2T5;
		savedata[14] = GameK_Scr.cruzP2T6;
		savedata[15] = GameK_Scr.cruzP3T4;
		savedata[16] = GameK_Scr.cruzP3T5;
		savedata[17] = GameK_Scr.cruzP3T6;
		savedata[18] = GameK_Scr.cruzP4T4;
		savedata[19] = GameK_Scr.cruzP4T5;
		savedata[20] = GameK_Scr.cruzP4T6;
		savedata[21] = GameK_Scr.cruzP5T4;
		savedata[22] = GameK_Scr.cruzP5T5;
		savedata[23] = GameK_Scr.cruzP5T6;
		savedata[24] = GameK_Scr.HelpIniCr;
		savedata[25] = GameK_Scr.HelpIniEx;
		savedata[26] = GameK_Scr.Help3Pos;
		savedata[27] = GameK_Scr.Help4Pos;
		savedata[28] = GameK_Scr.Help5Pos;
		savedata[29] = Game_Sound.Sound;
		savedata[30] = Game_Sound.Music;
		save("tab.dat",savedata);
	end 

function loaddata()
	private 
		int savedata[31];
	end
	begin 
		load("tab.dat",savedata);
		GameK_Scr.equisP2T4 = savedata[0];
		GameK_Scr.equisP2T5 = savedata[1];
		GameK_Scr.equisP2T6 = savedata[2];
		GameK_Scr.equisP3T4 = savedata[3];
		GameK_Scr.equisP3T5 = savedata[4];
		GameK_Scr.equisP3T6 = savedata[5];
		GameK_Scr.equisP4T4 = savedata[6];
		GameK_Scr.equisP4T5 = savedata[7];
		GameK_Scr.equisP4T6 = savedata[8];
		GameK_Scr.equisP5T4 = savedata[9];
		GameK_Scr.equisP5T5 = savedata[10];
		GameK_Scr.equisP5T6 = savedata[11];
		GameK_Scr.cruzP2T4 = savedata[12];
		GameK_Scr.cruzP2T5 = savedata[13];
		GameK_Scr.cruzP2T6 = savedata[14];
		GameK_Scr.cruzP3T4 = savedata[15];
		GameK_Scr.cruzP3T5 = savedata[16];
		GameK_Scr.cruzP3T6 = savedata[17];
		GameK_Scr.cruzP4T4 = savedata[18];
		GameK_Scr.cruzP4T5 = savedata[19];
		GameK_Scr.cruzP4T6 = savedata[20];
		GameK_Scr.cruzP5T4 = savedata[21];
		GameK_Scr.cruzP5T5 = savedata[22];
		GameK_Scr.cruzP5T6 = savedata[23];
		GameK_Scr.HelpIniCr = savedata[24];
		GameK_Scr.HelpIniEx = savedata[25];
		GameK_Scr.Help3Pos = savedata[26];
		GameK_Scr.Help4Pos = savedata[27];
		GameK_Scr.Help5Pos = savedata[28];
		
		Game_Sound.Sound = savedata[29];
		Game_Sound.Music = savedata[30];
		
		
		set_wav_volume(snd_click, Game_Sound.Sound); // set del sonido volumen
		
	end;
	
	
	
	
function level_clear_Scr()
	private 
	end
	begin 
		if (Game_now.modo==MCRUZ)
			if (Game_now.prof==2)
					
				if (Game_now.tabl==4)// CP2T4
					GameK_Scr.cruzP2T4=COMPLETADO; 
					if (not (GameK_Scr.cruzP3T4==COMPLETADO)) 
						GameK_Scr.cruzP3T4= ACTIVADO; 
					end
					if (not (GameK_Scr.cruzP2T5==COMPLETADO)) 
						GameK_Scr.cruzP2T5= ACTIVADO; 
					end
					
				elseif (Game_now.tabl==5) // CP2T6
					GameK_Scr.cruzP2T5=COMPLETADO;
					if (not (GameK_Scr.cruzP3T5==COMPLETADO)) 
						GameK_Scr.cruzP3T5= ACTIVADO;
					end
					if (not (GameK_Scr.cruzP2T6==COMPLETADO)) 
						GameK_Scr.cruzP2T6=ACTIVADO;
					end

				else
					GameK_Scr.cruzP2T6=COMPLETADO;//CP2T6
					if (not (GameK_Scr.cruzP3T6==COMPLETADO))
						GameK_Scr.cruzP3T6= ACTIVADO;
					end
					if (not (GameK_Scr.equisP2T4==COMPLETADO))
						GameK_Scr.equisP2T4=ACTIVADO;
					end

				end
				
			elseif (Game_now.prof==3)
				if (Game_now.tabl==4)//CP3T4
					GameK_Scr.cruzP3T4=COMPLETADO;
					if (not (GameK_Scr.cruzP3T5==COMPLETADO)) 
						GameK_Scr.cruzP3T5= ACTIVADO; 
					end
					if (not (GameK_Scr.cruzP4T4==COMPLETADO)) 
						GameK_Scr.cruzP4T4= ACTIVADO; 
					end	
				elseif (Game_now.tabl==5)//CP3T5
					GameK_Scr.cruzP3T5=COMPLETADO;
					if (not (GameK_Scr.cruzP3T6==COMPLETADO)) 
						GameK_Scr.cruzP3T6= ACTIVADO; 
					end
					if (not (GameK_Scr.cruzP4T5==COMPLETADO)) 
						GameK_Scr.cruzP4T5= ACTIVADO; 
					end	

				else //CP3T6
					GameK_Scr.cruzP3T6=COMPLETADO;
					if (not (GameK_Scr.cruzP4T6==COMPLETADO))
						GameK_Scr.cruzP4T6= ACTIVADO;
					end
					if (not (GameK_Scr.equisP3T4==COMPLETADO))
						GameK_Scr.equisP3T4=ACTIVADO;
					end
				end

				
			elseif (Game_now.prof==4)				
				if (Game_now.tabl==4)//CP4T4
					GameK_Scr.cruzP4T4=COMPLETADO;
					if (not (GameK_Scr.cruzP4T5==COMPLETADO)) 
						GameK_Scr.cruzP4T5= ACTIVADO; 
					end
					if (not (GameK_Scr.cruzP5T4==COMPLETADO)) 
						GameK_Scr.cruzP5T4= ACTIVADO; 
					end	
					
				elseif (Game_now.tabl==5)//CP4T5
					GameK_Scr.cruzP4T5=COMPLETADO;
					if (not (GameK_Scr.cruzP4T6==COMPLETADO)) 
						GameK_Scr.cruzP4T6= ACTIVADO; 
					end
					if (not (GameK_Scr.cruzP5T5==COMPLETADO)) 
						GameK_Scr.cruzP5T5= ACTIVADO; 
					end	

				else //CP4T6
					GameK_Scr.cruzP4T6=COMPLETADO;
					if (not (GameK_Scr.cruzP5T6==COMPLETADO))
						GameK_Scr.cruzP5T6= ACTIVADO;
					end
					if (not (GameK_Scr.equisP4T4==COMPLETADO)) 
						GameK_Scr.equisP4T4=ACTIVADO;
					end

				end
			else 
				if (Game_now.tabl==4) //CP5T4
					GameK_Scr.cruzP5T4=COMPLETADO;
					if (not (GameK_Scr.cruzP5T5==COMPLETADO)) 
						GameK_Scr.cruzP5T5= ACTIVADO; 
					end
					
				elseif (Game_now.tabl==5) //CP5T5
					GameK_Scr.cruzP5T5=COMPLETADO;
					if (not (GameK_Scr.cruzP5T6==COMPLETADO)) 
						GameK_Scr.cruzP5T6= ACTIVADO; 
					end

				else //CP5T6
					GameK_Scr.cruzP5T6=COMPLETADO;
					if (not (GameK_Scr.equisP5T4==COMPLETADO))
						GameK_Scr.equisP5T4=ACTIVADO;
					end
				end
			
			end
		else
			if (Game_now.prof==2)
				if (Game_now.tabl==4) //EP2T4
					GameK_Scr.equisP2T4=COMPLETADO;
					if (not (GameK_Scr.equisP2T5==COMPLETADO))
						GameK_Scr.equisP2T5=ACTIVADO;
					end
					if (not (GameK_Scr.equisP3T4==COMPLETADO))
						GameK_Scr.equisP3T4=ACTIVADO;
					end

				elseif (Game_now.tabl==5) //EP2T5
					GameK_Scr.equisP2T5=COMPLETADO;
					if (not (GameK_Scr.equisP2T6==COMPLETADO))
						GameK_Scr.equisP2T6=ACTIVADO;
					end
					if (not (GameK_Scr.equisP3T5==COMPLETADO))
						GameK_Scr.equisP3T5=ACTIVADO;
					end

				else //EP2T6
					GameK_Scr.equisP2T6=COMPLETADO;
					if (not (GameK_Scr.equisP3T6==COMPLETADO))
						GameK_Scr.equisP3T6=ACTIVADO;
					end

				end
				
				
				
			elseif (Game_now.prof==3)			
				if (Game_now.tabl==4) //EP3T4
					GameK_Scr.equisP3T4=COMPLETADO;
					if (not (GameK_Scr.equisP3T5==COMPLETADO))
						GameK_Scr.equisP3T5=ACTIVADO;
					end
					if (not (GameK_Scr.equisP4T4==COMPLETADO))
						GameK_Scr.equisP4T4=ACTIVADO;
					end

				elseif (Game_now.tabl==5) //EP3T5
					GameK_Scr.equisP3T5=COMPLETADO;	
					if (not (GameK_Scr.equisP3T6==COMPLETADO))
						GameK_Scr.equisP3T6=ACTIVADO;
					end
					if (not (GameK_Scr.equisP4T5==COMPLETADO))
						GameK_Scr.equisP4T5=ACTIVADO;
					end
					
				else //EP3T6
					GameK_Scr.equisP3T6=COMPLETADO;
					if (not (GameK_Scr.equisP4T6==COMPLETADO))
						GameK_Scr.equisP4T6=ACTIVADO;
					end

				end
			elseif (Game_now.prof==4)				
				if (Game_now.tabl==4) //EP4T4
					GameK_Scr.equisP4T4=COMPLETADO;
					if (not (GameK_Scr.equisP4T5==COMPLETADO))
						GameK_Scr.equisP4T5=ACTIVADO;
					end
					if (not (GameK_Scr.equisP5T4==COMPLETADO))
						GameK_Scr.equisP5T4=ACTIVADO;
					end

				elseif (Game_now.tabl==5) //EP4T5
					GameK_Scr.equisP4T5=COMPLETADO;
					if (not (GameK_Scr.equisP4T6==COMPLETADO))
						GameK_Scr.equisP4T6=ACTIVADO;
					end
					if (not (GameK_Scr.equisP5T5==COMPLETADO))
						GameK_Scr.equisP5T5=ACTIVADO;
					end

				else //EP4T6
					GameK_Scr.equisP4T6=COMPLETADO;
					if (not (GameK_Scr.equisP5T6==COMPLETADO))
						GameK_Scr.equisP5T6=ACTIVADO;
					end

				end
			else 
				if (Game_now.tabl==4) //EP5T4
					GameK_Scr.equisP5T4=COMPLETADO;
					if (not (GameK_Scr.equisP5T5==COMPLETADO))
						GameK_Scr.equisP5T5=ACTIVADO;
					end

				elseif (Game_now.tabl==5) //EP5T5
					GameK_Scr.equisP5T5=COMPLETADO;
					if (not (GameK_Scr.equisP5T6==COMPLETADO))
						GameK_Scr.equisP5T6=ACTIVADO;
					end

				else //EP5T6
					GameK_Scr.equisP5T6=COMPLETADO;
				end
			
			end	
		end
	end

	
function reset_saveGame()
	private 
	end
	begin 
		GameK_Scr.cruzP2T4 = ACTIVADO;
		GameK_Scr.cruzP2T5 = BLOQUEADO;
		GameK_Scr.cruzP2T6 = BLOQUEADO;
		GameK_Scr.cruzP3T4 = BLOQUEADO;
		GameK_Scr.cruzP3T5 = BLOQUEADO;
		GameK_Scr.cruzP3T6 = BLOQUEADO;
		GameK_Scr.cruzP4T4 = BLOQUEADO;
		GameK_Scr.cruzP4T5 = BLOQUEADO;
		GameK_Scr.cruzP4T6 = BLOQUEADO;
		GameK_Scr.cruzP5T4 = BLOQUEADO;
		GameK_Scr.cruzP5T5 = BLOQUEADO;
		GameK_Scr.cruzP5T6 = BLOQUEADO;
		GameK_Scr.equisP2T4 = BLOQUEADO;
		GameK_Scr.equisP2T5 = BLOQUEADO;
		GameK_Scr.equisP2T6 = BLOQUEADO;
		GameK_Scr.equisP3T4 = BLOQUEADO;
		GameK_Scr.equisP3T5 = BLOQUEADO;
		GameK_Scr.equisP3T6 = BLOQUEADO;
		GameK_Scr.equisP4T4 = BLOQUEADO;
		GameK_Scr.equisP4T5 = BLOQUEADO;
		GameK_Scr.equisP4T6 = BLOQUEADO;
		GameK_Scr.equisP5T4 = BLOQUEADO;
		GameK_Scr.equisP5T5 = BLOQUEADO;
		GameK_Scr.equisP5T6 = BLOQUEADO;
		GameK_Scr.HelpIniCr = BLOQUEADO;
		GameK_Scr.HelpIniEx = BLOQUEADO;
		GameK_Scr.Help3Pos = BLOQUEADO;
		GameK_Scr.Help4Pos = BLOQUEADO;
		GameK_Scr.Help5Pos = BLOQUEADO;
		Game_Sound.Sound = SOUNDON3;
		Game_Sound.Music = SOUNDON3;
		set_wav_volume(snd_click, Game_Sound.Sound); // set del sonido volumen
		

	end
	