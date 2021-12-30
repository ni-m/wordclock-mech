//Definition der Auflösung
$fa = 1;
$fs = 0.3;

//Font und Grösse - nicht verändern!
cfgFont = "Verdana";
cfgSize = 5;

//Einlesen der Konfiguration
include <fontmachine.cfg>
{
    difference()
    //Auschneiden der Buchstaben (Module) aus der Grundplatte
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
        //Auschneiden der vier Punkte am unteren Rand
        translate([-50,-60])    circle(0.5);
        translate([-40,-60])    circle(0.5);
        translate([40,-60])     circle(0.5);
        translate([50,-60])     circle(0.5);
    }
}

//Definition der einzelnen Buchstaben

module charA() 
{   difference()
    {   text("A",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut){translate ([0.825,-2]) rotate (19.5)square([0.6,2]);}
    }
}

module charB() 
{   difference()
    {   text("B",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([1.8,-3]) rotate (45) square([0.6,2]);
        if (cfgCutOut) translate ([-0.975,-0.2]) rotate (0) square([0.6,1.2]);
    }
}

module charC() 
{   text("C",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charD() 
{   difference()
    {   text("D",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([-1.265,-3]) rotate (0) square([0.6,1.2]);
    }
}

module charE() 
{   text("E",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charF() 
{   text("F",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charG() 
{   text("G",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charH() 
{   text("H",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charI() 
{   text("I",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charJ() 
{   text("J",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charK() 
{   text("K",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charL() 
{   text("L",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charM() 
{   text("M",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charN() 
{   text("N",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charO() 
{   difference()
    {   text("O",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([0.6,1.8]) rotate (-45) square([0.6,2]);
        if (cfgCutOut) translate ([-2,-2]) rotate (-45) square([0.6,2]);
    }
}

module charQ() 
{   difference()
    {   translate([0, -0.5]) text("Q",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([0.6,1.8]) rotate (-45) square([0.6,2]);
        if (cfgCutOut) translate ([-2,-2]) rotate (-45) square([0.6,2]);
    }
}

module charP() 
{   difference()
    {   text("P",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([-0.695,-1]) rotate (0) square([0.6,1.2]);
    }
}

module charR() 
{   difference()
    {   text("R",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([-1.008,-1]) rotate (0) square([0.6,1.2]);
    }
}

module charS() 
{   text("S",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charT() 
{   text("T",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charU() 
{   text("U",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charV() 
{   text("V",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charW() 
{   text("W",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charX() 
{   text("X",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charY() 
{   text("Y",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charZ() 
{   text("Z",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charAe() 
{   difference()
    {   translate([0, 0.5]) text("Ä",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut){translate ([0.78,-2]) rotate (19.5)square([0.6,2]);}
    }
}

module charOe() 
{   difference()
    {   translate([0, 0.5]) text("Ö",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([0.6,1.8]) rotate (-45) square([0.6,2]);
        if (cfgCutOut) translate ([-2,-2]) rotate (-45) square([0.6,2]);
    }
}

module charUe() 
{   translate([0, 0.5]) text("Ü",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}
