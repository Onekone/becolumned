///draw_checkbox(x,y,text,state)

draw_set_font(font0) draw_set_halign(fa_left) draw_set_valign(fa_middle)

var text = argument2, _x = argument0 div 1, _y = argument1 div 1, state = argument3;

draw_sprite(ui_flag,state,_x,_y);

draw_text_colour(_x+27,_y+2,text,0,0,0,0,0.5);
draw_text_colour(_x+25,_y,text,c_white,c_white,c_white,c_white,1);
