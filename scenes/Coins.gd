extends Area

var timer
func _ready():
	timer = Timer.new()
	timer.time_left = 0.7
	timer.connect("timeout", self, "_timeout")
	add_child(timer)
	
	
func _physics_process(delta):
	rotate_y(deg2rad(3))
	
func _timeout():
	queue_free()
	
