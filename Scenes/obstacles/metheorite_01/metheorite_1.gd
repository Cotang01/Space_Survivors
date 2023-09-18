extends StaticBody2D


signal player_met_metheorite(body)


func _on_area_2d_body_entered(body):
	player_met_metheorite.emit(body)
