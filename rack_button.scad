hole_space=32;
hole=7;
gap=22;
height=44;
width=65;
depth=2;
button=22;

hole_bottom = (height-hole_space-7)/2;

difference(){
	cube([width,height,depth]);
	translate([3.5,hole_bottom,0]) union(){
		translate([hole/2,hole/2,0]) cylinder(d=hole,h=depth);
		translate([hole/2,0,0]) cube([hole/2,hole,depth]);
		translate([hole,hole/2,0]) cylinder(d=hole,h=depth);
	}
	translate([3.5,hole_bottom+hole_space,0]) union(){
		translate([hole/2,hole/2,0]) cylinder(d=hole,h=depth);
		translate([hole/2,0,0]) cube([hole/2,hole,depth]);
		translate([hole,hole/2,0]) cylinder(d=hole,h=depth);
	}
	translate([width-(height/2),height/2,0]) cylinder(d=button,h=depth);
}