extends Node2D

var camera1: Camera2D
var camera2: Camera2D
var camera3: Camera2D
var camera4: Camera2D

var timerCounter = 0

func _ready() -> void:
	camera1 = get_node("Camera2D1")
	camera2 = get_node("Camera2D2")
	camera3 = get_node("Camera2D3")
	camera4 = get_node("Camera2D4")


func _physics_process(delta: float) -> void:
	timerCounter += delta
	if(int(timerCounter) == 1):
		switchCamera1()
	if(int(timerCounter) == 2):
		switchCamera2()
	if(int(timerCounter) == 3):
		switchCamera3()
	if(int(timerCounter) == 4):
		switchCamera4()
		timerCounter = 0
	


func switchCamera1() -> void:
	camera1.current = true;

func switchCamera2() -> void:
	camera2.current = true;

func switchCamera3() -> void:
	camera3.current = true;

func switchCamera4() -> void:
	camera4.current = true;
