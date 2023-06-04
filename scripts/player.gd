extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity") * 0.75

func _physics_process(delta):
	# Add gravity.
	velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("player_jump"):
		velocity.y = JUMP_VELOCITY

	move_and_slide()
