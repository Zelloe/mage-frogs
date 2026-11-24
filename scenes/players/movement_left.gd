extends CharacterBody2D

@export var max_speed := 300.0
@export var acceleration := 1500.0
@export var friction := 1800.0

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("press_w", "press_s")
	var target_velocity := direction * max_speed
	var rate := acceleration if direction != 0.0 else friction
	
	velocity.y = move_toward(velocity.y, target_velocity, rate * delta)
	move_and_slide()
