include <screenModules.scad>;

difference(){
	linear_extrude(height=20){
		difference(){
			screen_border_2();
			translate([2,2]) screen_border();
		}
	}
	translate([0,38,2]) #cube([2,2,16]);
	translate([0,34,2]) #cube([2,2,16]);
	translate([0,30,2]) #cube([2,2,16]);
	translate([0,26,2]) #cube([2,2,16]);
	translate([0,22,2]) #cube([2,2,16]);
}
difference(){
	AnchorL = 32.5;
	AnchorB = 22;
	union(){
		linear_extrude(height=11){
			translate([AnchorL-3,AnchorB-3,0]) screen_hole(5);
		}
		linear_extrude(height=2) difference(){
			screen_border_2();
			#translate([75,50]) square([45,30]);
		}
	}
	linear_extrude(height=11){
		translate([AnchorL,AnchorB,0]) screen_hole(2);
	}
	linear_extrude(height=9){
		translate([AnchorL-2,AnchorB-2,0]) screen_hole(4);
	}
	#translate([153,24,2]) cube([15,5,20]);
	#translate([191.75/2,17.5,0]) linear_extrude(height=3) wall_plate_holes(7.5/2);
	#translate([191.75/2,14,0]) linear_extrude(height=3) wall_plate_holes(3.5/2);
}

translate([0,43,1]){
	rotate([0,90,0]) rotate([0,0,180]) DHT22_holder();
}