/// @description

with(instance_create_layer(x, y + 10, "GameLayer", arrow)){
	image_angle = other.image_angle;
	velo = other.shootVelo;
	whoShoot = "archer";
}
alarm[4] = arrowCooldown;