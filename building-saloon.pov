#include "colors.inc"
#include "textures.inc"
#include "woods.inc"
/**
10*15 meter grundflaeche, einstoeckig, zweisitige front
giebeldach


**/
#declare saloon = union{
//ground floor
box{<0,0,0><10,0.05,15> texture {T_Wood1}}
box{<0,0,1><9,2,14> texture {T_Wood2}}
//second floor
box{<0,2,0><10,2.05,15> texture {T_Wood1}}
box{<0,2.05,1><9,4,14> texture {T_Wood2}}
box{<0,4,0><10,4.05,15> texture {T_Wood1}}
//sign
box{<0,4,1><9,5.5,1.1> texture {T_Wood1}}
box{<9,5.5,1.1><8.9,4,15> texture {T_Wood1}}

// object{sherifsDoor translate <1.5, 0.05, 0.9>} 

}