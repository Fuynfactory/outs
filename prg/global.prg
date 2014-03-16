// limites de la pantalla 
	int ig_x_Max;
	int ig_y_Max;
	int modo_plataforma;
	
	//raton
	int idRaton;
	bool bool_raton_has_click=true;
	
	//pantallas activas pasadas 
	//(modo)P(profundidad)T(Terreno)
	STRUCT GameK_Scr	
		int cruzP2T4;
		int cruzP2T5;
		int cruzP2T6;
		int cruzP3T4;
		int cruzP3T5;
		int cruzP3T6;
		int cruzP4T4;
		int cruzP4T5;
		int cruzP4T6;
		int cruzP5T4;
		int cruzP5T5;
		int cruzP5T6;

		int equisP2T4;
		int equisP2T5;
		int equisP2T6;
		int equisP3T4;
		int equisP3T5;
		int equisP3T6;
		int equisP4T4;
		int equisP4T5;
		int equisP4T6;
		int equisP5T4;
		int equisP5T5;
		int equisP5T6;
		
		int HelpIniCr;
		int HelpIniEx;
		int Help3Pos;
		int Help4Pos;
		int Help5Pos;
	end
	
	int gi_tutCruzP2;
	int gi_tutEquisP2;
	int gi_tut5x5;
	int gi_tut6x6;
	int gi_tutP3;
	int gi_tutP4;
	int gi_tutP5;
	
	bool bg_Salir= false; // salir de 
	bool kll_menuScreen= true; 
	int Sceeen; //
	
	// graficos generales
	int fpg_icons;
	
	// sonido
	int snd_click; // sonido clk
	int snd_sound; // canciones de cada pantalla
	
	//fondos
	int img_fondo;
	
	// panel 
	int g_ipanel[36]=0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0;
	
	int p_ipanel[36]=0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0;
	bool help_cheat=false;// activada la ayuda
	
	// load game roms.prg // da problema pasar string por fuction :/
	String s_loadGameRom;
	
	// activacion del tablero 
	bool Tablero_active= false;
	
	// estructura la pantalla actual 
	STRUCT Game_now
		int modo;
		int prof;
		int tabl;
		int level;
	end
	
	// estructura del sonido 
	STRUCT Game_Sound
		int Sound;
		int Music;
	end
	