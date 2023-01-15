extends Sprite2D

@onready var label: Label = get_node("%PlayerCoords")
var speed := 360.0

func _physics_process(delta):	
	handle_input(delta)
	check_bounds()	
	label.text = "{%d, %d}" % [position.x, position.y]
	
func handle_input(delta: float):
	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
	if Input.is_action_pressed("ui_up"):
		position.y -= speed * delta
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta
		
func check_bounds():
	if position.x > 1152.0:
		warp(Vector2(position.x - 1152.0, position.y))
	elif position.x < 0.0:
		warp(Vector2(1152.0 + position.x, position.y))
	
	if position.y > 648.0:
		warp(Vector2(position.x, position.y - 648.0))
	elif position.y < 0.0:
		warp(Vector2(position.x, 648 + position.y))
	
func warp(pos: Vector2):
	position = pos
	print("warped")
