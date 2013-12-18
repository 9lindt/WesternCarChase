/* a sign welcoming all visitors to our wonderfull little town


*/
#include "colors.inc"
#include "textures.inc"
#include "woods.inc"


#declare buildingWelcomeSign = union {

//left pole
cylinder{ < 0,0,0>,<0,2,0>,0.1 texture { T_Wood1}}


//right pole
cylinder{ < 2,0,0>,<2,2,0>,0.1 texture { T_Wood1}}

intersection{
box{<0.1,1,0>,<1.9,3,0.01> texture { T_Wood1}}
cylinder{ <1,1,1>,<1,1,-1>, 1.4 texture { T_Wood5}}
}

text {
    ttf "Ahronbd.TTF" "Wel ome to" 0.1, 0
    pigment { Red }
  scale 1.5  scale 0.18 translate <0.3,1.8, -0.01>} 
  text {
    ttf "Ahronbd.TTF" "Povil" 0.1, 0
    pigment { Yellow }
  scale 1.5  scale 0.3 translate <0.5,1.3, -0.01>}    
  
text {
    ttf "Ahronbd.TTF" "population: 1 idiot" 0.1, 0
    pigment { Red }
  scale 1  scale 0.18 translate <0.3,1.1, -0.01>} 

}  

