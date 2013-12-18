/** Basic window to be used a an elleent for the Buildings

*/

#include "colors.inc"  
#include "woods.inc"
       background {color Red}
camera {
location <0.5, 0.5, -3>
   look_at <0.5, 0.5, 0>
//   angle 36
//   rotate y*360*clock
}
light_source { <0, 5, -15> color White}

#macro windowcreation(horizontal_size, vertical_size, vertical_bars, horizontal_bars)
#declare pigment_name = Blue ;
union{

difference{ //Frame
box{
<0,0,0>, <horizontal_size,vertical_size,0.1> pigment { pigment_name}
}
box {
<0.01,0.01,-2>, <horizontal_size - 0.01,vertical_size - 0.01,2> pigment{ pigment_name}
} 
}//end of Frame

#declare step = 1;
#while(step <= vertical_bars)
  #box{ < ((horizontal_size/(vertical_bars + 1)) * step - 0.01),0, 0.04>, < ((horizontal_size/(vertical_bars + 1)) * step + 0.01),vertical_size, 0.06> pigment { pigment_name} }
  #declare step = step + 1;
#end

#declare step = 1;
#while(step <= horizontal_bars)
  #box{ <0, ((vertical_size/(horizontal_bars + 1)) * step - 0.01), 0.04>, <horizontal_size, ((vertical_size/(horizontal_bars + 1)) * step + 0.01), 0.06> pigment {  pigment_name} }
  #declare step = step + 1;
#end
}
#end


object {windowcreation(1,1,5 , 2) rotate <0,0,0>}