extends VBoxContainer

var tresorie=0
var dic={"peinture":0,"ecriture":0,"crypto":0,"imprimerie":0,"morse":0,"tele":0,"internet":0}


func _on_h_box_container_est_buy_peint(prix):
	dic["pienture"]+=1
