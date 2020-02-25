width = 15.6;
radius = 1;
depth = 0.5;
rescale = 1.02;

edge = (width)/2;

difference(){
  dice(width,radius);
  translate([0,0,edge-(depth)]) linear_extrude(height=depth+1) scale(rescale) import("./iconography/ice.dxf");
  translate([edge-(depth),0,0]) rotate([0,90,0]) linear_extrude(height=depth+1) scale(rescale) import("./iconography/lightning.dxf");
  translate([0,edge-(depth),0]) rotate([-90,0,0]) linear_extrude(height=depth+1) scale(rescale) import("./iconography/poison.dxf");
  translate([0,0,-(edge+1)]) linear_extrude(height=depth+1) scale(rescale) import("./iconography/fire.dxf");
  translate([-(edge+1),0,0]) rotate([0,90,0]) linear_extrude(height=depth+1) scale(rescale) import("./iconography/wind.dxf");
  translate([0,-(edge-(depth)),0]) rotate([90,0,0]) linear_extrude(height=depth+1) scale(rescale) import("./iconography/acid.dxf");
}

module dice(w,r){
  s = w-(r*4);
  union(){
    minkowski(){
      cube([s,s,s],center=true);
      cylinder(r=r,h=0.0000000001,$fn=100);
      rotate([90,0,0]) cylinder(r=r,h=0.0000000001,$fn=100);
      rotate([0,90,0]) cylinder(r=r,h=0.0000000001,$fn=100);
    }
  }
}