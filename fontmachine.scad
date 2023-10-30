// @file fontmachine.scad
// @author niederberger & ni-m
// @brief  This file reads a config file and renders an openSCAD file acc to this. 
// @brief  It starts with a baseplate and cuts each char out of this plate
// @brief  If the char has some internal shapes (e.g. O, A, P...), a corresponding beam will be added (if requested via config.cfg)

//resolution, used for dxf and svg export
$fa= $preview ? 32 : 1;
$fs= $preview ? 10 : 0.01;

//font and size; do not change!
cfgFont = "Verdana";
cfgSize = 5;

//read config file
echo("Copy fm_config_default.cfg and name it fm_config.cfg");
include <fm_config_default.cfg>     // load default config file
include <fm_config.cfg>             // override default config file 

//this code generates a frontplate with 150 mm* 150 mm
//scale according to cfgGridSize, base gridSize is 10mm, adjusted if needed
scale ([cfgGridSize/10,cfgGridSize/10])
{
    difference()
    // cut each char out of the baseplate
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
        //coutout of the four points in the lower part (used for minutes)
        translate([-50,-60])    circle(0.5);
        translate([-40,-60])    circle(0.5);
        translate([40,-60])     circle(0.5);
        translate([50,-60])     circle(0.5);
    }
}
echo("Finished");

//Definition of each char
module charA() 
{   
    difference()
    {   
        text("A",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut){translate ([0.401,-2]) rotate (19.5)square([1,2]);}
    }
}

module charB() 
{   
    difference()
    {   
        text("B",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([1.8,-3]) rotate (45) square([1,2]);
        if (cfgCutOut) translate ([-0.975,-0.2]) rotate (0) square([1,1.2]);
    }
}

module charC() 
{   
    text("C",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charD() 
{   
    difference()
    {   
        text("D",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([-1.265,-3]) rotate (0) square([1,1.2]);
    }
}

module charE() 
{   
    text("E",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charF() 
{   
    text("F",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charG() 
{   
    text("G",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charH() 
{   
    text("H",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charI() 
{   
    text("I",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charJ() 
{   
    text("J",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charK() 
{   
    text("K",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charL() 
{   
    text("L",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charM() 
{   
    text("M",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charN() 
{   
    text("N",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charO() 
{   
    difference()
    {   
        text("O",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([0.6,1.8]) rotate (-45) square([1,2]);
        if (cfgCutOut) translate ([-2,-2]) rotate (-45) square([1,2]);
    }
}

module charQ() 
{   
    difference()
    {   
        translate([0, -0.5]) text("Q",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([0.6,1.8]) rotate (-45) square([1,2]);
        if (cfgCutOut) translate ([-2,-2]) rotate (-45) square([1,2]);
    }
}

module charP() 
{   
    difference()
    {   
        text("P",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([-0.695,-1]) rotate (0) square([1,1.2]);
    }
}

module charR() 
{   
    difference()
    {   
        text("R",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([-1.008,-1]) rotate (0) square([1,1.2]);
    }
}

module charS() 
{   
    text("S",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charT() 
{   
    text("T",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charU() 
{   
    text("U",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charV() 
{   
    text("V",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charW() 
{   
    text("W",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charX() 
{   
    text("X",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charY() 
{   
    text("Y",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charZ() 
{   
    text("Z",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}

module charAe() 
{   
    difference()
    {   
        translate([0, 0.5]) text("Ä",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut){translate ([0.352,-2]) rotate (19.5)square([1,2]);}
    }
}

module charOe() 
{   
    difference()
    {   
        translate([0, 0.5]) text("Ö",font=cfgFont, , size = cfgSize, halign="center", valign="center");
        if (cfgCutOut) translate ([0.6,1.8]) rotate (-45) square([1,2]);
        if (cfgCutOut) translate ([-2,-2]) rotate (-45) square([1,2]);
    }
}

module charUe() 
{   
    translate([0, 0.5]) text("Ü",font=cfgFont, , size = cfgSize, halign="center", valign="center");
}
