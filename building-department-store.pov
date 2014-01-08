#include "colors.inc"
#include "textures.inc"
#include "woods.inc"

#include "building-fence.pov"

/**
10*15 meter grundflaeche, zweistoeckig mit balkon, zweiseitige front
flachdach


**/
#declare departmentstore = union{
//ground floor
box{<0,0,0><10,0.05,15> texture {T_Wood1}}
box{<0,0,1><9,2,14> texture {T_Wood2}}
#local fencelength = 0;
#while(fencelength < 15)
object{buildingFenceBlock rotate <0,-90,0> translate <9.9,0.05,fencelength>}
#local fencelength = fencelength + 21;
#end

difference{
union{
#local fencelength = 0;
#while(fencelength < 10)
object{buildingFenceBlock translate <fencelength,0.05,0> pigment {White}}
#local fencelength = fencelength + 1;
#end
}
box{ <3.8, 0, -0.1><6.2, 1.1,10>} 
}
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



}