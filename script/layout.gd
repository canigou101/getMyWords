extends Control

var NbPoints=0
var MultiplicateurDePoints=1
var addCPS=0

func actualiserCompteur():
	%colonneMain.afficherNombre(NbPoints)


func _on_colonne_main_is_press():
	NbPoints+=(1*MultiplicateurDePoints)
	actualiserCompteur()


func _on_timer_timeout():
	NbPoints+=addCPS
	%colonneBoutique.updatethune(NbPoints)
	actualiserCompteur()


func _on_colonne_boutique_prix_minus(prix):
	NbPoints-=prix


func _on_colonne_boutique_liste(dict):
	for valeur in dict.values():
		addCPS+=valeur
