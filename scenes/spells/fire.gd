extends CharacterBody2D

@export var speed = 32
var side: int
var spawnpos: Vector2

func _ready() -> void:
	global_position = spawnpos

func _process(delta: float) -> void:
	velocity = Vector2(0, -speed)
