/// @description Insert description here
// You can write your code in this editor
global._score += 10;

audio_play_sound(snd_hurt,1,false);

instance_destroy();

with(other)
{
	instance_destroy();
	
	if(sprite_index == spr_asteroid_med)
	{
		var inst;
		repeat(2)
		{
			inst = instance_create_layer(x,y,"Instances",obj_asteroid);
			inst.sprite_index = spr_asteroid_small;
		}
	}else if(sprite_index == spr_asteroid_huge)
	{
		var inst;
		repeat(2)
		{
			inst = instance_create_layer(x,y,"Instances",obj_asteroid);
			inst.sprite_index = spr_asteroid_med;
		}
	}
	repeat(10)
	{
		instance_create_layer(x,y,"Instances",obj_debris);
	}

}