function romGame()
private 
	int modo;
	int prof;
	int tabl;
	int nivel;


	String s_out;
	
	String S_C24N1;
	String S_C24N2;
	String S_C24N3;
	String S_C24N4;
	String S_C24N5;
	String S_C24N6;
	String S_C24N7;
	String S_C24N8;
	String S_C24N9;
	String S_C24N10;
	
	String S_C25N1;
	String S_C25N2;
	String S_C25N3;
	String S_C25N4;
	String S_C25N5;
	String S_C25N6;
	String S_C25N7;
	String S_C25N8;
	String S_C25N9;
	String S_C25N10;
	
	String S_C26N1;
	String S_C26N2;
	String S_C26N3;
	String S_C26N4;
	String S_C26N5;
	String S_C26N6;
	String S_C26N7;
	String S_C26N8;
	String S_C26N9;
	String S_C26N10;
	
	String S_C34N1;
	String S_C34N2;
	String S_C34N3;
	String S_C34N4;
	String S_C34N5;
	String S_C34N6;
	String S_C34N7;
	String S_C34N8;
	String S_C34N9;
	String S_C34N10;
	
	String S_C35N1;
	String S_C35N2;
	String S_C35N3;
	String S_C35N4;
	String S_C35N5;
	String S_C35N6;
	String S_C35N7;
	String S_C35N8;
	String S_C35N9;
	String S_C35N10;
	
	String S_C36N1;
	String S_C36N2;
	String S_C36N3;
	String S_C36N4;
	String S_C36N5;
	String S_C36N6;
	String S_C36N7;
	String S_C36N8;
	String S_C36N9;
	String S_C36N10;
	
	String S_C44N1;
	String S_C44N2;
	String S_C44N3;
	String S_C44N4;
	String S_C44N5;
	String S_C44N6;
	String S_C44N7;
	String S_C44N8;
	String S_C44N9;
	String S_C44N10;
	
	String S_C45N1;
	String S_C45N2;
	String S_C45N3;
	String S_C45N4;
	String S_C45N5;
	String S_C45N6;
	String S_C45N7;
	String S_C45N8;
	String S_C45N9;
	String S_C45N10;
	
	String S_C46N1;
	String S_C46N2;
	String S_C46N3;
	String S_C46N4;
	String S_C46N5;
	String S_C46N6;
	String S_C46N7;
	String S_C46N8;
	String S_C46N9;
	String S_C46N10;
	
	String S_C54N1;
	String S_C54N2;
	String S_C54N3;
	String S_C54N4;
	String S_C54N5;
	String S_C54N6;
	String S_C54N7;
	String S_C54N8;
	String S_C54N9;
	String S_C54N10;
	
	String S_C55N1;
	String S_C55N2;
	String S_C55N3;
	String S_C55N4;
	String S_C55N5;
	String S_C55N6;
	String S_C55N7;
	String S_C55N8;
	String S_C55N9;
	String S_C55N10;
	
	String S_C56N1;
	String S_C56N2;
	String S_C56N3;
	String S_C56N4;
	String S_C56N5;
	String S_C56N6;
	String S_C56N7;
	String S_C56N8;
	String S_C56N9;
	String S_C56N10;

	
	
	String S_E24N1;
	String S_E24N2;
	String S_E24N3;
	String S_E24N4;
	String S_E24N5;
	String S_E24N6;
	String S_E24N7;
	String S_E24N8;
	String S_E24N9;
	String S_E24N10;
	
	String S_E25N1;
	String S_E25N2;
	String S_E25N3;
	String S_E25N4;
	String S_E25N5;
	String S_E25N6;
	String S_E25N7;
	String S_E25N8;
	String S_E25N9;
	String S_E25N10;
	
	String S_E26N1;
	String S_E26N2;
	String S_E26N3;
	String S_E26N4;
	String S_E26N5;
	String S_E26N6;
	String S_E26N7;
	String S_E26N8;
	String S_E26N9;
	String S_E26N10;
	
	String S_E34N1;
	String S_E34N2;
	String S_E34N3;
	String S_E34N4;
	String S_E34N5;
	String S_E34N6;
	String S_E34N7;
	String S_E34N8;
	String S_E34N9;
	String S_E34N10;
	
	String S_E35N1;
	String S_E35N2;
	String S_E35N3;
	String S_E35N4;
	String S_E35N5;
	String S_E35N6;
	String S_E35N7;
	String S_E35N8;
	String S_E35N9;
	String S_E35N10;
	
	String S_E36N1;
	String S_E36N2;
	String S_E36N3;
	String S_E36N4;
	String S_E36N5;
	String S_E36N6;
	String S_E36N7;
	String S_E36N8;
	String S_E36N9;
	String S_E36N10;

	String S_E44N1;
	String S_E44N2;
	String S_E44N3;
	String S_E44N4;
	String S_E44N5;
	String S_E44N6;
	String S_E44N7;
	String S_E44N8;
	String S_E44N9;
	String S_E44N10;
	
	String S_E45N1;
	String S_E45N2;
	String S_E45N3;
	String S_E45N4;
	String S_E45N5;
	String S_E45N6;
	String S_E45N7;
	String S_E45N8;
	String S_E45N9;
	String S_E45N10;
	
	String S_E46N1;
	String S_E46N2;
	String S_E46N3;
	String S_E46N4;
	String S_E46N5;
	String S_E46N6;
	String S_E46N7;
	String S_E46N8;
	String S_E46N9;
	String S_E46N10;
	
	String S_E54N1;
	String S_E54N2;
	String S_E54N3;
	String S_E54N4;
	String S_E54N5;
	String S_E54N6;
	String S_E54N7;
	String S_E54N8;
	String S_E54N9;
	String S_E54N10;
	
	String S_E55N1;
	String S_E55N2;
	String S_E55N3;
	String S_E55N4;
	String S_E55N5;
	String S_E55N6;
	String S_E55N7;
	String S_E55N8;
	String S_E55N9;
	String S_E55N10;
	
	String S_E56N1;
	String S_E56N2;
	String S_E56N3;
	String S_E56N4;
	String S_E56N5;
	String S_E56N6;
	String S_E56N7;
	String S_E56N8;
	String S_E56N9;
	String S_E56N10;

end
begin
	modo=Game_now.modo;
	prof=Game_now.prof;
	tabl=Game_now.tabl;
	nivel=Game_now.level;

	//C2
	S_C24N1="000000"+"010010"+"000000"+"000000"+"010010"+"000000";//4
	S_C24N2="000000"+"000000"+"001100"+"000000"+"010010"+"000000";//4
	S_C24N3="000000"+"000010"+"000000"+"010010"+"010010"+"000000";//5
	S_C24N4="000000"+"000010"+"000000"+"001100"+"001100"+"000000";//5
	S_C24N5="000000"+"010010"+"000000"+"010010"+"010010"+"000000";//6
	S_C24N6="000000"+"010010"+"000100"+"001000"+"010010"+"000000";//6
	S_C24N7="000000"+"000010"+"001100"+"001100"+"010010"+"000000";//7
	S_C24N8="000000"+"000100"+"001100"+"001110"+"001100"+"000000";//7
	S_C24N9="000000"+"000000"+"000000"+"011110"+"011110"+"000000";//8
	S_C24N10="000000"+"010010"+"010010"+"010010"+"010010"+"000000";//8
	
	S_C25N1="000000"+"000000"+"000000"+"000000"+"010101"+"010101";//6
	S_C25N2="000000"+"010101"+"000000"+"000000"+"000000"+"010101";//6
	S_C25N3="000000"+"000000"+"001110"+"000100"+"001110"+"000000";//7
	S_C25N4="000000"+"000000"+"010001"+"010101"+"010001"+"000000";//7
	S_C25N5="000000"+"000000"+"010001"+"011011"+"010001"+"000000";//8
	S_C25N6="000000"+"000000"+"001110"+"001010"+"001110"+"000000";//8
	S_C25N7="000000"+"000000"+"001110"+"001110"+"001110"+"000000";//9
	S_C25N8="000000"+"001110"+"000100"+"000100"+"000100"+"001110";//9
	S_C25N9="000000"+"001010"+"001010"+"001010"+"001010"+"001010";//10
	S_C25N10="000000"+"001010"+"010001"+"001001"+"010010"+"010001";//10
		
	S_C26N1="100001"+"010010"+"000000"+"000000"+"010010"+"100001";//8
	S_C26N2="110011"+"000000"+"000000"+"000000"+"000000"+"110011";//8
	S_C26N3="100001"+"010010"+"001100"+"000100"+"000010"+"000001";//9
	S_C26N4="000000"+"011110"+"000010"+"011110"+"000000"+"000000";//9
	S_C26N5="000000"+"100001"+"100001"+"101101"+"100001"+"000000";//10
	S_C26N6="001100"+"001100"+"001100"+"001100"+"001100"+"000000";//10
	S_C26N7="000011"+"000101"+"001010"+"010100"+"101000"+"010000";//11
	S_C26N8="010010"+"100011"+"000000"+"000000"+"110011"+"010010";//11
	S_C26N9="100001"+"010010"+"001100"+"001100"+"010010"+"100001";//12
	S_C26N10="001100"+"010010"+"100001"+"100001"+"010010"+"001100";//12
	
	
	//C3
	S_C34N1="000000"+"010010"+"001100"+"000000"+"010010"+"000000";//6
	S_C34N2="000000"+"000000"+"001100"+"001100"+"001100"+"000000";//6
	S_C34N3="000000"+"010010"+"001100"+"001100"+"000010"+"000000";//7
	S_C34N4="000000"+"021120"+"000000"+"000000"+"000100"+"000000";//7
	S_C34N5="000000"+"000000"+"011110"+"011110"+"000000"+"000000";//8
	S_C34N6="000000"+"010010"+"001100"+"001100"+"010010"+"000000";//8
	S_C34N7="000000"+"010010"+"010010"+"010010"+"011010"+"000000";//9
	S_C34N8="000000"+"001100"+"001110"+"010110"+"001000"+"000000";//9
	S_C34N9="000000"+"010010"+"010010"+"011110"+"010010"+"000000";//10
	S_C34N10="000000"+"001100"+"002200"+"000000"+"002200"+"000000";//10
	
	S_C35N1="000000"+"001010"+"010001"+"000000"+"010001"+"001010";//8
	S_C35N2="000000"+"000010"+"000101"+"001010"+"010100"+"001000";//8
	S_C35N3="000000"+"000100"+"001010"+"001010"+"001010"+"001010";//9
	S_C35N4="000000"+"010000"+"002000"+"000200"+"000020"+"000002";//9
	S_C35N5="000000"+"010010"+"000101"+"001010"+"010100"+"001001";//10
	S_C35N6="000000"+"000100"+"000100"+"011211"+"000100"+"000100";//10
	S_C35N7="000000"+"000000"+"000000"+"000000"+"000000"+"000000";//11
	S_C35N8="000000"+"000101"+"001010"+"010101"+"001010"+"010100";//11
	S_C35N9="000000"+"011111"+"000000"+"000200"+"000000"+"011111";//12
	S_C35N10="000000"+"010001"+"001010"+"001210"+"001010"+"010001";//12
	
	S_C36N1="000000"+"000000"+"000000"+"000000"+"011110"+"111111";//10
	S_C36N2="000000"+"001100"+"011110"+"011110"+"000000"+"000000";//10
	S_C36N3="200000"+"020000"+"002000"+"000200"+"000020"+"000001";//11
	S_C36N4="000000"+"000202"+"100020"+"000202"+"000000"+"000000";//11
	S_C36N5="200000"+"020000"+"002000"+"000200"+"000020"+"000002";//12
	S_C36N6="000000"+"022200"+"000000"+"002220"+"000000"+"000000";//12
	S_C36N7="000000"+"010010"+"002200"+"002200"+"010010"+"000200";//13
	S_C36N8="000100"+"001010"+"010101"+"101010"+"010100"+"101000";//13
	S_C36N9="010101"+"101010"+"010100"+"101000"+"010001"+"100010";//14
	S_C36N10="010002"+"101000"+"010100"+"001010"+"000101"+"200010";//14
		

		
	//C4
	S_C44N1="000000"+"000000"+"002200"+"002200"+"000000"+"000000";//8
	S_C44N2="000000"+"010010"+"001100"+"001100"+"010010"+"000000";//8
	S_C44N3="000000"+"001100"+"001110"+"010110"+"001000"+"000000";//9
	S_C44N4="000000"+"002000"+"010200"+"001020"+"000100"+"000000";//9
	S_C44N5="000000"+"001100"+"010110"+"011010"+"001100"+"000000";//10
	S_C44N6="000000"+"002000"+"000200"+"020020"+"002000"+"000000";//10
	S_C44N7="000000"+"020020"+"000000"+"000110"+"020120"+"000000";//11
	S_C44N8="000000"+"010010"+"002200"+"002200"+"000010"+"000000";//11
	S_C44N9="000000"+"020020"+"002000"+"000200"+"020020"+"000000";//12
	S_C44N10="000000"+"001100"+"001100"+"020020"+"020020"+"000000";//12
	
	S_C45N1="000000"+"020000"+"002000"+"000200"+"000020"+"000002";//10
	S_C45N2="000000"+"000000"+"000000"+"000200"+"002020"+"020002";//10
	S_C45N3="000000"+"000100"+"011011"+"001010"+"001010"+"001010";//11
	S_C45N4="000000"+"002020"+"020002"+"000200"+"000100"+"000000";//11
	S_C45N5="000000"+"020002"+"002020"+"000000"+"000020"+"000002";//12
	S_C45N6="000000"+"000000"+"002200"+"002200"+"002200"+"000000";//12
	S_C45N7="000000"+"000002"+"000021"+"000201"+"000021"+"000002";//13
	S_C45N8="000000"+"020002"+"002010"+"000200"+"000020"+"000002";//13
	S_C45N9="000000"+"000000"+"000000"+"000000"+"020202"+"022022";//14
	S_C45N10="000000"+"000200"+"002020"+"002020"+"002020"+"000000";//14
			
	S_C46N1="000000"+"000000"+"111111"+"000000"+"111111"+"000000";//12
	S_C46N2="000000"+"000000"+"010101"+"101010"+"010101"+"101010";//12
	S_C46N3="000000"+"000000"+"002200"+"002200"+"020020"+"000100";//13
	S_C46N4="000000"+"000000"+"000100"+"002020"+"002020"+"002020";//13
	S_C46N5="000000"+"000000"+"000000"+"302203"+"101101"+"020020";//14
	S_C46N6="000000"+"000000"+"002020"+"000200"+"002020"+"002020";//14
	S_C46N7="001100"+"010010"+"100001"+"000001"+"000010"+"000100";//15
	S_C46N8="000000"+"000000"+"001110"+"011100"+"001110"+"000000";//15
	S_C46N9="020020"+"200002"+"000000"+"000000"+"200002"+"020020";//16
	S_C46N10="200002"+"020020"+"002200"+"002200"+"020020"+"200002";//16
	
	
	//C5
	S_C54N1="000000"+"000010"+"000300"+"003000"+"030000"+"000000";//10
	S_C54N2="000000"+"000000"+"000000"+"000000"+"033310"+"000000";//10
	S_C54N3="000000"+"030020"+"000200"+"002000"+"020000"+"000000";//11
	S_C54N4="000000"+"000030"+"000200"+"003000"+"030000"+"000000";//11
	S_C54N5="000000"+"003000"+"030300"+"003000"+"000000"+"000000";//12
	S_C54N6="000000"+"030030"+"000000"+"000000"+"030030"+"000000";//12
	S_C54N7="000000"+"043210"+"000000"+"000000"+"030000"+"000000";//13
	S_C54N8="000000"+"033000"+"003310"+"000000"+"000000"+"000000";//13
	S_C54N9="000000"+"000030"+"000130"+"000130"+"000030"+"000000";//14
	S_C54N10="000000"+"000000"+"000100"+"022000"+"032000"+"000000";//14
	
	S_C55N1="000000"+"000002"+"000020"+"000200"+"002000"+"020002";//12
	S_C55N2="000000"+"000000"+"000000"+"022200"+"002220"+"000000";//12
	S_C55N3="000000"+"000000"+"020002"+"020102"+"020002"+"000000";//13
	S_C55N4="000000"+"000100"+"002220"+"002220"+"000000"+"000000";//13
	S_C55N5="000000"+"002020"+"020202"+"002020"+"000000"+"000000";//14
	S_C55N6="000000"+"002220"+"000200"+"002220"+"000000"+"000000";//14
	S_C55N7="000000"+"002100"+"001200"+"010021"+"000012"+"010100";//15
	S_C55N8="000000"+"000100"+"002020"+"002020"+"002220"+"000000";//15
	S_C55N9="000000"+"002020"+"020002"+"000000"+"020002"+"002020";//16
	S_C55N10="000000"+"000000"+"002020"+"022222"+"000200"+"000000";//16
	
	
	S_C56N1="100000"+"030000"+"003000"+"000300"+"000030"+"000001";//14
	S_C56N2="000000"+"000000"+"331133"+"000000"+"000000"+"000000";//14
	S_C56N3="033000"+"330000"+"300000"+"000000"+"000000"+"000000";//15
	S_C56N4="022220"+"300003"+"000000"+"000000"+"000000"+"000001";//15
	S_C56N5="020020"+"200002"+"000000"+"000000"+"200002"+"020020";//16
	S_C56N6="200002"+"020020"+"000000"+"000000"+"020020"+"200002";//16
	S_C56N7="100002"+"000020"+"002200"+"002200"+"020000"+"200000";//17
	S_C56N8="000000"+"000000"+"001010"+"000300"+"003030"+"003030";//17
	S_C56N9="000000"+"230020"+"002200"+"230020"+"000000"+"000000";//18
	S_C56N10="002220"+"002220"+"002220"+"000000"+"000000"+"000000";//18
	
	
	/// Exis ///
	 //C2
	S_E24N1="000000"+"010010"+"000000"+"000000"+"010010"+"000000";//4
	S_E24N2="000000"+"000000"+"001100"+"001100"+"000000"+"000000";//4
	S_E24N3="000000"+"001110"+"010010"+"000000"+"000000"+"000000";//5
	S_E24N4="000000"+"010010"+"001000"+"000100"+"000010"+"000000";//5
	S_E24N5="000000"+"001000"+"011110"+"000000"+"001000"+"000000";//6
	S_E24N6="000000"+"010010"+"000010"+"010000"+"010010"+"000000";//6
	S_E24N7="000000"+"010100"+"001100"+"001100"+"001000"+"000000";//7
	S_E24N8="000000"+"000010"+"001100"+"010010"+"010010"+"000000";//7
	S_E24N9="000000"+"010010"+"010010"+"010010"+"010010"+"000000";//8
	S_E24N10="000000"+"010010"+"000110"+"011000"+"010010"+"000000";//8
	
	S_E25N1="000000"+"000000"+"000000"+"000000"+"000100"+"011111";//6
	S_E25N2="000000"+"000000"+"001010"+"001010"+"001010"+"000000";//6
	S_E25N3="000000"+"000000"+"000000"+"000100"+"001010"+"011011";//7
	S_E25N4="000000"+"000000"+"000000"+"001110"+"000100"+"001110";//7
	S_E25N5="000000"+"010101"+"000000"+"010001"+"000000"+"010101";//8
	S_E25N6="000000"+"000000"+"001110"+"001010"+"001110"+"000000";//8
	S_E25N7="000000"+"000000"+"001110"+"001110"+"001110"+"000000";//9
	S_E25N8="000000"+"011011"+"010001"+"000000"+"000001"+"000011";//9
	S_E25N9="000000"+"000000"+"011111"+"000000"+"011111"+"000000";//10
	S_E25N10="000000"+"010101"+"001010"+"000000"+"010101"+"001010";//10
		
	S_E26N1="100001"+"010010"+"000000"+"000000"+"010010"+"100001";//8
	S_E26N2="000000"+"010010"+"001100"+"001100"+"010010"+"000000";//8
	S_E26N3="000100"+"000010"+"000001"+"100001"+"010010"+"001100";//9
	S_E26N4="000001"+"000010"+"000100"+"001100"+"010010"+"100001";//9
	S_E26N5="000000"+"000000"+"011111"+"111110"+"000000"+"000000";//10
	S_E26N6="011000"+"110000"+"100000"+"000001"+"000011"+"000110";//10
	S_E26N7="010001"+"100010"+"000100"+"001000"+"010001"+"100011";//11
	S_E26N8="000001"+"000010"+"000100"+"001001"+"010011"+"100110";//11
	S_E26N9="001100"+"001100"+"001100"+"001100"+"001100"+"001100";//12
	S_E26N10="001100"+"010010"+"100001"+"100001"+"010010"+"001100";//12

	//C3
	S_E34N1="000000"+"000100"+"001010"+"010100"+"001000"+"000000";//6
	S_E34N2="000000"+"011000"+"010000"+"000010"+"000110"+"000000";//6
	S_E34N3="000000"+"000100"+"001010"+"001010"+"001010"+"000000";//7
	S_E34N4="000000"+"000110"+"001010"+"010100"+"001000"+"000000";//7
	S_E34N5="000000"+"000000"+"011110"+"011110"+"000000"+"000000";//8
	S_E34N6="000000"+"000000"+"002200"+"002200"+"000000"+"000000";//8
	S_E34N7="000000"+"020010"+"002000"+"000200"+"000020"+"000000";//9
	S_E34N8="000000"+"001010"+"010000"+"020010"+"002100"+"000000";//9
	S_E34N9="000000"+"002000"+"000200"+"020020"+"002000"+"000000";//10
	S_E34N10="000000"+"011110"+	"000100"+"001000"+"011110"+"000000";//10
	
	S_E35N1="000000"+"001010"+"001010"+"001010"+"001010"+"000000";//8
	S_E35N2="000000"+"000000"+"000200"+"002020"+"000200"+"000000";//8
	S_E35N3="000000"+"000000"+"001020"+"000100"+"002010"+"000000";//9
	S_E35N4="000000"+"000000"+"001110"+"001110"+"001110"+"000000";//9
	S_E35N5="000000"+"000100"+"001010"+"010201"+"001010"+"000100";//10
	S_E35N6="000000"+"000000"+"011111"+"000000"+"011111"+"000000";//10
	S_E35N7="000000"+"020001"+"002000"+"000200"+"000020"+"000002";//11
	S_E35N8="000000"+"020002"+"000000"+"000201"+"000000"+"020002";//11
	S_E35N9="000000"+"000000"+"002020"+"002020"+"002020"+"000000";//12
	S_E35N10="000000"+"000000"+"001110"+"001110"+"001110"+"001110";//12
	
	S_E36N1="100100"+"000020"+"000000"+"100000"+"020020"+"000100";//10
	S_E36N2="200002"+"000000"+"000000"+"000200"+"000000"+"200002";//10
	S_E36N3="100002"+"000000"+"000000"+"000000"+"022220"+"000000";//11
	S_E36N4="002100"+"000000"+"002200"+"000000"+"002200"+"000000";//11
	S_E36N5="001100"+"010010"+"100001"+"100001"+"010010"+"001100";//12
	S_E36N6="000000"+"000000"+"000000"+"222222"+"000000"+"000000";//12
	S_E36N7="000001"+"000002"+"000020"+"000200"+"002000"+"220000";//13
	S_E36N8="002000"+"200020"+"000000"+"020001"+"000200"+"000002";//13
	S_E36N9="010010"+"000000"+"020020"+"020020"+"020020"+"000000";//14
	S_E36N10="000000"+"002220"+"000200"+"002220"+"000000"+"000000";//14
		
	
	//C4
	S_E44N1="000000"+"001100"+"001100"+"001100"+"001100"+"000000";//8
	S_E44N2="000000"+"000000"+"002200"+"002200"+"000000"+"000000";//8
	S_E44N3="000000"+"002200"+"000000"+"000000"+"002300"+"000000";//9
	S_E44N4="000000"+"000000"+"023220"+"000000"+"000000"+"000000";//9
	S_E44N5="000000"+"002000"+"020020"+"000200"+"002000"+"000000";//10
	S_E44N6="000000"+"000000"+"002200"+"002200"+"000020"+"000000";//10
	S_E44N7="000000"+"000120"+"002020"+"000200"+"002000"+"000000";//11
	S_E44N8="000000"+"012200"+"000000"+"000000"+"012210"+"000000";//11
	S_E44N9="000000"+"000000"+"002200"+"022220"+"000000"+"000000";//12
	S_E44N10="000000"+"022220"+"020020"+"000000"+"000000"+"000000";//12
	
	S_E45N1="000000"+"000200"+"000200"+"000200"+"000200"+"000200";//10
	S_E45N2="000000"+"000000"+"000000"+"000002"+"000022"+"000220";//10
	S_E45N3="000000"+"000000"+"002020"+"000200"+"002020"+"000100";//11
	S_E45N4="000000"+"000000"+"000000"+"000100"+"022222"+"000000";//11
	S_E45N5="000000"+"000000"+"001210"+"002020"+"001210"+"000000";//12
	S_E45N6="000000"+"000000"+"002020"+"002020"+"002020"+"000000";//12
	S_E45N7="000000"+"000100"+"000200"+"000200"+"002020"+"002020";//13
	S_E45N8="000000"+"000200"+"002000"+"020102"+"000020"+"000200";//13
	S_E45N9="000000"+"000200"+"002220"+"000200"+"000200"+"000200";//14
	S_E45N10="000000"+"020002"+"000000"+"000200"+"000000"+"020202";//14
		
	S_E46N1="000000"+"002200"+"000000"+"002200"+"000000"+"002200";//12
	S_E46N2="100001"+"010010"+"001100"+"001100"+"010010"+"100001";//12
	S_E46N3="000000"+"020020"+"020020"+"000000"+"020030"+"000000";//13
	S_E46N4="000000"+"000000"+"000000"+"222223"+"000000"+"000000";//13
	S_E46N5="002002"+"020000"+"200000"+"000002"+"000020"+"000200";//14
	S_E46N6="220000"+"200000"+"000000"+"000000"+"000002"+"200022";//14
	S_E46N7="000000"+"000002"+"000020"+"000200"+"002002"+"020021";//15
	S_E46N8="020000"+"002000"+"000000"+"002000"+"200200"+"120020";//15
	S_E46N9="000000"+"000000"+"022220"+"000000"+"022220"+"000000";//16
	S_E46N10="000000"+"022000"+"000220"+"022000"+"000220"+"000000";//16
	
	//C5
	S_E54N1="000000"+"002020"+"020000"+"000020"+"000200"+"000000";//10
	S_E54N2="000000"+"000010"+"030000"+"003000"+"000300"+"000000";//10
	S_E54N3="000000"+"000000"+"000200"+"000300"+"003030"+"000000";//11
	S_E54N4="000000"+"000010"+"000000"+"002200"+"003300"+"000000";//11
	S_E54N5="000000"+"000000"+"033330"+"000000"+"000000"+"000000";//12
	S_E54N6="000000"+"000000"+"022200"+"002220"+"000000"+"000000";//12
	S_E54N7="000000"+"000010"+"000000"+"003300"+"030030"+"000000";//13
	S_E54N8="000000"+"020020"+"000200"+"002000"+"020120"+"000000";//13
	S_E54N9="000000"+"002000"+"000220"+"022000"+"000220"+"000000";//14
	S_E54N10="000000"+"000000"+"002220"+"002220"+"020000"+"000000";//14
	
	S_E55N1="000000"+"000000"+"000200"+"002220"+"000200"+"000200";//12
	S_E55N2="000000"+"000000"+"000000"+"000000"+"020002"+"022022";//12
	S_E55N3="000000"+"000000"+"000300"+"022222"+"000000"+"000000";//13
	S_E55N4="000000"+"000002"+"000030"+"000300"+"003000"+"020000";//13
	S_E55N5="000000"+"000202"+"002000"+"020002"+"000020"+"000200";//14
	S_E55N6="000000"+"000200"+"000300"+"000300"+"000300"+"000300";//14
	S_E55N7="000000"+"000000"+"000000"+"000003"+"000033"+"000330";//15
	S_E55N8="000000"+"030000"+"003000"+"000300"+"000030"+"000003";//15
	S_E55N9="000000"+"000000"+"002222"+"000000"+"022220"+"000000";//16
	S_E55N10="000000"+"000020"+"000202"+"002020"+"020200"+"002000";//16

	S_E56N1="100002"+"000020"+"000200"+"002000"+"020000"+"200001";//14
	S_E56N2="000000"+"001100"+"002200"+"012210"+"010010"+"000000";//14
	S_E56N3="332000"+"320000"+"200000"+"000000"+"000000"+"000000";//15
	S_E56N4="000000"+"000000"+"222222"+"003300"+"000000"+"000000";//15
	S_E56N5="000000"+"000000"+"004400"+"004400"+"000000"+"000000";//16
	S_E56N6="000000"+"002000"+"002220"+"022200"+"000200"+"000000";//16
	S_E56N7="020002"+"300000"+"000000"+"000000"+"200003"+"030020";//17
	S_E56N8="000003"+"000000"+"321123"+"000000"+"000000"+"200000";//17
	S_E56N9="000000"+"000000"+"000222"+"222000"+"000222"+"000000";//18
	S_E56N10="002000"+"020000"+"200000"+"200002"+"020020"+"002200";//18
	
	if ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==1))//4mov
		s_out=S_C24N1;		
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==2))//4mov
		s_out=S_C24N2;		
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==3))//5 mov
		s_out=S_C24N3;		
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==4))//5 mov
		s_out=S_C24N4;		
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==5))//6 mov
		s_out=S_C24N5;	
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==6))//6 mov
		s_out=S_C24N6;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==7))//7 mov
		s_out=S_C24N7;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==8))//7 mov
		s_out=S_C24N8;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==9))//8 mov
		s_out=S_C24N9;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==4)&& (nivel==10))//8 mov
		s_out=S_C24N10;
	
	///// 5x5 *2 cruz
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==1))//6 mov
		s_out=S_C25N1;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==2))//6 mov
		s_out=S_C25N2;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==3))//7 mov
		s_out=S_C25N3;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==4))//7 mov
		s_out=S_C25N4;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==5))//8 mov
		s_out=S_C25N5;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==6))//8 mov
		s_out=S_C25N6;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==7))//9 mov
		s_out=S_C25N7;	
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==8))//9 mov
		s_out=S_C25N8;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==9))//10 mov
		s_out=S_C25N9;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==5)&& (nivel==10))//10 mov
		s_out=S_C25N10;
		
	///// 6x6 *2 cruz
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==1))//8 mov
		s_out=S_C26N1;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==2))//8 mov
		s_out=S_C26N2;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==3))//9 mov
		s_out=S_C26N3;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==4))//9 mov
		s_out=S_C26N4;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==5))//10 mov
		s_out=S_C26N5;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==6))//10 mov
		s_out=S_C26N6;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==7))//11 mov
		s_out=S_C26N7;	
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==8))//11 mov
		s_out=S_C26N8;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==9))//12 mov
		s_out=S_C26N9;
	elseif ((modo==MCRUZ)&& (prof==2)&& (tabl==6)&& (nivel==10))//12 mov
		s_out=S_C26N10;

	//// 4x4 *3
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==1))//4mov
		s_out=S_C34N1;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==2))//4mov
		s_out=S_C34N2;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==3))//5 mov
		s_out=S_C34N3;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==4))//5 mov
		s_out=S_C34N4;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==5))//6 mov
		s_out=S_C34N5;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==6))//6 mov
		s_out=S_C34N6;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==7))//7 mov
		s_out=S_C34N7;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==8))//7 mov
		s_out=S_C34N8;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==9))//8 mov
		s_out=S_C34N9;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==4)&& (nivel==10))//8 mov
		s_out=S_C34N10;

	//// 5x5 *3
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==1))//4mov
		s_out=S_C35N1;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==2))//4mov
		s_out=S_C35N2;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==3))//5 mov
		s_out=S_C35N3;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==4))//5 mov
		s_out=S_C35N4;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==5))//6 mov
		s_out=S_C35N5;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==6))//6 mov
		s_out=S_C35N6;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==7))//7 mov
		s_out=S_C35N7;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==8))//7 mov
		s_out=S_C35N8;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==9))//8 mov
		s_out=S_C35N9;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==5)&& (nivel==10))//8 mov
		s_out=S_C35N10;
		
	//// 6x6 *3
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==1))//4mov
		s_out=S_C36N1;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==2))//4mov
		s_out=S_C36N2;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==3))//5 mov
		s_out=S_C36N3;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==4))//5 mov
		s_out=S_C36N4;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==5))//6 mov
		s_out=S_C36N5;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==6))//6 mov
		s_out=S_C36N6;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==7))//7 mov
		s_out=S_C36N7;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==8))//7 mov
		s_out=S_C36N8;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==9))//8 mov
		s_out=S_C36N9;
	elseif ((modo==MCRUZ)&& (prof==3)&& (tabl==6)&& (nivel==10))//8 mov
		s_out=S_C36N10;
		
		
		//// 4x4 *4
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==1))
		s_out=S_C44N1;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==2))
		s_out=S_C44N2;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==3))
		s_out=S_C44N3;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==4))
		s_out=S_C44N4;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==5))
		s_out=S_C44N5;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==6))
		s_out=S_C44N6;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==7))
		s_out=S_C44N7;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==8))
		s_out=S_C44N8;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==9))
		s_out=S_C44N9;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==4)&& (nivel==10))
		s_out=S_C44N10;

	//// 5x5 *4
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==1))
		s_out=S_C45N1;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==2))
		s_out=S_C45N2;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==3))
		s_out=S_C45N3;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==4))
		s_out=S_C45N4;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==5))
		s_out=S_C45N5;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==6))
		s_out=S_C45N6;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==7))
		s_out=S_C45N7;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==8))
		s_out=S_C45N8;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==9))
		s_out=S_C45N9;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==5)&& (nivel==10))
		s_out=S_C45N10;
		
	//// 6x6 *4
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==1))
		s_out=S_C46N1;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==2))
		s_out=S_C46N2;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==3))
		s_out=S_C46N3;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==4))
		s_out=S_C46N4;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==5))
		s_out=S_C46N5;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==6))
		s_out=S_C46N6;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==7))
		s_out=S_C46N7;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==8))
		s_out=S_C46N8;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==9))
		s_out=S_C46N9;
	elseif ((modo==MCRUZ)&& (prof==4)&& (tabl==6)&& (nivel==10))
		s_out=S_C46N10;
		
	//// 4x4 *5
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==1))
		s_out=S_C54N1;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==2))
		s_out=S_C54N2;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==3))
		s_out=S_C54N3;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==4))
		s_out=S_C54N4;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==5))
		s_out=S_C54N5;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==6))
		s_out=S_C54N6;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==7))
		s_out=S_C54N7;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==8))
		s_out=S_C54N8;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==9))
		s_out=S_C54N9;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==4)&& (nivel==10))
		s_out=S_C54N10;

	//// 5x5 *5
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==1))
		s_out=S_C55N1;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==2))
		s_out=S_C55N2;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==3))
		s_out=S_C55N3;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==4))
		s_out=S_C55N4;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==5))
		s_out=S_C55N5;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==6))
		s_out=S_C55N6;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==7))
		s_out=S_C55N7;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==8))
		s_out=S_C55N8;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==9))
		s_out=S_C55N9;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==5)&& (nivel==10))
		s_out=S_C55N10;
		
	//// 6x6 *5
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==1))
		s_out=S_C56N1;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==2))
		s_out=S_C56N2;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==3))
		s_out=S_C56N3;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==4))
		s_out=S_C56N4;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==5))
		s_out=S_C56N5;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==6))
		s_out=S_C56N6;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==7))
		s_out=S_C56N7;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==8))
		s_out=S_C56N8;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==9))
		s_out=S_C56N9;
	elseif ((modo==MCRUZ)&& (prof==5)&& (tabl==6)&& (nivel==10))
		s_out=S_C56N10;
		
	// EQUIS
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==1))
		s_out=S_E24N1;		
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==2))
		s_out=S_E24N2;		
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==3))
		s_out=S_E24N3;		
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==4))
		s_out=S_E24N4;		
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==5))
		s_out=S_E24N5;	
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==6))
		s_out=S_E24N6;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==7))
		s_out=S_E24N7;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==8))
		s_out=S_E24N8;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==9))
		s_out=S_E24N9;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==4)&& (nivel==10))
		s_out=S_E24N10;
	
	///// 5x5 *2 cruz
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==1))
		s_out=S_E25N1;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==2))
		s_out=S_E25N2;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==3))
		s_out=S_E25N3;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==4))
		s_out=S_E25N4;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==5))
		s_out=S_E25N5;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==6))
		s_out=S_E25N6;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==7))
		s_out=S_E25N7;	
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==8))
		s_out=S_E25N8;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==9))
		s_out=S_E25N9;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==5)&& (nivel==10))
		s_out=S_E25N10;
		
	///// 6x6 *2 cruz
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==1))
		s_out=S_E26N1;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==2))
		s_out=S_E26N2;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==3))
		s_out=S_E26N3;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==4))
		s_out=S_E26N4;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==5))
		s_out=S_E26N5;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==6))
		s_out=S_E26N6;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==7))
		s_out=S_E26N7;	
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==8))
		s_out=S_E26N8;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==9))
		s_out=S_E26N9;
	elseif ((modo==MEQUIS)&& (prof==2)&& (tabl==6)&& (nivel==10))
		s_out=S_E26N10;

	//// 4x4 *3
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==1))
		s_out=S_E34N1;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==2))
		s_out=S_E34N2;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==3))
		s_out=S_E34N3;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==4))
		s_out=S_E34N4;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==5))
		s_out=S_E34N5;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==6))
		s_out=S_E34N6;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==7))
		s_out=S_E34N7;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==8))
		s_out=S_E34N8;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==9))
		s_out=S_E34N9;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==4)&& (nivel==10))
		s_out=S_E34N10;

	//// 5x5 *3
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==1))
		s_out=S_E35N1;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==2))
		s_out=S_E35N2;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==3))
		s_out=S_E35N3;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==4))
		s_out=S_E35N4;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==5))
		s_out=S_E35N5;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==6))
		s_out=S_E35N6;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==7))
		s_out=S_E35N7;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==8))
		s_out=S_E35N8;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==9))
		s_out=S_E35N9;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==5)&& (nivel==10))
		s_out=S_E35N10;
		
	//// 6x6 *3
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==1))
		s_out=S_E36N1;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==2))
		s_out=S_E36N2;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==3))
		s_out=S_E36N3;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==4))
		s_out=S_E36N4;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==5))
		s_out=S_E36N5;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==6))
		s_out=S_E36N6;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==7))
		s_out=S_E36N7;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==8))
		s_out=S_E36N8;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==9))
		s_out=S_E36N9;
	elseif ((modo==MEQUIS)&& (prof==3)&& (tabl==6)&& (nivel==10))
		s_out=S_E36N10;
		
		
		//// 4x4 *4
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==1))
		s_out=S_E44N1;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==2))
		s_out=S_E44N2;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==3))
		s_out=S_E44N3;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==4))
		s_out=S_E44N4;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==5))
		s_out=S_E44N5;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==6))
		s_out=S_E44N6;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==7))
		s_out=S_E44N7;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==8))
		s_out=S_E44N8;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==9))
		s_out=S_E44N9;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==4)&& (nivel==10))
		s_out=S_E44N10;

	//// 5x5 *4
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==1))
		s_out=S_E45N1;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==2))
		s_out=S_E45N2;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==3))
		s_out=S_E45N3;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==4))
		s_out=S_E45N4;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==5))
		s_out=S_E45N5;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==6))
		s_out=S_E45N6;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==7))
		s_out=S_E45N7;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==8))
		s_out=S_E45N8;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==9))
		s_out=S_E45N9;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==5)&& (nivel==10))
		s_out=S_E45N10;
		
	//// 6x6 *4
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==1))
		s_out=S_E46N1;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==2))
		s_out=S_E46N2;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==3))
		s_out=S_E46N3;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==4))
		s_out=S_E46N4;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==5))
		s_out=S_E46N5;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==6))
		s_out=S_E46N6;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==7))
		s_out=S_E46N7;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==8))
		s_out=S_E46N8;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==9))
		s_out=S_E46N9;
	elseif ((modo==MEQUIS)&& (prof==4)&& (tabl==6)&& (nivel==10))
		s_out=S_E46N10;
		
	//// 4x4 *5
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==1))
		s_out=S_E54N1;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==2))
		s_out=S_E54N2;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==3))
		s_out=S_E54N3;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==4))
		s_out=S_E54N4;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==5))
		s_out=S_E54N5;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==6))
		s_out=S_E54N6;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==7))
		s_out=S_E54N7;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==8))
		s_out=S_E54N8;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==9))
		s_out=S_E54N9;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==4)&& (nivel==10))
		s_out=S_E54N10;

	//// 5x5 *5
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==1))
		s_out=S_E55N1;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==2))
		s_out=S_E55N2;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==3))
		s_out=S_E55N3;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==4))
		s_out=S_E55N4;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==5))
		s_out=S_E55N5;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==6))
		s_out=S_E55N6;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==7))
		s_out=S_E55N7;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==8))
		s_out=S_E55N8;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==9))
		s_out=S_E55N9;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==5)&& (nivel==10))
		s_out=S_E55N10;
		
	//// 6x6 *5
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==1))
		s_out=S_E56N1;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==2))
		s_out=S_E56N2;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==3))
		s_out=S_E56N3;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==4))
		s_out=S_E56N4;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==5))
		s_out=S_E56N5;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==6))
		s_out=S_E56N6;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==7))
		s_out=S_E56N7;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==8))
		s_out=S_E56N8;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==9))
		s_out=S_E56N9;
	elseif ((modo==MEQUIS)&& (prof==5)&& (tabl==6)&& (nivel==10))
		s_out=S_E56N10;
	
	end	
	s_loadGameRom=s_out;
end
