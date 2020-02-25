include <screenModules.scad>;

difference(){
	union(){
		cube([56,65,6]);
		translate([-3,-3,6])linear_extrude(height=2) raspberrypi_holes();
	}
	cube([57,9,4]);
	#translate([7,0,0]) cube([15,65,4]);
	#translate([7,0,0]) cube([42,9,6]);
	translate([0,65-(13+18),0]) cube([7,18,4]);
	#linear_extrude(height=7) raspberrypi_screws();
}