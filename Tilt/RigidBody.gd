extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process( true )
	set_max_contacts_reported( 1 ) # Replace with function body.
func _physics_process(delta):
		#print("Test");
	var bodies = get_colliding_bodies()
	for body in bodies:
		
		if body.is_in_group("Good"):
			get_tree().change_scene("res://win.tscn")
			
		elif body.is_in_group("Bad"):
			get_tree().change_scene("res://lose.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
