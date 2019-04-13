screwDiameter = 4;
screwHeadDiameter = 15;
pegDiameter = 30;
pegLength = 70;
screwDepth = 10;
knobLength = 20;
knobDiameter = 40;

difference(){
    union(){
        cylinder(h=pegLength, d=pegDiameter);
        //translate([0,0,pegLength-1]) cylinder(h=knobLength,d=knobDiameter);
    }
    translate([0,0,screwDepth]) cylinder(h=knobLength+pegLength-screwDepth,d=screwHeadDiameter);
    translate([0,0,-1]) cylinder(h=screwDepth+1,d=screwDiameter);
}