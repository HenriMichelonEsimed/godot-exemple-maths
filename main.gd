extends Node2D

@onready var sprite = $Transforms/Sprite

var translation_vector = Vector2(200.0, 100.0)

func _ready():
	var val1:float = 1.0
	var val2 = 2.0
	print(val1 + val2)
	
func _draw():
	draw_line(Vector2.ZERO, translation_vector, Color.RED)

func _on_translate_pressed():
	var t = Transform2D()
	t.origin = translation_vector + sprite.position
	print(t)
	sprite.transform = t
	# ou
	#sprite.transform = sprite.transform.translated(translation_vector)

func _on_rotate_pressed():
	var angle_radiants = 0.5
	var final_rotation = angle_radiants + sprite.rotation
	var t = Transform2D()
	t.origin = sprite.position
	t.x.x = cos(final_rotation)
	t.y.y = cos(final_rotation)
	t.x.y = sin(final_rotation)
	t.y.x = -sin(final_rotation)
	print(t)
	sprite.transform = t
	#sprite.transform = sprite.transform.rotated_local(angle_radiants)

func _on_scale_pressed():
	var scale = Vector2(1.2, 1.1)
	var final_scale = scale + sprite.scale
	var t = Transform2D()
	t.origin = sprite.position
	t.x *= final_scale.x
	t.y *= final_scale.y
	print(t)
	sprite.transform = t
	#sprite.transform = sprite.transform.scaled_local(scale)

