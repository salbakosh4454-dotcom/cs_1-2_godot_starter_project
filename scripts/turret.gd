extends CharacterBody2D
var projectile_scene = preload("res://scenes/enemy_projectile.tscn")
var player=null
var in_range=false
var timer=2
# Track if player is in range, projectile scene, etc.
# Look at "Boolean Variables and State Tracking" documentation

# TODO: Add projectile scene variable
func _process(delta: float) -> void:	
	if in_range==true:
		timer-=1
	if timer<0:
		shoot(player)
		timer=2
	# Look at documentation for shooting logic
	pass
func _ready():
	# TODO: Set up shooting timer
	# Look at "Working with Timers" documentation
	pass



func _on_detection_area_body_exited(body):
	# TODO: Check if the body is the player  
	# Update player detection state
	# Look at "Boolean Variables and State Tracking" documentation
	pass



func shoot(target):
	var projectile= projectile_scene.instantiate()
	projectile.set_direction(target)
	# Create and launch projectile
	projectile.position=position
	get_tree().get_root().add_child(projectile)
	pass

func _on_area_2d_body_entered(body: Node2D) -> void: 
	if body.name=="Player":
		player=body
		in_range=true
	pass # Replace with function body.
