extends Control

var score = 0
func _ready():
	$Label2.text = "0"


func _on_coin_collected():
	score += 1
	$Label2.text = String(score)
	if score == 11:
		get_tree().change_scene("res://scenes/WinMenu.tscn")
