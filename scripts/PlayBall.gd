extends KinematicBody
class_name PlayBall

const MOVE_SPEED = 12
const ROT_SPEED = 9

var move_vec = Vector3(0,0,0)
var rotate_rad_x = 0
var rotate_rad_z = 0


func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		move_vec.z = 0
	elif Input.is_action_pressed("ui_up"):
		move_vec.z = -MOVE_SPEED
		rotate_rad_x = deg2rad(-ROT_SPEED)
	elif Input.is_action_pressed("ui_down"):
		move_vec.z = MOVE_SPEED
		rotate_rad_x = deg2rad(ROT_SPEED)
	else:
		move_vec.z = lerp(move_vec.z, 0, 0.1)
		rotate_rad_x = lerp(rotate_rad_x, 0, 0.1)
	
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_right"):
		move_vec.x = 0
	elif Input.is_action_pressed("ui_right"):
		move_vec.x = MOVE_SPEED
		rotate_rad_z = deg2rad(-ROT_SPEED)
	elif Input.is_action_pressed("ui_left"):
		move_vec.x = -MOVE_SPEED
		rotate_rad_z = deg2rad(ROT_SPEED)
	else:
		move_vec.x = lerp(move_vec.x, 0, 0.1)
		rotate_rad_z = lerp(rotate_rad_z, 0, 0.1)
		
	$MeshInstance.rotate_x(rotate_rad_x)
	$MeshInstance.rotate_z(rotate_rad_z)
	move_and_slide(move_vec)
