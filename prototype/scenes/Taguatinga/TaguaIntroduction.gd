extends CanvasLayer

signal end_taguatinga_introduction
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_StartAudio_timeout():
	emit_signal("start_audio")
	pass # Replace with function body.


func _on_NextButton_button_down():
	emit_signal("end_taguatinga_introduction","Taguatinga")
	pass # Replace with function body.
