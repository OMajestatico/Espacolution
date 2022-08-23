if not global.paused{
image_xscale-=hld
image_yscale-=hld
image_angle+=rnd
if image_xscale<=0{
if not global.died{global.points+=1}
instance_destroy()
}
}