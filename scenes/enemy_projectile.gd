extends Area2D
var speed=300
var direction=Vector2(0,0)
func _physics_process(delta: float) -> void:
	position+=direction*speed*delta
func set_direction(target):
	direction=position.direction_to(target.position)
