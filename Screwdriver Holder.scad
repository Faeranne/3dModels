screwdriverDiameter=18;
plugBack=8;
plugDepth=5;
plugFront=3;
plugWidth=11;
plugHeight=3;
hangerHeight=30;
hangerWalls=5;

width=18+(hangerWalls*2);
depth=width;
height=hangerHeight;

difference(){
    union(){
        cube([width,depth,height]);
    }
    union(){
        translate([width/2,depth/2,plugHeight+1]) cylinder(d=screwdriverDiameter,h=hangerHeight-plugHeight);
    }
}