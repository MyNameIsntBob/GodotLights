extends Light2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var playerInArea

const red = Color(1, 0, 0)
const white = Color(1, 1, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var space_state = get_world_2d().direct_space_state
	color = white
	if playerInArea:
		var result = space_state.intersect_ray(position, playerInArea.position, [self])
		if result && result.collider.name == 'Player':
			color = red	
	

func _on_Area2D_body_entered(body):
	if body.name == 'Player':
		playerInArea = body


func _on_Area2D_body_exited(body):
	if body.name == 'Player':
		playerInArea = null
