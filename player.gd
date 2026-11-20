extends CharacterBody2D

@export var max_speed: float = 100.0
@export var acceleration: float = 750


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	velocity = velocity.move_toward(direction * max_speed, acceleration * delta)
	
	move_and_slide()
