///draw_large_button(x,y,text,state)

draw_set_font(font0) draw_set_halign(fa_center) draw_set_valign(fa_middle)

var text = argument2, _x = argument0 div 1, _y = argument1 div 1, _w = floor(max(string_width(text),argument3)-40), state = argument4;

draw_sprite_stretched(ui_largebutton,1+state*3,floor(_x-_w/2),floor(_y-34),floor(_w),81);
draw_sprite(ui_largebutton,0+state*3,floor(_x-_w/2-57),floor(_y-34));
draw_sprite(ui_largebutton,2+state*3,floor(_x+_w/2),floor(_y-34));

draw_text_colour(_x+2,_y+2,text,0,0,0,0,0.5);
draw_text_colour(_x,_y,text,c_white,c_white,c_white,c_white,1);
