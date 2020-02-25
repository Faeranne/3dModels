right = 15;
left = 52;
top = 65;
bottom = 15;
overlay = 15;
depth = 9.5;
extension = 15;
height = 3;
corner = 15;

function invert(a) = abs(a-1);

module Corner(side1,side2,spacer){
    difference(){
        cube([side1+extension,side2+extension,(depth*invert(spacer))+height]);
        translate([-1,-1,-1]) cube([overlay+1,overlay+1,(depth*invert(spacer))+(height*spacer)+1+spacer]);
        translate([side1+extension,side2+extension,((depth+height+2)/2)-1]) rotate([0,0,45]) cube([corner,corner,depth+height+2],center=true);
    }
}


mirror() translate([1,1,0]) Corner(left,top,0);
translate([1,1,0]) Corner(right,top,0);
rotate([0,0,180]) translate([1,1,0]) Corner(left,bottom,0);
rotate([0,0,180]) mirror() translate([1,1,0]) Corner(right,bottom,0);