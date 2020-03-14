$fn=100;

base_width_x = 34;
base_length_y = 12.5;
base_z = 1.5;

hole_x = 8.45; //specsheet says 8.9 USE 8.87
hole_y = 10.75; //specsheet says 10.9 USE 10.87
hole_z = 9;

wall_thickness = 2.2;//specsheet says 2.27 USE 2.29

module tapita()
{
    union()
    {   
        cube([base_width_x, base_length_y, base_z]);
        translate([wall_thickness , base_length_y/2 - hole_y/2 , base_z])
        {
            color([0.5,0.3,0.5]) cube([hole_x, hole_y, hole_z]);
        }
       
         translate([2*wall_thickness + hole_x,  base_length_y/2 - hole_y/2 , base_z])
        {
            color([0.5,0.3,0.3]) cube([hole_x, hole_y, hole_z]);
        }
        
    }
}

tapita();