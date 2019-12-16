extends Spatial

var current_angle = Vector3();
var target_rotation_right = Vector3(0,0,90);
var target_rotation_left = Vector3(0,90,0);
var target_rotation_up = Vector3(0,90,0);
var target_rotation_down = Vector3(0,90,0);
var tiltingRight = false;
export var speed = 0.002;

		
func _process(delta):
	if Input.is_action_pressed("tilt_left"):
		rotation_degrees = Vector3(rotation_degrees.x,rotation_degrees.y,lerp(rotation_degrees.z,target_rotation_right.z,speed))
	if Input.is_action_pressed("tilt_right"):
    	rotation_degrees = Vector3(rotation_degrees.x,rotation_degrees.y,lerp(rotation_degrees.z,-target_rotation_right.z,speed))
	if Input.is_action_pressed("tilt_up"):
    	rotation_degrees = Vector3(lerp(rotation_degrees.x,-target_rotation_right.z,speed),rotation_degrees.y,rotation_degrees.z)
	if Input.is_action_pressed("tilt_down"):
    	rotation_degrees = Vector3(lerp(rotation_degrees.x,target_rotation_right.z,speed),rotation_degrees.y,rotation_degrees.z)


