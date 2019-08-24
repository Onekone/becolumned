///MOD_LoadSong(filename, repeat_count)

var _success = 0;
var _filename = argument0;
var _repeat_count = argument1;
var _queue_index = noone;

// Create a gme instance if it does not exist
if(!instance_exists(obj_mod_player))
  instance_create(0, 0, obj_mod_player);
  
// Load the song
with(obj_mod_player)
{
  // Stop and clear the audio queue
  if(snd_queue != noone) {
    audio_stop_sound(snd_queue);
    audio_free_play_queue(snd_queue);
  }
  
  // Create a new play queue
  snd_queue = audio_create_play_queue(buffer_s16, sample_rate, audio_stereo);
  
  // Set the local queue index variable
  _queue_index = snd_queue;
  
  // Reset playing variables
  playing = false;
  end_reached = false;
  
  // Unload possible previous mod
  if(buffer_mod != noone) {
    ModPlug_Unload();
    buffer_delete(buffer_mod);
  }
  
  // Clear buffers used for the audio queue
  for(var i=0; i<buffer_count; i++)
    buffer_fill(buf[i], 0, buffer_u8, 0, buffer_size);
    
  // Load the song to a buffer
  buffer_mod = buffer_load(_filename);
  
  // Get the pointer to the buffer
  buffer_mod_address = string(buffer_get_address(buffer_mod));
  
  // Get the buffer size
  buffer_mod_size = buffer_get_size(buffer_mod);
  
  // Load the buffer as a song in the extension
  _success = ModPlug_Load(_repeat_count, buffer_mod_size, buffer_mod_address);
}
  
// Return the index to the sound queue or noone if loading failed
if(_success)
  return _queue_index;
else
  return noone;
