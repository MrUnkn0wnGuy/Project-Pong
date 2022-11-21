extends KinematicBody2D

export var speed = 300 
var screen_size

var velocity = Vector2()

func _is_ready():
	screen_size = get_viewport_rect().size

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("player2_move_up"):
		print ("Player2 moves up!")
		velocity.y -= 1
	if Input.is_action_pressed("player2_move_down"):
		print ("Player2 moves down!")
		velocity.y += 1
	velocity = velocity.normalized() * speed
	
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
