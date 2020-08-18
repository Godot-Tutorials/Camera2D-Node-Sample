# Naive Implementation!
# If you never intend to move the Camera with the player,
# have the code inside a different script that is attached
# to the Camera2D Node directly

extends Node2D

var camera: Camera2D
enum MOVE_TEST { CAMERA, PLAYER }
var state: int


func _ready() -> void:
	# Edit state to see different camera effects
	# PLAYER: move the player and camera follows
	# CAMERA: move the camera, player stays still
	state = MOVE_TEST.PLAYER
	camera = get_node("Camera2D")
	
	# set the current camera to true w/ raw code
	# 2 options to do this
	# camera.current = true  # option 1
	# camera.make_current() # option 2
	
	# set the current camera to false w/ raw code
	# 2 options to do this
	# camera.current = false # option 1
	# camera.clear_current() # option 2


func _physics_process(delta: float) -> void:
	if(state == MOVE_TEST.CAMERA):
		self.camera.position.x += 100 * delta
	if(state == MOVE_TEST.PLAYER):
		self.position.x += 100 * delta
