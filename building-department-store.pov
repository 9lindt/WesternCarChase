#include "colors.inc"
#include "textures.inc"
#include "woods.inc"

/**
10*15 meter grundflaeche, zweistoeckig mit balkon, zweiseitige front
flachdach


**/
#declare departmentstore = union{
//ground floor
box{<0,0,0><10,0.05,15> texture {T_Wood1}}
box{<0,0,1><9,2,14> texture {T_Wood2}}



//roof
box{<0,2,0><10,2.05,15> texture {T_Wood1}}
difference{

union {
box{
<0,0,0><1.5,5.3,14> rotate < 0,0,-80> translate <0,2,1.001> pigment{White}}
box{<0,0,0><5.3,1.5,14> rotate < 0,0,-10> translate <3.5,1.5,1.001>pigment{White}}
}
box{<-2,0,-1><15,2,14>pigment{White}}
}
//sign
box{<0,2,1><9,3.5,1.1> texture {T_Wood3}}
// object{sherifsDoor translate <1.5, 0.05, 0.9>} 

}