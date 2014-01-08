#include "colors.inc"
#include "textures.inc"
#include "woods.inc"
#include "building-fence.pov"

 // #declare sherifsDoor = door( 2,1.8,2 )


/**
5*5 meter grundflaeche, einstoeckig mit scheriffstern oben drauf


**/
#declare sherifsOffice = union{
//ground floor
box{<0,0,0><5,0.05,5> texture {T_Wood1}}
box{<0,0,1><5,2,5> texture {T_Wood2}}
difference{
union{
  #local fencelength = 0;
  #while(fencelength < 5)
    object{buildingFenceBlock translate <fencelength,0.05,0> pigment {White}}
  #local fencelength = fencelength + 1;
  #end
  }
  box{<1.4,0,-1><3.2,1.5,1>}
  }
//roof element
box{<0,2,0><5,2.05,5> texture {T_Wood1}}
//sign
box{<0,2,1><5,3.5,1.1> texture {T_Wood1}}

// object{sherifsDoor translate <1.5, 0.05, 0.9>} 

}

