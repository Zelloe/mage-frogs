extends CharacterBody2D

@export var max_speed := 300.0
@export var acceleration := 1500.0
@export var friction := 1800.0
@export var side: int
var action_up: String
var action_down: String


func _ready():
	if side > 0:
		action_up = "p1_up"
		action_down = "p1_down"
	elif side < 0:	
		action_up = "p2_up"
		action_down = "p2_down"

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis(action_up, action_down)
	var target_velocity := direction * max_speed
	var rate := acceleration if direction != 0.0 else friction
	
	velocity.y = move_toward(velocity.y, target_velocity, rate * delta)
	move_and_slide()
