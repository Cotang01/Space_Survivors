extends CharacterBody2D

var can_fire: bool = true
signal shoot_bullet(pos)


# Called every frame
func _process(_delta):
	# movement
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = direction * 300
	move_and_slide()
	
	# shooting with timer delay
	if Input.is_action_pressed("Fire") and can_fire:
		var bullet_markers = $BulletStartPositions.get_children()
		var bullet_marker_left = bullet_markers[0]
		var bullet_marker_right = bullet_markers[1]
		shoot_bullet.emit(bullet_marker_left.global_position)
		shoot_bullet.emit(bullet_marker_right.global_position)
		can_fire = false
		$Timer.start()


func _on_timer_timeout():
	can_fire = true

