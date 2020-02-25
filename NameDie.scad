difference(){
  union(){
    minkowski(){
      cube([30,30,30]);
      cylinder(r=2,h=1,$fn=100);
      rotate([90,0,0]) cylinder(r=2,h=1,$fn=100);
      rotate([0,90,0]) cylinder(r=2,h=1,$fn=100);
    }
  }
    translate([0,10,34]) linear_extrude(height=2) text("REN");
    translate([2,19,-3]) rotate([180,0,0]) linear_extrude(height=2) text("VOID", size=8);
    translate([-3,29.5,10]) rotate([90,0,0]) rotate([0,-90,0]) linear_extrude(height=2) text("TSAR", size=8);
    translate([34,1.5,10.5]) rotate([0,0,180]) rotate([90,0,0]) rotate([0,-90,0]) linear_extrude(height=2) text("ARGH", size=7);
    translate([19,-4,3]) rotate([0,-90,0]) rotate([90,0,0]) linear_extrude(height=2) text("SAN", size=8);
    translate([12,33,3]) rotate([0,0,180]) rotate([0,-90,0]) rotate([90,0,0]) linear_extrude(height=2) text("SARAH", size=5);
}