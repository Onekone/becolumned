/// match_check( gem , grid, stackDelete, w,h )
///              0      1      2          3 4
var gem = argument0;
var grid = argument1;
var delSt = argument2;
var w = argument3;
var h = argument4;
var _x = gem.gridX;
var _y = gem.gridY;
var __x = gem.x;
var __y = gem.y;

var _i = 1;
var left = 0, right = 0, up = 0, down = 0, ld=0,lu=0,rd=0,ru=0;

_i = 1; while(gem_check(grid,gem.color,_x-_i,_y,w,h)) {  _i+=1; left+=1;} 
_i = 1; while(gem_check(grid,gem.color,_x+_i,_y,w,h)) {  _i+=1; right+=1;}
_i = 1; while(gem_check(grid,gem.color,_x,_y-_i,w,h)) {  _i+=1; up+=1;}
_i = 1; while(gem_check(grid,gem.color,_x,_y+_i,w,h)) { _i+=1; down+=1;}

_i = 1; while(gem_check(grid,gem.color,_x-_i,_y-_i,w,h)) {  _i++; lu++;}
_i = 1; while(gem_check(grid,gem.color,_x+_i,_y-_i,w,h)) {  _i++; ru++;}
_i = 1; while(gem_check(grid,gem.color,_x-_i,_y+_i,w,h)) {  _i++; ld++;}
_i = 1; while(gem_check(grid,gem.color,_x+_i,_y+_i,w,h)) {  _i++; rd++;}

if left+right >= 2
 for(i = -left; i <= right; i+=1) { ds_stack_push(delSt,grid[_x+i,_y])  }
if up+down>=2
 for(i = -up;   i <= down; i+=1)    { ds_stack_push(delSt,grid[_x,_y+i]) }
if lu+rd>=2
 for(var i = -lu; i <= rd; i++)  {  ds_stack_push(stackDelete,grid[_x+i,_y+i])}
if ld+ru>=2
 for(var i = -ld; i <= ru; i++)  {  ds_stack_push(stackDelete,grid[_x+i,_y-i])}
