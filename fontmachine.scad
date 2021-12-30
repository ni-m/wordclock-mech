$fa = 10;
$fs = 2;

/*text("O");

square([2,20]);

difference(){
    text("Ö");
    square([2,20]);
}*/
//translate ([20,20])
//*
charArray = 
["E","S","R","I","S","C","H","M","F","Ü","F",
 "H","V","I","E","R","T","E","L","Z","Ä","H",
 "A","Z","W","Ä","N","Z","G","H","V","O","R",
 "P","K","A","B","M","H","A","L","B","I","B",
 "P","Q","F","Ü","F","I","A","O","A","X","I",
 "Y","N","Ü","N","I","F","Ü","F","Z","G","R",
 "S","Ä","C","H","S","I","B","N","I","M","T",
 "J","A","H","R","U","A","C","H","T","I","H",
 "V","I","E","R","I","C","O","N","N","Y","D",
 "Z","Ä","N","I","Z","W","Ö","L","F","I","A",
 "E","I","S","Z","W","O","I","D","R","Ü","Y"];
/*/
charArray = 
["E","S","X","I","S","C","H","M","F","Ü","F",
 "H","V","I","E","X","T","E","L","Z","X","H",
 "X","Z","W","X","N","Z","G","H","V","X","X",
 "E","S","X","I","S","C","H","M","F","Ü","F",
 "H","V","I","E","X","T","E","L","Z","X","H",
 "X","Z","W","X","N","Z","G","H","V","X","X",
 "E","S","X","I","S","C","H","M","F","Ü","F",
 "H","V","I","E","X","T","E","L","Z","X","H",
 "X","Z","W","X","N","Z","G","H","V","X","X",
 "E","S","X","I","S","C","H","M","F","Ü","F",
 "H","V","I","E","X","T","E","L","Z","X","H",];/*/
 
cfgFont = "Verdana";
cfgSize = 5;
cfgCut = 1;

difference()
{
    square(150, center = true);
    for (y=[0:1:10])
    {
        for(x=[0:1:10])
        {
            translate([-50+x*10,50-y*10])
            {
                if(charArray[y*11+x] == "A") charA();
                if(charArray[y*11+x] == "B") charB();
                if(charArray[y*11+x] == "C") charC();
                if(charArray[y*11+x] == "D") charD();
                if(charArray[y*11+x] == "E") charE();
                if(charArray[y*11+x] == "F") charF();
                if(charArray[y*11+x] == "G") charG();
                if(charArray[y*11+x] == "H") charH();
                if(charArray[y*11+x] == "I") charI();
                if(charArray[y*11+x] == "J") charJ();
                if(charArray[y*11+x] == "K") charK();
                if(charArray[y*11+x] == "L") charL();
                if(charArray[y*11+x] == "M") charM();
                if(charArray[y*11+x] == "N") charN();
                if(charArray[y*11+x] == "O") charO();
                if(charArray[y*11+x] == "P") charP();
                if(charArray[y*11+x] == "Q") charQ();
                if(charArray[y*11+x] == "R") charR();
                if(charArray[y*11+x] == "S") charS();
                if(charArray[y*11+x] == "T") charT();
                if(charArray[y*11+x] == "U") charU();
                if(charArray[y*11+x] == "V") charV();
                if(charArray[y*11+x] == "W") charW();
                if(charArray[y*11+x] == "X") charX();
                if(charArray[y*11+x] == "Y") charY();
                if(charArray[y*11+x] == "Z") charZ();
                if(charArray[y*11+x] == "Ä") charAe();
                if(charArray[y*11+x] == "Ö") charOe();
                if(charArray[y*11+x] == "Ü") charUe();
            }
        }
    }
    translate([-50,-60])    circle(0.5);
    translate([-40,-60])    circle(0.5);
    translate([40,-60])     circle(0.5);
    translate([50,-60])     circle(0.5);
}

module charA() text("A",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charB() text("B",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charC() text("C",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charD() text("D",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charE() text("E",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charF() text("F",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charG() text("G",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charH() text("H",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charI() text("I",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charJ() text("J",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charK() text("K",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charL() text("L",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charM() text("M",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charN() text("N",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charO() text("O",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charP() text("P",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charQ() text("Q",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charR() text("R",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charS() text("S",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charT() text("T",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charU() text("U",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charV() text("V",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charW() text("W",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charX() text("X",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charY() text("Y",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charZ() text("Z",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charAe() text("Ä",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charOe() text("Ö",font=cfgFont, , size = cfgSize, halign="center", valign="center");
module charUe() text("Ü",font=cfgFont, , size = cfgSize, halign="center", valign="center");
