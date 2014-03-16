process pre_pantalla_Inicio()
	private		
		int idBtnGame;
		int idBtnSalir;
		int idBtnOption;
		int idFondo;
		int tim;
	end
	begin
		x=MODE_VGA_X/2;
		y=MODE_VGA_Y/2;

		graph=250; //logos del software
		z=5;
	
		fade(100,100,100,4);
		while((fading==1)and (not bg_Salir))
			frame;
		end				
		
		tim=0;
		while ((tim<150 )and (not bg_Salir))
			tim++;
			frame;
			if ((collision (type raton)) and (mouse.left))
				tim=50000;
			end
		end
		
		fade(0,0,0,4);
		while((fading==1)and (not bg_Salir))
			frame;
		end
		frame;
		
		// nuestra los el logo de fuyn.net
		graph=251;
		fade(100,100,100,4);
		while((fading==1)and (not bg_Salir))
			frame;
		end				

		tim=0;
		while ((tim<150 )and (not bg_Salir))
			tim++;
			frame;
			if ((collision (type raton)) and (mouse.left))
				tim=50000;					
			end
		end
		fade(0,0,0,4);
		while((fading==1)and (not bg_Salir))
			frame;						
		end		
		frame ;		
		
		pantalla_Inicio();
		
	end;
