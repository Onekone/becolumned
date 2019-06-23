/// gem_check(grid,color,x,y,w,h)
///           0    1     2 3 4 5

if argument2 < 0 or argument2 >= argument4 or argument3 < 0 or argument3 >= argument5
    return false;
    
if instance_exists(argument0[argument2,argument3]) {
    if (argument1 == argument0[argument2,argument3].color and argument1 >= 0) {
        argument0[argument2,argument3].checked = true;
    return true;
    }
}

    return false;
