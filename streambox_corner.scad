width = 13;
depth = 15;
ridge = 3;
length = 20;
corner = 13;
screw = 3;


difference(){
    cube([width,length,depth]);
    
    translate([0,0,depth/2]) rotate([0,0,45]) cube([corner,corner,depth+1],center=true);
    //translate([length,length/2,depth]) rotate([0,45,0]) cube([corner,length+1,corner],center=true);
    //translate([length/2,length,depth]) rotate([45,0,0]) cube([length+1,corner,corner],center=true);
    //translate([10,10,-1]) cylinder(d=screw,h=depth+2,$fn=30);
}