extends Control
@onready var timer_label: Label = $TimerLabel

var elapsed_time: float = 0.0

func _process(delta: float) -> void:
	elapsed_time += delta  # soma o tempo real de cada frame

	var minutes = int(elapsed_time / 60)
	var seconds = int(elapsed_time) % 60
	var tenths = int(elapsed_time * 100) % 100  # décimos de segundo

	timer_label.text = str(minutes).pad_zeros(2) + ":" \
		+ str(seconds).pad_zeros(2) + ":" \
		+ str(tenths).pad_zeros(2)
