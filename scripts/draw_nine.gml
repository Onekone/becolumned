/// draw_nine(sprite,x,y,w,h,border)

var _x = argument1, _y = argument2, _size = argument3, _border = argument4, spr = argument0;

draw_sprite(spr,0,_x,_y)
draw_sprite(spr,2,_x+_size+_border,_y)
draw_sprite(spr,6,_x,_y+_size+_border)
draw_sprite(spr,8,_x+_size+_border,_y+_size+_border)
draw_sprite_stretched(spr,1,_x+_border,_y,_size,_border)
draw_sprite_stretched(spr,7,_x+_border,_y+_size+_border,_size,_border)
draw_sprite_stretched(spr,3,_x,_y+_border,_border,_size)
draw_sprite_stretched(spr,5,_x+_size+_border,_y+_border,_border,_size)
draw_sprite_stretched(spr,4,_x+_border,_y+_border,_size,_size)
