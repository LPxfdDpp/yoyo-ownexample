/// @description Insert description here
// You can write your code in this editor
global._lives -= 1;

audio_play_sound(snd_die,1,false);
instance_destroy();

with(obj_game)
{
	alarm[1] = room_speed;
}

repeat(10)
{
	instance_create_layer(x,y,"Instances",obj_debris);
}