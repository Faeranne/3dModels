include <screenModules.scad>;

//hdmiHolder();
/*difference(){
	cube([40,3,15]);
	translate([2,0,1]) hdmiPlate();
}*/

/*usbc();
usbH=4;
usbW=9.5;
usbD=12.25;
boardD=15;
boardW=16;
boardH=1;
translate([0,-3,0]) difference(){
	cube([18,3,8]);
	#translate([((boardW+2)/2)-(usbW/2),-1,(4-(usbH/2))-(boardH/2)]) cube([usbW,usbD+1,usbH]);
}*/

//screen_frame();
//carrier_spacer();
carrier_board();
carrier_wall();