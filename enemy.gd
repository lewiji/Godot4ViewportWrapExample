extends Sprite2D

var speed: float
var count := 0.0

func _ready():
	speed = randf_range(1.0, 11.0)
	$Label.text = str(get_index() + 1)

func _physics_process(delta):
	count += delta
	position.x += sin(count * speed)
	position.y += cos(count * speed)
