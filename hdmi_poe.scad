hdmi_board_w = 50;
hdmi_board_h = 100;
hdmi_board_hole_diameter = 3;
hdmi_board_hole_center = 5-(hdmi_board_hole_diameter/2);
hdmi_board_hole_center_h_hdmi = 6-(hdmi_board_hole_diameter/2);
difference(){
square([hdmi_board_w,hdmi_board_h]);
translate([hdmi_board_hole_center,hdmi_board_hole_center,0]) circle(d=hdmi_board_hole_diameter);
translate([hdmi_board_w-hdmi_board_hole_center,hdmi_board_hole_center,0]) circle(d=hdmi_board_hole_diameter);
translate([hdmi_board_hole_center,hdmi_board_h-hdmi_board_hole_center_h_hdmi,0]) circle(d=hdmi_board_hole_diameter);
translate([hdmi_board_w-hdmi_board_hole_center,hdmi_board_h-hdmi_board_hole_center_h_hdmi,0]) circle(d=hdmi_board_hole_diameter);
}