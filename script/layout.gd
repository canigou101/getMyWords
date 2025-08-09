extends VBoxContainer

var NbPoints=0
var MultiplicateurDePoints=1

func _on_button_pressed():
	NbPoints+=(1*MultiplicateurDePoints)
	
func afficherPoints(nombre):
	var affichage ="points :"+nombre
	
