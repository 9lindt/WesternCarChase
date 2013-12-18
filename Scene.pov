#version 3.7;

global_settings {assumed_gamma 1.0 }
global_settings { ambient_light rgb<1, 1, 1> }
#default{ finish{ ambient 0.1 diffuse 0.9 }}

#include "colors.inc"
#include "textures.inc"
//#include "metals.inc"

background { color Cyan }

camera {
location <2, 1, -6>
look_at <0, 0, 0>

}                    

light_source { <200, 200, -100> color White shadowless}


/*
#declare Car_Body_Texture = 
         texture{ pigment{ color rgb<1,1,1>*1.2}
                //normal { radial sine_wave frequency 30 scale 0.25 }
                  finish { phong 1}
                 }

#declare Car_Top_Texture = 
         texture { pigment{ color rgb< 1, 0.95, 0.95>*1.1  } // very light red  
                // normal { bumps 0.5 scale 0.05 }
                   finish { diffuse 0.9 phong 1 reflection 0.00}
                 } // end of texture 
 
#declare Car_Inside_Texture=
          texture { pigment{ color rgb< 1, 0.87, 0.75>  }// very light brown  
                // normal { bumps 0.5 scale 0.05 }
                   finish { phong 1 reflection 0.00}
                 } // end of texture 

 
#declare Bumper_Metal_Texture = 
         texture { Polished_Chrome
                   // pigment{ color rgb<1,0,0>} 
                   finish {   phong 1}
                 } // end of texture 

                 
*/
                 
#include "Car_model.inc"

object{ Car_model()}







