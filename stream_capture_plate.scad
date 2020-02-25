include <boards.scad>

module plate(){
difference(){
	union(){
		cube([54.5,100,4]);
		translate([27.5,0,0]) cube([27,180,4]);
		translate([0,0,4]) linear_extrude(height=4) 
		difference(){
			drillHoles(streamboard[2],2.5);
			drillHoles(streamboard[2],1.5);
		}
		translate([52.5,106,3]) rotate([0,0,90]){
			linear_extrude(height=4.5) drillSlots(poe_board[4]);
			cube([74,1,3]);
			translate([0,21.8,0]) cube([74,1,3]);
		}
	}
   	linear_extrude(height=3) 
		drillHoles(hdmi_splitter[2],1.5);
}
	
translate([-9,90,0]) tab();
translate([-9,0,0]) tab();
translate([54.5,90,0]) tab();
translate([54.5,0,0]) tab();
}
module tab(){
	difference(){
		cube([10,10,2]);
		translate([5,5,-0.5]) cylinder(r=3,h=3);
	}
}

module post_out(){
	translate([5,5,2]) cylinder(r=5,h=20,$fn=200);
	translate([5,5,0]) cylinder(r=2.7,h=2,$fn=200);
}

module post_in(){
	translate([5,5,4]) cylinder(r=3,h=19,$fn=200);
	translate([5,5,-1]) cylinder(r=1.5,h=6,$fn=200);
}

module hdmi_extend(){
	hole_h=8.5;
	hole_w=18;
	tab_h=11;
	tab_w=37.5;
	screw_r=2.5;
	screw_offset=13;
	

module top(){
	difference(){
		union(){
			difference(){
				translate([-2,-17,0]) cube([77.5,199,28]);
				translate([0,-15,-1]) cube([73.5,195,26]);
			}
			post_out();
			translate([0,90,0]) post_out();
			translate([63.5,0,0]) post_out();
			translate([63.5,90,0]) post_out();
		}
		post_in();
		translate([0,90,0]) post_in();
		translate([63.5,0,0]) post_in();
		translate([63.5,90,0]) post_in();
		#translate([41,179,8.5]) cube([18,5,15]);
	}
}
hdmi_extend();
//plate();
//translate([-9,0,0]) top();