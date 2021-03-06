#version 3.7;

#include "colors.inc"  
#include "textures.inc"
#include "terrain.inc"
#include "skies.inc"
#include "building-saloon.pov"    
#include "building-department-store.pov"
#include "building-sheriffs-office.pov"
#include "building-welcome-sign.pov"
#include "Car_model.inc" 

/*Antialias_Recursion=3
Antialias_Jitter=1.0*/

#declare car_cam = camera {
    location  <0.5, 1, 0>
    look_at   <5 , 1 , 0>
    //right x*image_width/image_height
    angle 75
}
#declare car_cam_side = camera {
    location  <0.35, 0.9, -0.4>
    look_at   <0.35 , 0.9 , -5>
    //right x*image_width/image_height
    angle 75
}
#declare village_cam_front = camera {
        location  <1180.0 , 160.0 , -945.0>
        look_at   <1180.0 , 145.0 , -910.0>
        //right x*image_width/image_height
        angle 75 
}
#declare village_cam = camera {
        location  <1200.0 , 1000.0 , -925.0>
        look_at   <1185.0 , 145.0 , -900.0>
        //right x*image_width/image_height
        angle 75 
}
#declare village_cam_road = camera {
        //location  <1200.0 , 145.0 , -920.0>
        location  <1185.0 , 145.0 , -920.0>
        look_at   <1185.0 , 145.0 , -900.0>
        //right x*image_width/image_height
        //angle 75 
}

camera {village_cam}
//camera {car_cam}

light_source{<1750,2000,-2500> color White}

sky_sphere {
    S_Cloud2
    scale 1

}

#local height = 142.7;

object{terrain}
object{
    saloon
    scale 1
    translate <1170, height, -910>  
}
object{
    departmentstore
    scale 1 
    rotate <0,90,0>
    translate <1190,height, -900>  
}
object{
    sherifsOffice
    scale 1
    translate <1163,height, -910>  
}
object{ 
    buildingWelcomeSign
    rotate <0,38,0>
    scale 7.5
    translate <1188,height, -901>
}

//camera{car_cam_side rotate y*90 translate <1183,height+0.15, -900>}
object{Car_model() scale 1.5 rotate y*130 translate <1183,height+0.25, -915>}
