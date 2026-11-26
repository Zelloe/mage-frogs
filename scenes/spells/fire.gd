extends Area2D

@export var speed = 350
var direction: Vector2 = Vector2.RIGHT

func _physics_process(delta: float) -> void:
	position += speed * direction * delta

func _on_body_entered(body):
	if body is CharacterBody2D:
		body.queue_free()
		queue_free()
