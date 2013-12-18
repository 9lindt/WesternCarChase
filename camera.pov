#include "colors.inc"
#include "textures.inc"

#include "colors.inc"
#include "textures.inc"
#include "woods.inc"


#include "building-department-store.pov"
#include "building-saloon.pov"
#include "building-sheriffs-office.pov"



#macro door(sizex, sizey, elements)
difference{
box{<0,0,0>,<sizex, sizey, 0.01>} //frame
box{<0.1,0,-2>,<sizex-0.1, sizey-0.1, 2>}
texture {T_Wood2}}
#local sizex = sizex - 0.2;
#local sizey = sizey - 0.1;
#local startx = 0.1;
#local starty = 0;
#local cracksize = 0.01;

#local counter = 1;
#while(counter <= elements)
box{ 
<(sizex / elements) * (counter - 1)	+startx + cracksize	,starty,0>,
<(sizex / elements) * (counter)		+startx - cracksize	,sizey ,0>  texture {T_Wood1}} 
#local counter = counter + 1;
#end

#end










background { Black }
camera {
  location <15, 10, -20>
  look_at <8, 5, 0> 
  angle 36
  //rotate y*360*clock
}
light_source { <10, 30, -20> White }  

// object{sherifsOffice}
// object{saloon}
object{departmentstore}

// door( 2,2,3  )