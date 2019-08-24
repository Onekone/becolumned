/// draw_nine(sprite,x,y,w,h,border)

var spr = argument0, _x = floor(argument1), _y = floor(argument2), _w = floor(argument3), _h = floor(argument4) _border = floor(argument5);

draw_sprite(spr,0,(_x),(_y))
draw_sprite(spr,2,(_x+_w+_border),(_y))
draw_sprite(spr,6,(_x),(_y+_h+_border))
draw_sprite(spr,8,(_x+_w+_border),(_y+_h+_border))
draw_sprite_stretched(spr,1,(_x+_border),(_y),_w,_border)
draw_sprite_stretched(spr,7,(_x+_border),(_y+_h+_border),_w,_border)
draw_sprite_stretched(spr,3,(_x),(_y+_border),_border,_h)
draw_sprite_stretched(spr,5,(_x+_w+_border),(_y+_border),_border,_h)
draw_sprite_stretched(spr,4,(_x+_border),(_y+_border),_w,_h)
