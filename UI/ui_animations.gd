extends AnimationPlayer


func _on_spy_phone_focus_entered() -> void:
	play("phone_hover")


func _on_spy_phone_focus_exited() -> void:
	play_backwards("phone_hover")
