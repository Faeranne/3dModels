laptopThickness = 32;
powerSocketDiameter = 12;
powerSocketDepth = 1;
laptopHeight = 1;
segmentHeight = 50;
segmentWidth = 50;
wallThickness = 7;
bottom = 0;
flip=1;

screwDiameter = 4;
screwHeadDiameter = 10;
screwWall = 5;


difference(){
    cube([segmentWidth+wallThickness,wallThickness*2+laptopThickness,segmentHeight+(wallThickness*bottom)]);
    translate([wallThickness,wallThickness,(wallThickness*bottom)-1])cube([segmentWidth+1,laptopThickness,segmentHeight+2]);
    translate([0,(flip*(wallThickness*2+laptopThickness+2)),0]) translate([(segmentWidth+wallThickness)/2,-1,(segmentHeight/2)+(wallThickness*bottom)]) rotate([-90,0,0]) mirror([0,0,flip]) screw();
}


module screw(){
    translate([0,0,screwWall]) cylinder(h=(wallThickness*2+laptopThickness),d=screwHeadDiameter);
    cylinder(h=(screwWall+2),d=screwDiameter);
} 