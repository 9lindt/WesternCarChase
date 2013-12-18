#include "colors.inc"
#include "textures.inc"
#include "woods.inc"

#macro door(sizex, sizey, elements)
difference{
box{<0,0,0>,<sizex, sizey, 0.01>} //frame
box{<0.1,0,-2>,<sizex-0.1, sizey-0.1, 2>}
texture {T_Wood2}}
#local sizex = sizex - 0.2;
#local sizey = sizey - 0.1;
#local startx = 0.1;
#local starty = 0;

#local counter = 1;
#while(counter <= elements)
box{ <(sizex / elements) * (counter - 1)+startx ,starty,0>,<(sizex / elements) * counter +startx, sizey, 0>  texture {T_Wood1}} 
#local counter = counter + 1;
#end

#end