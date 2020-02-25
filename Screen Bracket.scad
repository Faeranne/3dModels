include <screenModules.scad>;

module screenStand(){
difference(){
	cube([40,10,35]);
	#translate([5,5,0]) cylinder(r=2,h=1,$fn=20);
	#translate([5,5,1]) cylinder(r=3,h=35,$fn=20);
	#translate([35,5,0]) cylinder(r=2,h=1,$fn=20);
	#translate([35,5,1]) cylinder(r=3,h=35,$fn=20);
	#translate([15,5,30]) cylinder(r=1.5,h=6,$fn=20);
	#translate([25,5,30]) cylinder(r=1.5,h=6,$fn=20);
}
}

module screenAngle(){
	difference(){
		union(){
			cube([40,10,10]);
			rotate([45,0,0]) cube([40,10,10]);
		}
		#translate([15,5,0]) cylinder(r=2,h=1,$fn=20);
		#translate([15,5,1]) cylinder(r=3,h=12,$fn=20);
		#translate([25,5,0]) cylinder(r=2,h=1,$fn=20);
		#translate([25,5,1]) cylinder(r=3,h=12,$fn=20);
		rotate([45,0,0]){
			#translate([5,5,9]) cylinder(r=2,h=1,$fn=20);
			#translate([5,5,-11]) cylinder(r=3,h=20,$fn=20);
			#translate([35,5,9]) cylinder(r=2,h=1,$fn=20);
			#translate([35,5,-11]) cylinder(r=3,h=20,$fn=20);
		}
	}
}

module plateAnchor(){
  	difference(){
		union(){
  			cube([150,100,3]);
			translate([130,30,3]) rotate([0,0,90]) linear_extrude(height=4) raspberrypi_holes();
			translate([150,75,0]) rotate([0,0,90]) usbc();
			translate([150,5,0]) rotate([0,0,90]) hdmiHolder();
		}
			#translate([5,5,0]) cylinder(r=1.5,h=4,$fn=20);
			#translate([35,5,0]) cylinder(r=1.5,h=4,$fn=20);
  	}
}

/*difference(){
	screen_frame();
	#translate([10,10,0]) cylinder(r=1.5,h=3,$fn=20);
	#translate([40,10,0]) cylinder(r=1.5,h=3,$fn=20);
}
*/
//screenAngle();
//screenStand();
plateAnchor();