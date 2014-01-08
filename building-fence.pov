/**one meter block of fence
**/


#declare buildingFenceBlock = union {

box{<0,0.99,0><1,1, 0.05>}
cylinder{<0.25,0,0.025>,<0.25,0.99,0.025>,0.05}
cylinder{<0.75,0,0.025>,<0.75,0.99,0.025>,0.05}

}

#declare buildingFenceBlockWide = union {

box{<0,0.99,0><2,1, 0.05>}
cylinder{<0.5,0,0.025>,<0.5,0.99,0.025>,0.05}
cylinder{<1.5,0,0.025>,<1.5,0.99,0.025>,0.05}

}