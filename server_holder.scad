module serverShoe(){
    bodyDepth=26.8;
    bodyWidth=40.6;
    bodyHeight=19.8;
    screwWidth=48.4;
    screwHeight=10;
    screw=3;
    tolerence=1;
    translate([0,0,bodyDepth/2]) cube([bodyWidth,bodyHeight,bodyDepth],center=true);
    translate([screwWidth/2,screwHeight/2,0]) cylinder(h=bodyDepth,d=screw,$fn=100);
    translate([-screwWidth/2,screwHeight/2,0]) cylinder(h=bodyDepth,d=screw,$fn=100);
    translate([screwWidth/2,-screwHeight/2,0]) cylinder(h=bodyDepth,d=screw,$fn=100);
    translate([-screwWidth/2,-screwHeight/2,0]) cylinder(h=bodyDepth,d=screw,$fn=100);
}
module leverSwitch(){
    pinDiameter=2;
    pinWidth=6.75;
    pinHeight=6;
    translate([0,-pinWidth/2,0]) cylinder(h=6,d=pinDiameter,$fn=100);
    translate([0,pinWidth/2,0]) cylinder(h=6,d=pinDiameter,$fn=100);
}

module rockerSwitch(){
    diameter=6.5;
    notchDepth=1;
    notchWidth=.5;
    difference(){
        cylinder(h=6,d=diameter,$fn=100);
        translate([diameter/2,0,3]) cube([notchDepth,notchWidth,7],center=true);
    }
}

difference(){
    union(){
        translate([0,0,5]) cube([55,30,10],center=true);
        translate([0,-20,5]) cube([55,20,10],center=true);
    }
    translate([0,10,0]) cube([40.6,20,50],center=true);
    translate([0,4,-5]) serverShoe();
}

translate([0,-15,(10.5/2)+10]) rotate([0,0,90]) {
    difference(){
        cube([6,12,15],center=true);
        translate([0,0,2]) leverSwitch();
    }
}

translate([32.5,12.5,5]){
    cube([10,5,10],center=true);
    translate([10,1.25,0]) {
        difference(){
            cube([10,2.5,10],center=true);
            translate([0,1.3,0]) rotate([90,0,0]) cylinder(d1=5.8,d2=3.2,h=2,$fn=100);
            rotate([90,0,0]) cylinder(,d=3.2,h=8,$fn=100);
        }
    }
}


translate([0,5 ,2.5]) rotate([90,0,0]) difference(){
    cube([30,5,10],center=true);
    translate([9.6,-5,0]) rotate([-90,0,0]) cylinder(,d=3,h=8,$fn=100);
    translate([9.6,1.25,0])cube([11,2.6,11],center=true);
    translate([-10,3,0]) rotate([90,90,0]) rockerSwitch();
}

translate([20,30,0]) rotate([0,0,180]) difference(){
    union(){
        cylinder(d=20,h=3,$fn=100);
        translate() cube([35,10,3]);
        translate([25,-20,0]) cube([10,20,3]);
    }
    translate([0,0,-0.5]) cylinder(d=6,h=4,$fn=100);
}