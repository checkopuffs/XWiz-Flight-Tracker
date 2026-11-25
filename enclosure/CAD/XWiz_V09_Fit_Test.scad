// XWiz Flight Tracker V0.9 - preliminary fit gauges, mm
// Set part to "display" or "board", F6, export STL.
part = "display";
$fn = 120;
board_w = 30.5;
board_l = 72;
board_frame = 3;
board_z = 2.4;
display_pocket = 39.5;
display_opening = 33.6;
display_z = 2.8;
lip = 1.0;
tab_w = 26;
module board_gauge() {
  difference() {
    linear_extrude(board_z) offset(r=2) offset(delta=-2)
      square([board_w+2*board_frame,board_l+2*board_frame],center=true);
    translate([0,0,-.1]) linear_extrude(board_z+.2)
      square([board_w,board_l],center=true);
  }
}
module display_gauge() {
  difference() {
    linear_extrude(display_z) offset(r=5) offset(delta=-5)
      square([50,58],center=true);
    translate([0,4,-.1]) cylinder(d=display_opening,h=display_z+.2);
    translate([0,4,lip]) cylinder(d=display_pocket,h=display_z-lip+.1);
    // Open relief for the connector tab and solder joints, away from the glass.
    translate([-tab_w/2,-30,-.1]) cube([tab_w,17,display_z+.2]);
    translate([-tab_w/2,-13,lip]) cube([tab_w,6,display_z-lip+.1]);
  }
}
if(part=="display") display_gauge();
if(part=="board") board_gauge();
