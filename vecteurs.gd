extends Node2D

func _draw_vec(vec:Vector2, color:Color = Color.RED):
	print(vec)
	draw_line(Vector2.ZERO, vec, color)

func _draw():
	var vec1 : Vector2 = Vector2(200.0, 300.0)
	_draw_vec(vec1)
	var vec2 = Vector2(100.0, 200.0)
	_draw_vec(vec2, Color.GREEN)
	var res1 = vec1 + vec2
	_draw_vec(res1, Color.YELLOW)
	var res2 = vec2 / 2
	_draw_vec(res2, Color.VIOLET)
	var res3 = res2.normalized()
	_draw_vec(res3, Color.WHITE)
	
