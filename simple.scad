$fn=150;

shaft_diameter = 14;
shaft_length = 50;
//shaft_cut_width = 5;
//shaft_cut_depth = 7;

outer_diameter = 35;
outer_length = 85;

phase_height = 3;
phase_ratio = 0.9;

difference(){
    // body
    union(){
        h = outer_length - phase_height * 2;
        translate([0,0,phase_height])
            cylinder(d=outer_diameter, h=h);
        // top phase
        translate([0,0,h + phase_height])
            cylinder(d1=outer_diameter, d2 = outer_diameter * phase_ratio, h=phase_height);
        // bottom phase
        cylinder(d2=outer_diameter, d1 = outer_diameter * phase_ratio, h=phase_height);
    }
    // hol for the shaft
    cylinder(d=shaft_diameter, h=shaft_length);
}