extends Spatial


func _ready():
	pass


func _collide_with_enemy(body):
	if body is PlayBall:
		get_tree().change_scene("res://scenes/EndMenu.tscn")


func _on_coin_start_collect():
	$CoinGetSound.play()
