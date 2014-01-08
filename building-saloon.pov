#include "colors.inc"
#include "textures.inc"
#include "woods.inc"
#include "building-fence.pov"
/**
10*15 meter grundflaeche, einstoeckig, zweisitige front
giebeldach


**/
#declare saloon = union{
//ground floor
box{<0,0,0><10,0.05,15> texture {T_Wood1}}
box{<0,0,1><9,2,14> texture {T_Wood2}}
difference{
union{
#local floorlevel = 0;
#while(floorlevel < 2)
  #local fencelength = 0;
  #while(fencelength < 15)
    object{buildingFenceBlock rotate <0,-90,0> translate <9.9,0.05 + (floorlevel * 2),fencelength>}
  #local fencelength = fencelength + 1;
  #end
  #local floorlevel = floorlevel + 1;
 #end
}


box{<9,0,6.8> <11,1.5,8.2>}
}
difference{
union{

#local floorlevel = 0;
#while(floorlevel < 2)
#local fencelength = 0;
  #while(fencelength < 10)
    object{buildingFenceBlock translate <fencelength,(0.05 + (floorlevel * 2)) ,0> pigment {White}}
    #local fencelength = fencelength + 1;
  #end
  #local floorlevel = floorlevel + 1;
#end
}
box{ <3.8, 0, -0.1><6.2, 1.1,10>} 
}
//second floor
box{<0,2,0><10,2.05,15> texture {T_Wood1}}
box{<0,2.05,1><9,4,14> texture {T_Wood2}}
box{<0,4,0><10,4.05,15> texture {T_Wood1}}
//sign
box{<0,4,1><9,5.5,1.1> texture {T_Wood1}}
box{<9,5.5,1.1><8.9,4,15> texture {T_Wood1}}

// object{sherifsDoor translate <1.5, 0.05, 0.9>} 

}