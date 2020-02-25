module corner(r){
  difference(){
    square(r);
    translate([r,r,0]) circle(r=r);
  }
}

module screen(){
  displayCorner = 8;
  displayHeight = 106;
  displayWidth = 187.5;
  difference(){
    square([displayWidth,displayHeight]);
    corner(displayCorner);
    translate([displayWidth,0,0]) rotate([0,0,90]) corner(displayCorner);
    translate([displayWidth,displayHeight,0]) rotate([0,0,180]) corner(displayCorner);
    translate([0,displayHeight,0]) rotate([0,0,270]) corner(displayCorner);
  }
}

module screen_border(){
  displayCorner = 8;
  displayHeight = 106.25;
  displayWidth = 187.75;
  difference(){
    square([displayWidth+5,displayHeight+5]);
    corner(displayCorner);
    translate([displayWidth+5,0,0]) rotate([0,0,90]) corner(displayCorner);
    translate([displayWidth+5,displayHeight+5,0]) rotate([0,0,180]) corner(displayCorner);
    translate([0,displayHeight+5,0]) rotate([0,0,270]) corner(displayCorner);
  }
}

module screen_border_2(){
  displayCorner = 10;
  displayHeight = 110.25;
  displayWidth = 191.75;
  difference(){
    square([displayWidth+5,displayHeight+5]);
    corner(displayCorner);
    translate([displayWidth+5,0,0]) rotate([0,0,90]) corner(displayCorner);
    translate([displayWidth+5,displayHeight+5,0]) rotate([0,0,180]) corner(displayCorner);
    translate([0,displayHeight+5,0]) rotate([0,0,270]) corner(displayCorner);
  }
}

module raspberrypi_holes() {
    x = 56;
    r = 2.5/2;
    translate([3.5, 3.5])            post(r,3);
    translate([(x - 3.5), 3.5])      post(r,3);
    translate([3.5, 3.5 + 58])       post(r,3);
    translate([(x - 3.5), 3.5 + 58]) post(r,3);
}

module raspberrypi_screws() {
    x = 56;
    r = 2.5/2;
    translate([3.5, 3.5])            circle(r=r,$fn=50);
    translate([(x - 3.5), 3.5])      circle(r=r,$fn=50);
    translate([3.5, 3.5 + 58])       circle(r=r,$fn=50);
    translate([(x - 3.5), 3.5 + 58]) circle(r=r,$fn=50);
}

module post(r1,r2){
	translate([r2,r2,0]) difference(){
		circle(r=r2,$fn=50);
		circle(r=r1,$fn=50);
	}
}

module screen_holes(){
	W = 126;
	H = 65.5;
	r = 2;
	translate([0,0,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([W,0,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([0,H,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([W,H,0]) translate([r,r,0]) circle(r=r,$fn=50);
}

module screen_hole(r){
	W = 126;
	H = 65.5;
	translate([0,0,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([W,0,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([0,H,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([W,H,0]) translate([r,r,0]) circle(r=r,$fn=50);
}

module cap_holes(){
	W = 46.5;
	H = 24;
	r = 1.5;
	translate([0,0,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([W,1,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([0,H,0]) translate([r,r,0]) circle(r=r,$fn=50);
	translate([W,H-1,0]) translate([r,r,0]) circle(r=r,$fn=50);
}

module cap_posts(){
	W = 46.5;
	H = 24;
	r = 1.5;
	translate([0,0,0]) post(1.5,3);
	translate([W,1,0]) post(1.5,3);
	translate([0,H,0]) post(1.5,3);
	translate([W,H-1,0]) post(1.5,3);
}

module screen_frame(){
	difference(){
		AnchorL = 32.5;
		AnchorB = 22;
		displayDepth = 8.5;
		linear_extrude(height=displayDepth+1.4) screen_border();
		translate([2.5,2.5,1.5]) linear_extrude(height=displayDepth) screen();
		translate([50,17,-1]) cube([90,80,displayDepth]);
		linear_extrude(height=displayDepth+3) translate([AnchorL,AnchorB,0]) screen_holes();
	}
}

module carrier_spacer(){
	AnchorB = 22;
	linear_extrude(height=8) difference(){
		square([153,105]);
		translate([28,17]) square([90,80]);
		translate([10,AnchorB,0]) screen_holes();
	}
}

module carrier_board(){
	AnchorB = 22;
	color("DarkOrange") linear_extrude(height=1) difference(){
		square([153,105]);
		translate([10,AnchorB,0]) screen_holes();
		translate([30,50]) square([10,20]);
	}
	translate([130,40,0]) rotate([0,0,90]) color("RoyalBlue") linear_extrude(height=6) raspberrypi_holes();
	translate([146,17,0]) rotate([0,0,-90]) color("Lime") m2();
	translate([3,50,1]) rotate([0,0,-90]) usbc();
	translate([3,83,1]) rotate([0,0,-90]) hdmiHolder();
}

module carrier_wall(){
	difference(){
		W = 153;
		H = 105;
		D = 30;
		Wall = 3;
		cube([W,H,D]);
		translate([Wall,Wall,0]) cube([W-(Wall*2),H-(Wall*2),D+1]);
		HDMI1T = 25;
		HDMI1H = 18;
		HDMI1D = 8;
		HDMI1B = 6;
		#translate([0,H-(HDMI1T+HDMI1H),HDMI1B]) cube([Wall,HDMI1H,HDMI1D]);
		HDMI2T = 64;
		HDMI2H = 18;
		HDMI2B = 10;
		#translate([3,H-(HDMI2T+HDMI2H),HDMI2B]) rotate([0,0,90]) hdmiPlate();
		USBT = 36;
		USBH = 10;
		USBD = 4;
		USBB = 4.5;
		#translate([0,(USBT),USBB]) cube([Wall,USBH,USBD]);
		ETHT = 33+35+10;
		ETHB = 6;
		ETHW = 20;
		ETHH = 16;
		#translate([W-Wall,(ETHT),ETHB]) cube([Wall,ETHW,ETHH]);
	}
}

module m2(){
	difference(){
		union(){
			linear_extrude(height=3) circle(r=3,$fn=20);
			linear_extrude(height=4) translate([-13.5,-78.5,0]) difference(){
				square([27,81]);
				translate([2,2,0]) square([23,76.5]);
			}
			translate([-13.5,-78.5,0]) cube([27,2,5]);
		}
		linear_extrude(height=4) circle(r=1.5,$fn=20);
		translate([-10,-78.5,3]) cube([20,2.25,1]);
	}
}

module usbc(){
	usbH=4;
	usbW=10;
	usbD=12.25;
	boardD=15;
	boardW=16;
	boardH=1;
	height=6;
	union(){
		difference(){
			union(){
				cube([boardW+2,boardD+1,height]);
				translate([boardW+1+1.85,7+2.5,0]) cylinder(r=2.5,h=height,$fn=20);
				translate([0-.85,7+2.5,0]) cylinder(r=2.5,h=height,$fn=20);
			}
			translate([boardW+1+1.85,7+2.5,0]) cylinder(r=1.5,h=height,$fn=20);
			translate([boardW,8,height-boardH]) cube([3,3,boardH]);
			translate([-.85,7+2.5,0]) cylinder(r=1.5,h=height,$fn=20);
			translate([-.85,8,height-boardH]) cube([3,3,boardH]);
			translate([1,-1,height-boardH]) cube([boardW,boardD+1,boardH]);
			#translate([((boardW+2)/2)-(usbW/2),-1,(height-(usbH/2))-(boardH/2)]) cube([usbW,usbD+1,usbH]);
			translate([(18-usbW)/2,boardD+1-3,height-boardH-1.5]) cube([usbW,3,2.5]);
		}
	}
}

module hdmiHolder(){
	boardD=22;
	boardW=22;
	boardH=1.5;
	hdmiD=12;
	hdmiH=6;
	hdmiW=15.5;
	height=6;
	union(){
		difference(){
			union(){
				cube([boardW+2,boardD+1,height]);
				translate([boardW+1+1.85,10+2.5,0]) cylinder(r=2.5,h=height,$fn=20);
				translate([0-.85,10+2.5,0]) cylinder(r=2.5,h=height,$fn=20);
			}
			translate([boardW+1+1.85,10+2.5,0]) cylinder(r=1.5,h=height,$fn=20);
			translate([boardW,11,height-boardH]) cube([3,3,boardH]);
			translate([-.85,10+2.5,0]) cylinder(r=1.5,h=height,$fn=20);
			translate([-.85,11,height-boardH]) cube([3,3,boardH]);
			translate([1,-1,height-boardH]) cube([boardW,boardD+1,boardH]);
			#translate([((boardW+2)/2)-(hdmiW/2),-1,height]) cube([hdmiW,hdmiD+1,hdmiH]);
		}
	}
}

module hdmiPlate(){
	outerW = 36.25;
	outerH = 12.5;
	innerW = 17.25;
	innerH = 8;
	screwD = 3.25;
	screwW = 27;
	cube([outerW,2,outerH]);
	translate([(outerW-innerW)/2,2,(outerH-innerH)/2]) cube([innerW,2,innerH]);
	#translate([(outerW-screwW)/2,0,(outerH/2)]) rotate([-90,0,0]) cylinder(h=5,r=screwD/2,$fn=20);
	#translate([outerW-((outerW-screwW)/2),0,(outerH/2)]) rotate([-90,0,0]) cylinder(h=5,r=screwD/2,$fn=20);
}

module DHT22_holder(){
	width=16;
	height=21;
	depth=8;
	tabHole=1;
	difference(){
		union(){
			cube([width+2,height+1,depth]);
			translate([0,height,0]) cube([width+2,5.5,6.5]);
		}
		translate([1,1,0]) cube([width,height,depth]);
		#translate([(width/2)-3.5,0,4.5]) cube([9,1,5.5]);
		translate([(width+2)/2,height+1+tabHole+1,0]) cylinder(r=1.5,h=6.5,$fn=50);
	}
}

module wall_plate_holes(r){
	distance = 84;
	circle(r=r,$fn=50);
	translate([0,distance,0]) circle(r=r,$fn=50);
}