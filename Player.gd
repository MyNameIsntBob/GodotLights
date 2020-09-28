extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var moveSpeed : = 3
var movement : = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	movement = Vector2(0, 0)
	
	if Input.is_action_pressed("ui_up"):
		movement.y -= moveSpeed
	if Input.is_action_pressed("ui_down"):
		movement.y += moveSpeed
	
	if Input.is_action_pressed("ui_left"):
		movement.x -= moveSpeed
	if Input.is_action_pressed("ui_right"):
		movement.x += moveSpeed
		
	move_and_collide(movement)
