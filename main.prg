/*
* Copyright – 2013, Juan Antonio
* 
* This file is part of Outs!
* 
* Outs! is free software;
* you can redistribute it and/or modify it under
* the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
* 
* Outs! is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
*/


// imports
Import "mod_video";
Import "mod_screen";
Import "mod_map";
Import "mod_key";
Import "mod_text";
import "mod_file";
Import "mod_string";
Import "mod_grproc";
Import "mod_proc";
Import "mod_rand";
Import "mod_sound";
// includes 



global	
	include "prg\constantes.prg"; // inclusion de las constantes del juego
	include "prg\global.prg"; // variables globales 
end;

include "prg\game.prg"; //Game
include "prg\start_screen\menu_screen.prg"; // menu de inicio
include "prg\start_screen\pre_menu_Screen.prg"; // menu de inicio
include "prg\raton\raton.prg"// raton para version de PC
include "prg\saveload\saveload.prg" // guardar y cargar datos 
include "prg\seleccion_nivel\screen_select_level.prg";  /// seleccion de nivel
include "prg\roms.prg"; // los puzzles del juego 
include "prg\opciones\opciones.prg"; // opciones del sonido del juego 

local
	
	
end;

process Main ()
Begin

	reset_saveGame();
	// carga los graficos 
	fpg_icons=load_fpg(IMG+"iconos.fpg"); // todos los graficos del juego 
	snd_click=load_wav(WAV+"click.wav"); // sonido click	
	set_wav_volume(snd_click, Game_Sound.Sound); // set del sonido volumen
	
	
	// valores iniciales 
	modo_plataforma=MOUSE_MODE;

	//savedata();
	//loaddata();
	
	// id del raton 
	if (modo_plataforma==MOUSE_MODE) 
		idraton=raton(); 
	else 
		idraton=0;
	end
	
	ig_x_Max=MODE_VGA_X;
	ig_y_Max=MODE_VGA_Y;
	
	set_mode(ig_x_Max,ig_y_Max,MODE_VGA_COLOR, MODE_WAITVSYNC | MODE_HARDWARE);
	Set_fps(60,1);
	
	Sceeen = INICIO_SCR;	
	pre_pantalla_Inicio();
	
	
	While (not bg_Salir)
		if (key(_ESC))
			bg_Salir=TRUE;
		end;
		frame;
	end
	unload_fpg(fpg_icons);
end

