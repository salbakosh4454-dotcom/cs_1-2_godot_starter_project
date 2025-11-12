extends Node


func _on_body_entered(body):
	if body.name=="Player":
		self.queue_free()
	
	
	
	# TODO: Print a message when the coin is collected
	
	
	
	# TODO: Remove the coin from the game
	
	
