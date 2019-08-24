ini_open('options.ini');
global.options_debug = ini_read_real('options', 'debug', false);
show_debug_overlay(global.options_debug);
global.options_adebug = ini_read_real('options', 'adebug', false);
audio_debug(global.options_adebug);

window_set_fullscreen(ini_read_real('options','fullscreen',false));

global.options_controller_id = -1;
global.options_input_kb[0] = vk_left

global.options_scoreboard_pos[0] = ini_read_real('options', 'normal_score_x', 528)
global.options_scoreboard_pos[1] = ini_read_real('options', 'normal_score_y', 144)
global.options_nextboard_pos[0] = ini_read_real('options', 'normal_next_x', 1296)
global.options_nextboard_pos[1] = ini_read_real('options', 'normal_next_y', 168)

global.options_blitz_scoreboard_pos[0] = ini_read_real('options', 'blitz_score_x', 520)
global.options_blitz_scoreboard_pos[1] = ini_read_real('options', 'blitz_score_y', 124)
global.options_blitz_nextboard_pos[0] = ini_read_real('options', 'blitz_next_x', 1296)
global.options_blitz_nextboard_pos[1] = ini_read_real('options', 'blitz_next_y', 198)

for(var i=0;i<8;i++) {
    global.badges[i,1] = ini_read_real('badges_stats',i,0)
    global.badges[i,0] = ini_read_real('badges_rank',i,-1)
}
ini_close();
