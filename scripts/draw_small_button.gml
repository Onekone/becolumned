///draw_small_button(x,y,text,w,state)

draw_set_font(font0) draw_set_halign(fa_center) draw_set_valign(fa_middle)

var text = argument2, _x = argument0, _y = argument1, _w = max(string_width(text),argument3)-40, state = argument4;

draw_sprite_stretched(ui_smallbutton,1+state*3,floor(_x-_w/2),floor(_y-27),floor(_w+2),65);
draw_sprite(ui_smallbutton,0+state*3,floor(_x-_w/2-45),floor(_y-27));
draw_sprite(ui_smallbutton,2+state*3,floor(_x+_w/2),floor(_y-27));

draw_text_colour(_x+2,_y+2,text,0,0,0,0,0.5);
draw_text_colour(_x,_y,text,c_white,c_white,c_white,c_white,1);
