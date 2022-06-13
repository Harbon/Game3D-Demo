extends Area
class_name Coin
var timer:Timer

signal coin_collected

signal coin_start_collect

func _ready():
	timer = Timer.new()
	timer.wait_time = 0.4
	timer.connect("timeout", self, "_timeout")
	add_child(timer)
	
	
func _physics_process(delta):
	rotate_y(deg2rad(3))
	
func _timeout():
	emit_signal("coin_collected")
	queue_free()


func _on_Coin_body_entered(body):
	if body is PlayBall:
		emit_signal("coin_start_collect")
		timer.start()
		$AnimationPlayer.play("collecting")
