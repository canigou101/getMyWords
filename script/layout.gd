extends VBoxContainer

var NbPoints=0
var MultiplicateurDePoints=1

func _on_button_pressed():
	NbPoints+=(1*MultiplicateurDePoints)
	afficherPoints(NbPoints)
	
func afficherPoints(nombre):
	var affichage ="points :"+str(nombre)
	$VBoxContainer/HBoxContainer/colonneMain/pointsLettres.set_text(affichage)
