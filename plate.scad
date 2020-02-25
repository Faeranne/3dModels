module plate(w,h,d,s){
    difference(){
        cube([w,h,d]);
        translate([s,s,-1]) screw(s,s+3,d+1.1,1);
        translate([w-s,s,-1]) screw(s,s+3,d+1.1,1);
        translate([s,h-s,-1]) screw(s,s+3,d+1.1,1);
        translate([w-s,h-s,-1]) screw(s,s+3,d+1.1,1);
    }
}

module screw(d1,d2,h1,h2){
    cylinder(d=d1,h=h1,$fn=50);
    translate([0,0,h1-h2]) cylinder(d1=d1,d2=d2,h=h2,$fn=50);
}

module antenna(d,flat,h){
    difference(){
        cylinder(d=d,h=h,$fn=50);
        translate([-(d/2),-d/2,-1]) cube([d-flat,d,h+2]);
    }
}

module hdmi(d){
    w=17.75;
    h=8.15;
    sd=3;
    sw=25;
    translate([0,0,d/2]) cube([w,h,d],center=true);
    translate([sw/2,0,0]) cylinder(d=sd,h=d,$fn=20);
    translate([-sw/2,0,0]) cylinder(d=sd,h=d,$fn=20);
}

module ethernet(d){
    w=23;
    h=25;
    cube([w,h,d]);
}

module audio(h){
    d=24;
    sd=4;
    sw=30.5;
    rotate([0,0,-45]){
        cylinder(d=d,h=h,$fn=50);
        translate([sw/2,0,0]) cylinder(d=sd,h=h,$fn=20);
        translate([-sw/2,0,0]) cylinder(d=sd,h=h,$fn=20);
    }
}

module audio_block(h){
    d=24;
    sd=4;
    sw=30.5;
    translate([0,0,h]) cube([26,31,h],center=true);
    rotate([0,0,-50]){
        cylinder(d=d,h=h,$fn=50);
        translate([sw/2,0,0]) cylinder(d=sd,h=h,$fn=20);
        translate([-sw/2,0,0]) cylinder(d=sd,h=h,$fn=20);
    }
}
module vent(w,d){
    h = 5;
    translate([h/2,h/2,0]) cylinder(d=h,h=d,$fn=20);
    translate([h/2,0,0]) cube([w-h,h,d]);
    translate([w-(h/2),h/2,0]) cylinder(d=h,h=d,$fn=20);
}
/*
difference(){
    plate(100,60,2.5,5);
    translate([60,40,-0.5]) antenna(6.25,5.75,3.5);
    translate([80,40,-0.5]) antenna(6.25,5.75,3.5);
    translate([22,17,-0.5]) ethernet(4);
}
difference(){
    plate(100,60,2.5,5);
    translate([70,40,-0.5]) antenna(6.25,5.75,3.5);
    translate([22,17,-0.5]) ethernet(4);
}
difference(){
    plate(100,60,2.5,5);
    translate([49,29,-0.5]) rotate([0,0,90]) hdmi(4);
    translate([13,17,-0.5]) ethernet(4);
    translate([75,30,-0.5]) audio(4);
}
difference(){
    plate(40,60,2.5,5);
    translate([10,10,-0.5]) vent(20,4);
    translate([10,23,-0.5]) vent(20,4);
    translate([10,34,-0.5]) vent(20,4);
    translate([10,45,-0.5]) vent(20,4);
}
difference(){
    plate(100,60,2.5,5);
    translate([27,15,-0.5]) rotate([0,0,90]) audio_block(4);
    translate([27,45,-0.5]) rotate([0,0,90]) audio_block(4);
    translate([60,15,-0.5]) rotate([0,0,90]) audio_block(4);
    translate([60,45,-0.5]) rotate([0,0,90]) audio_block(4);
    translate([85,30,-0.5]) rotate([0,0,90]) hdmi(4);
}
difference(){
    plate(100,60,2.5,5);
    translate([27,15,-0.5]) rotate([0,0,90]) audio_block(4);
    translate([27,45,-0.5]) rotate([0,0,90]) audio_block(4);
    translate([72,15,-0.5]) rotate([0,0,90]) audio_block(4);
    translate([72,45,-0.5]) rotate([0,0,90]) audio_block(4);
}
*/
difference(){
    plate(100,60,2.5,5);
    translate([25,30,-0.5]) audio_block(4);
    translate([54,30,-0.5]) audio_block(4);
    translate([80,30,-0.5]) rotate([0,0,90]) hdmi(4);
}