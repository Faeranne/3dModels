BoxHeight = 50;
BoxWidth = 37.85;
WallWidth = 2;
BaseDiameter = 25.47;
BaseHeight = 2.25;


/*
difference(){
	union(){
		cube([BoxWidth,BoxWidth,BaseHeight]);
		translate([WallWidth,WallWidth,BaseHeight]) cube([BoxWidth-WallWidth*2,BoxWidth-WallWidth*2,WallWidth]);
	}
	translate([(BoxWidth/2),(BoxWidth/2),WallWidth]) cylinder(d=BaseDiameter,h=BaseHeight,center=false);
}

difference(){
	cube([BoxWidth,BoxWidth,BoxHeight]);
	#translate([WallWidth,WallWidth,WallWidth]) cube([BoxWidth-WallWidth*2,BoxWidth-WallWidth*2,BoxHeight-WallWidth]);
}
*/

difference(){
	union(){
		cube([BoxWidth,BoxWidth,4]);
		translate([WallWidth,WallWidth,4]) cube([BoxWidth-WallWidth*2,BoxWidth-WallWidth*2,3]);
	}
	translate([(BoxWidth/2),(BoxWidth/2),4.75]) cylinder(d=BaseDiameter,h=BaseHeight,center=false);
}