extends Control

var NbPoints=0
var MultiplicateurDePoints=1


func actualiserCompteur():
	$VBoxContainer/HBoxContainer/colonneMain.afficherNombre(NbPoints)
#


func _on_colonne_main_is_press():
	NbPoints+=(1*MultiplicateurDePoints)
	actualiserCompteur()
