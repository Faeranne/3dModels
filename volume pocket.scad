difference(){
    cube([50,50,25]);
    translate([5,5,1.5]) cube([40,40,25]);
    translate([25,25,-1]) cylinder(d=7,h=3,$fn=50);
}
