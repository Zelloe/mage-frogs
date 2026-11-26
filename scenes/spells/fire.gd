extends Area2D

@export var speed = 8
@export var movement: GDScript
var direction: Vector2 = Vector2.RIGHT

#func _ready() -> void:
#	if movement.side < 0:
#		direction = Vector2.LEFT
#	elif movement.side > 0:
#		direction = Vector2.RIGHT
	
func _physics_process(delta: float) -> void:
	position += speed * direction
	
func destroy():
	queue_free()
