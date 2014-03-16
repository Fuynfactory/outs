// raton
process raton()
	private 		
				
	end
	begin
		// carga 
		
		
		// iniciar
		file = fpg_icons;
		x=MODE_VGA_X/2;
		y=MODE_VGA_Y/2;
		graph=1;
		size=50;
		// Loop principal 
		While (not bg_Salir)
			graph++;
			if (graph>4)
				graph=1;
			end;
			if (!mouse.left)
				bool_raton_has_click=true;
			end
			x=mouse.x;
			y=mouse.y;
			frame;	
		end;
		
		// limpieza de memoria 
		
	end;


