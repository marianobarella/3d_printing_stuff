$fn=100;

base_width_x = 24.5;
base_length_y = 39.8; // covers up to 6
//base_length_y = 26.8; // covers up to 4, OK
//base_length_y = 13.8; // covers up to 2, OK
base_z = 1;

walls = 1;
height = 4;

module tapita();
{
    union()
    {
    
        cube([base_width_x+walls, base_length_y+walls, base_z]);
        
        translate([0, 0, 0])
        {
            cube([base_width_x + walls, walls, height]);
        }
        
        translate([base_width_x, 0, 0])
        {
            cube([walls, base_length_y + walls, height]);
        }
        
        translate([0, 0, 0])
        {
            cube([walls, base_length_y + walls, height]);
        }
        
    }
}