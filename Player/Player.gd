extends KinematicBody2D


var motion = Vector2()
var speed = 350

func get_input():
	
	#Set up for a controller or keyboard
	if Input.get_action_strength("Down") - Input.get_action_strength("Up") < 0:
		motion.y = -1
	elif  Input.get_action_strength("Down") - Input.get_action_strength("Up") > 0:
		motion.y = 1
		
	if Input.get_action_strength("Right") - Input.get_action_strength("Left") < 0:
		motion.x = -1
	elif  Input.get_action_strength("Right") - Input.get_action_strength("Left") > 0:
		motion.x = 1
		
	motion = motion.normalized()

func _ready():
	pass
	
func _physics_process(delta):
	motion = Vector2.ZERO
	get_input()
	
	if motion != Vector2.ZERO:
		$Sprite.play("moving")
	elif motion == Vector2.ZERO:
		$Sprite.play("default")
	motion = move_and_slide(motion * speed)
