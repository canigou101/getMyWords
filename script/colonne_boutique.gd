extends VBoxContainer


signal item(prix)

func _on_h_box_container_est_buy_peint(prix):
	item.emit(prix)
