extends Node2D

var star_scene : PackedScene = preload("res://Loops/star.tscn")
@export var star_count : int = 100

func _ready() -> void:

	for i in star_count:
		var star = star_scene.instantiate()
		add_child(star)

		star.position.x = randf_range(-280, 280)
		star.position.y = randf_range(-150, 150)

		var star_scale = randf_range(0.2, 0.6)
		star.scale.x = star_scale
		star.scale.y = star_scale
