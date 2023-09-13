extends CharacterBody2D

var can_fire: bool = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# movement
	var direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = direction * 300
	move_and_slide()
	
	# shooting
	if Input.is_action_pressed("Fire") and can_fire:
		print("Fire")
		can_fire = false
		$Timer.start()

func _on_timer_timeout():
	can_fire = true
