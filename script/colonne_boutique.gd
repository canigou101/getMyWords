extends VBoxContainer

signal liste(dict)
signal prixMinus(prix)
var dic={"peinture":0,"ecriture":0,"crypto":0,"imprimerie":0,"morse":0,"tele":0,"internet":0}


func _on_h_box_container_est_buy_peint(prix):
	dic["peinture"]=+1
	prixMinus.emit(prix)

func updatethune(arg):
	$objets/HBoxContainer.pasDargent(arg)


func _on_timer_timeout():
	liste.emit(dic)
