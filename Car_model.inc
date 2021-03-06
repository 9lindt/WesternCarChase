#include "shapes.inc"

                   
#macro Car_model() 
      
#local Tex_Wheel_Rubber = 
         texture { pigment{ color Gray25 } 
                   normal { bumps 0.5 scale 0.008 }
                   finish { phong 0.2 reflection 0.00}
                 } // end of texture 
#local Tex_Wheel_Metal = 
         texture { Chrome_Metal
                   // pigment{ color rgb<1,0,0>} 
                    normal { bumps 0.5 scale 0.005 } 
                    finish { phong 1}
                 } // end of texture
#local Tex_Car_Seat = 
          texture { pigment{ color rgb< 1, 0.90, 0.85>*1.2  }// very light brown  
                   normal { bumps 0.15 scale 0.05 }
                   finish { phong 1 reflection 0.00}
                 } // end of texture
                 
#local Tex_Chassis_Inside = 
         texture { pigment{ color Gray55 } 
                   normal { bumps 0.25 scale 0.05 }
                   finish { phong 1 reflection 0.00}
                 } // end of texture
                 
#declare Tex_Car_Body = 
         texture{ pigment{ color rgb<1,1,1>*1.2}
                //normal { radial sine_wave frequency 30 scale 0.25 }
                  finish { phong 1}
                 }
                 
#local D = 0.0001;
                 
#local Track = 1.422;
#local Wheelbase = 2.743;
//#local Tire_size = 0.33;
//#local Tire_width = 0.165;
#local Length = 4.613;
#local Width = 1.732;
#local Top = 1.298;
#local Height = 1.198;
#local Ground_clearance = 0.1;

/*
#local Wheel_Scale = 0.85; 
#local Base_Wheel_R = 0.45; 
#local Wheel_R = Wheel_Scale* Base_Wheel_R;
                 
                 
#local Car_Lenght = 5.00; // total length
#local Car_Low = 0.25; // base height
#local Car_Tween = 1.00; // tween height
#local Car_Top = 1.60; // top height
#local Front_X = 0.70; // length over front wheels 
#local Body_H =Car_Top- Car_Low;  
// -----------------------------------------------------------------
#local Half = 0.90; // Halbe Spurweite
#local Z_Over = 0.10; // Halbe Spurweite �berhang
#local Half_Brutto = Half + Z_Over; 
#local Axis_Distance = 3.20; // Achs-Abstand
//--------------------------------------------
#local Chassis_Base_R = 0.15;
*/                 

#local Wheel =                
union{ 
 intersection{
  torus{ 0.25,0.15  rotate<90,0,0> }
  cylinder{ <0,0,-0.12>,<0,0,0.12>, 0.47 texture{Tex_Wheel_Rubber}}
  texture{Tex_Wheel_Rubber}
 }
 sphere{ <0,0,0>,0.4 scale<1,1,0.25> 
          texture {Tex_Wheel_Metal}  
 } 
}


#local Wheel_Space =
union{ cylinder{ <0,0,-0.18>,<0,0,0.18>,0.45}
    texture{Tex_Chassis_Inside}
}

#local Seat = union{ 
 object{ Round_Box(<0.0,-0.085,-0.35>,<0.50,0.075,0.035>, 0.05, 0) }
 object{ Round_Box(<0.0,-0.075,-0.35>,<0.50,0.085,0.350>, 0.05, 0) rotate<0,0,100> }
         texture{Tex_Car_Seat}
       }


#local Wheels = union{
object{ Wheel translate<Wheelbase/2,0.2,- Track/2>} 
object{ Wheel scale<1,1,-1> translate<Wheelbase/2,0.2, Track/2>} 
object{ Wheel translate<- Wheelbase/2,0.2,- Track/2>} 
object{ Wheel scale<1,1,-1> translate<- Wheelbase/2,0.2, Track/2>}
}


#local Wheel_Spaces = union{
object{ Wheel_Space translate<Wheelbase/2,0.2,- Track/2>} 
object{ Wheel_Space scale<1,1,-1> translate<Wheelbase/2,0.2, Track/2>} 
object{ Wheel_Space translate<- Wheelbase/2,0.2,- Track/2>} 
object{ Wheel_Space scale<1,1,-1> translate<- Wheelbase/2,0.2, Track/2>}
}


#local Top_Frame = 
union{      
    
     object{ Round_Box( //------------------------- upper front
        <0,0.5,-Width/2>,<Length/4,Top, Width/2>, 0.15, 0)  
        //scale<1,1,(Half_Brutto-0.05)*1/0.20+D>*0.94
       matrix<1  , 0, 0, //  matrix-shear_y_to_x
           -0.5, 1, 0,
            0  , 0, 1,
            0  , 0, 0>
         translate<0.2,0,0.00> 
         texture {Tex_Car_Body}}
         
       object{ Round_Box( //------------------------- upper front
        <0,0.5,-Width/2>,<Length/4,Top, Width/2>, 0.15, 0)  
        //scale<1,1,(Half_Brutto-0.05)*1/0.20+D>*0.94
       matrix<1  , 0, 0, //  matrix-shear_y_to_x
            0.5, 1, 0,
            0  , 0, 1,
            0  , 0, 0>
         translate<-1.3,0,0.00> 
         texture {Tex_Car_Body}
        
        }  
      
}

#local Car_Inside = 
union{      
    
     object{ Round_Box( //------------------------- upper front
        <0,0.55,-Width/2+.1>,<Length/4,Top, Width/2-.1>, 0.15, 0)  
       scale 0.9
       matrix<1  , 0, 0, //  matrix-shear_y_to_x
           -0.5, 1, 0,
            0  , 0, 1,
            0  , 0, 0>
         translate<0.2,0,0.00> 
         texture {Tex_Chassis_Inside}}
         
       object{ Round_Box( //------------------------- upper front
        <0,0.55,-Width/2+.1>,<Length/4,Top, Width/2-.1>, 0.15, 0)  
        scale 0.9
       matrix<1  , 0, 0, //  matrix-shear_y_to_x
            0.5, 1, 0,
            0  , 0, 1,
            0  , 0, 0>
         translate<-1.2,0,0.00> 
         texture {Tex_Chassis_Inside}}         
        
      
}

#local Body =
union{
object{ Round_Box(<-Length/2,Ground_clearance,-Width/2>,<Length/2,0.85,Width/2>, 0.15, 0) texture{Tex_Car_Body}}
      object{ Top_Frame texture{Tex_Car_Body}}
}

#local Window_Side_Front =
prism { -Width ,Width  , 5
       <-0.80, 0.00>,  // first point
       <-0.03, 0.00>, 
       <-0.26, 0.42>, 
       <-0.80, 0.42>, 
       <-0.80, 0.00>   // last point = first point!!!!
       rotate<-90,0,0> scale<.9,.9,-.9> //turns prism in z direction! Don't change this line! 

       texture { pigment{ color White} 
                 finish { diffuse 0.9 phong 1.0}
               } // end of texture

        translate<0.8,0.75,0>
       }
       
#local Window_Side_Back =
prism { -Width ,Width  , 6
       <-0.85, 0.00>,  // first point
       <-1.52, 0.00>, 
       <-1.52, 0.30>, 
       <-1.42, 0.42>, 
       <-0.85, 0.42>, 
       <-0.85, 0.00>   // last point = first point!!!!
       rotate<-90,0,0> scale<0.9,0.9,-0.9> //turns prism in z direction! Don't change this line! 

       texture { pigment{ color White} 
                 finish { diffuse 0.9 phong 1.0}
               } // end of texture

        translate<.75,.75,0>
       }
       
#local Window_Front_Back =
box{<-Length/4,0.9,-(Width/2)+.05>,<Length/4,Top-0.1,(Width/2)-.15> texture{Tex_Chassis_Inside}}



union{
 object{Wheels}
 //object{Window_Front_Back}
difference{
      //object{ Round_Box(<-Car_Lenght+Front_X,Car_Low,-Half_Brutto>,<Front_X,Car_Tween,Half_Brutto>, 0.15, 0) texture{Tex_Car_Body}}
      object{ Body}
      object{ Car_Inside texture{Tex_Car_Body}}  
      object{Wheel_Spaces}
      object{Window_Side_Front}
      object{Window_Side_Back}
      object{Window_Front_Back}
      
}
}






 
#end