extends CanvasLayer

signal end_menu

func _ready():
	#$MenuControl/EpisodesBtn.disabled = true
	$MenuControl/ConfigurationWindow.get_child(0).hide()
	$MenuAnimation.play("BackgroundChange")


func animation_finished():
	$MenuAnimation.play_backwards("BackgroundChange")
	#$EpisodesBtn.disabled = false

func _on_StartBtn_button_down():
	print("Button clicked")
	emit_signal("end_menu", "access01")
	pass # Replace with function body.

func _on_ConfigBtn_button_down():
	print("Button clicked")
	$MenuControl/ConfigurationWindow.get_child(0).show()
	pass # Replace with function body.
	
func exit_configuration():
	$MenuControl/ConfigurationWindow.get_child(0).hide()

func _on_EpisodesBtn_pressed():
	print("Button clicked")
	emit_signal("end_menu", "episodes_selection")
	pass # Replace with function body.
	
#func _on_EpisodesBtn_button_down():
#	print("Button clicked")
#	emit_signal("end_menu", "episodes_selection")
#	pass # Replace with function body.

func _on_Sair_button_down():
	print("Button clicked")
	emit_signal("end_menu", "quit")
	pass # Replace with function body.
	
func _process(_delta):
	$MainMusic.update("soundtrack")
	
func play_music():
	return $MainMusic
