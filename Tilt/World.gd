extends Spatial

var current_angle = Vector3();
var target_rotation_right = Vector3(180,0,0);
var target_rotation_left = Vector3(0,90,0);
var tiltingRight = false;
export var speed = 0.005;

		
func _process(delta):
    if Input.is_action_pressed("tilt_right"):
    	rotation_degrees = Vector3(0,lerp(rotation_degrees.x,target_rotation_right.x,speed),0)



