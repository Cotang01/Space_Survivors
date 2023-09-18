extends Node2D

var bullet_scene: PackedScene = preload("res://Scenes/bullets/bullet_01/bullet.tscn")

func _on_metheorite_1_player_met_metheorite(body):
	print("you met metheorite")
	print(body)


func _on_player_shoot_bullet(pos):
	var bullet1 = bullet_scene.instantiate()
	var bullet2 = bullet_scene.instantiate()
	bullet1.position = pos
	bullet2.position = pos
	add_child(bullet1)
	add_child(bullet2)
