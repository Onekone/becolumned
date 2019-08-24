/// draw_gem(x,y,color,type)

var sec = current_time mod 1000 / 1000;

var _x = argument0, _y = argument1;
var s = spr_gem; i = 0;

switch(argument3) {
    case 1: switch(argument2) {
    case 0: s = spr_gem; i = 0+sec*19.99; break;
    case 1: s = spr_gem; i = 1+sec*19.99; break;
    case 2: s = spr_gem; i = 2+sec*19.99; break;
    case 3: s = spr_gem; i = 3+sec*19.99; break;
    case 4: s = spr_gem; i = 4+sec*19.99; break;
    case 5: s = spr_gem; i = 5+sec*19.99; break;
    case 6: s = spr_gem; i = 6+sec*19.99; break;
    case 7: s = spr_gem; i = 7+sec*19.99; break;
    } break;
    
    default: switch(argument2) {
    case 0: s = spr_gem; i = 0; break;
    case 1: s = spr_gem; i = 1; break;
    case 2: s = spr_gem; i = 2; break;
    case 3: s = spr_gem; i = 3; break;
    case 4: s = spr_gem; i = 4; break;
    case 5: s = spr_gem; i = 5; break;
    case 6: s = spr_gem; i = 6; break;
    case 7: s = spr_gem; i = 7; break;
    }
}


draw_sprite(s,i,_x,_y);
