/// @description
event_inherited();
	
if !(collision_line(x, y, player.x, player.y, blockParent, true, true)){
	dirMod = 1;
	image_angle = (darctan2(x-player.x, y-player.y));
	gravity = 0.5;
	if (point_distance(x, y, player.x, player.y) < attackTreshold)
	{
	
		if canSword = 1{
			alarm[0] = swordCooldown;
			canSword = 0;
		}
		if (speed > 4) speed--;
		dirMod = spinDir;
	}
	else{
		if (speed > velocity) speed--;
	}
	if (point_distance(x, y, player.x, player.y) < distanceTreshold2){
		dirMod = -1
		if (speed > 3) speed--;
	}
	gravity_direction = image_angle + 90*dirMod;
}
else{
	image_angle += angle_difference(image_angle, newAngle)/180;
	dirMod += 1;
	gravity = 0.2;
	gravity_direction = image_angle + 90;
	if (speed > 3) speed--;
	if angleChanged = 0{
		alarm[5] = 90;
		angleChanged = 1;
	}
}
if place_meeting(x + sign(hspeed)*player.colisionDist, y, blockParent){
	hspeed = 0;
	if dirMod = spinDir alarm[2] = 1;
	if dirMod > 30{
		image_angle +=  irandom_range(90, 270)
		dirMod = 0;
	} 
}
if place_meeting(x, y + sign(vspeed)*player.colisionDist, blockParent){
	vspeed = 0;
	if dirMod = spinDir alarm[2] = 1;
	if dirMod > 30{
		image_angle +=  irandom_range(90, 270)
		dirMod = 0;
	} 
}