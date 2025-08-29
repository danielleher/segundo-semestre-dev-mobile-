extends Control

func _on_button_pressed() -> void:
	$Label.text = str($OptionButton.get_selected_id())
	if $OptionButton.get_selected_id() == 0:
		$Label.text = str(float($numero1.text) + float($numero2.text))

	elif $OptionButton.get_selected_id() == 1:
		$Label.text = str(float($numero1.text) - float($numero2.text))

	elif $OptionButton.get_selected_id() == 2:
		$Label.text = str(float($numero1.text) / float($numero2.text))

	elif $OptionButton.get_selected_id() == 3:
		$Label.text = str(float($numero1.text) * float($numero2.text))

	else:
		$Label.text = "Selecione uma operação ou os números!"
