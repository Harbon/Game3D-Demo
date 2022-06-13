extends Button


func _ready():
	pass


func _on_BtnPlayAgain_pressed():
	get_tree().change_scene("res://scenes/Main.tscn")
