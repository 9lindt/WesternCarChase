

#local terrainTexture = texture
{
  pigment
  {
    gradient <-0.1,1,0>
    color_map
    {
      [0.00 color rgb<0.325,  0.017, 0.005>]
      [0.22 color rgb<0.605,  0.12, 0.03>]
      [0.44 color rgb<0.805,  0.3,   0.13>]
      [0.54 color rgb<0.825,  0.25,   0.09>]
      [0.74 color rgb<0.725,  0.17,  0.025>]
      [0.80 color rgb<0.725,  0.17,   0.02>]
      [1.00 color rgb<0.625,  0.17,  0.015>]
    }
  }
}
                                                 
/*fog
{
    fog_type   1
    distance   10000
    color      rgb <1.0, 0.6, 0.4>
    fog_offset 0.1
    fog_alt    200
    //turbulence 0.9
}*/

#declare terrain = height_field {
    png "show.png"
    smooth 
    //water_level 0.2
    texture {terrainTexture}
    finish
    {
        ambient .2
        diffuse .6
        //crand 0.1
    }
    translate <-.5, 0.0, -.5>
    scale < 4000.0, 400.0, 4000.0 >
}
