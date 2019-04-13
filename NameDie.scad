difference(){
    cube([30,30,30]);
    translate([0,10,29]) linear_extrude(height=2) text("REN");
    translate([2,19,1]) rotate([180,0,0]) linear_extrude(height=2) text("VOID", size=8);
    translate([1,29.5,10]) rotate([90,0,0]) rotate([0,-90,0]) linear_extrude(height=2) text("TSAR", size=8);
    translate([29,1.5,10.5]) rotate([0,0,180]) rotate([90,0,0]) rotate([0,-90,0]) linear_extrude(height=2) text("ARGH", size=7);
    translate([19,1,3]) rotate([0,-90,0]) rotate([90,0,0]) linear_extrude(height=2) text("SAN", size=8);
    translate([12,29,3]) rotate([0,0,180]) rotate([0,-90,0]) rotate([90,0,0]) linear_extrude(height=2) text("SARAH", size=5);
}