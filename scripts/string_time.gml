///string_time(frames)

var s = argument0/room_speed;

var h = '';
var m = '';

if s>3600 {
 h = string(s div 3600)+':'
 if s div 60 mod 60 < 10 h = h+'0'
}
if s>60 {
 m = string(s div 60 mod 60)+':'
 if s mod 60 < 10 m = m+'0'
}

return h+m+string_format(s mod 60,1,2)
