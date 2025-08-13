extends VBoxContainer

signal addcpsp(x)
signal prixMinus(prix)
var dic={"peinture":0,"ecriture":0,"crypto":0,"imprimerie":0,"morse":0,"tele":0,"internet":0}


func _on_h_box_container_est_buy_peint(prix):
	var x=0
	x=dic["peinture"]
	dic["peinture"]=x+1
	prixMinus.emit(prix)
	%HBoxContainer.actualiserCompte(dic["peinture"])

func updatethune(arg):
	$objets/HBoxContainer.pasDargent(arg)


func _on_timer_timeout():
	var x= addcps(dic)
	addcpsp.emit(x)

func addcps(dic):
	var x=0
	for v in dic.values():
		x+=v
	return x
