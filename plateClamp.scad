platew=70;
plateh=80;
w=67;
h=22;
l=5;
d=3;
difference(){
    translate([0,0,l/2]) cube([platew,plateh,l],center=true);
    translate([h/2,w/2,-1]) cylinder(d=d,h=l+2,$fn=50);
    translate([-h/2,w/2,-1]) cylinder(d=d,h=l+2,$fn=50);
    translate([-h/2,-w/2,-1]) cylinder(d=d,h=l+2,$fn=50);
    translate([h/2,-w/2,-1]) cylinder(d=d,h=l+2,$fn=50);
}
translate([0,0,10+l]){
    difference(){
        cube([40,50,20],center=true);
        translate([-21,0,10]) rotate([0,90,0]) cylinder(d=34,h=42,$fn=100);
        translate([15,-20,0]) cylinder(d=3,h=20,$fn=50);
        translate([15,20,0]) cylinder(d=3,h=20,$fn=50);
        translate([-15,-20,0]) cylinder(d=3,h=20,$fn=50);
        translate([-15,20,0]) cylinder(d=3,h=20,$fn=50);
    }
}

translate([0,90,10]){
    difference(){
        cube([40,50,20],center=true);
        translate([-21,0,10]) rotate([0,90,0]) cylinder(d=34,h=42,$fn=100);
        translate([15,-20,0]) cylinder(d=3,h=20,$fn=50);
        translate([15,20,0]) cylinder(d=3,h=20,$fn=50);
        translate([-15,-20,0]) cylinder(d=3,h=20,$fn=50);
        translate([-15,20,0]) cylinder(d=3,h=20,$fn=50);
        translate([15,-20,-11]) cylinder(d=5,h=18,$fn=50);
        translate([15,20,-11]) cylinder(d=5,h=18,$fn=50);
        translate([-15,-20,-11]) cylinder(d=5,h=18,$fn=50);
        translate([-15,20,-11]) cylinder(d=5,h=18,$fn=50);
    }
}