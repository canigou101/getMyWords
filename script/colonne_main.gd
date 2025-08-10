extends VBoxContainer

signal isPress()


func _on_button_pressed():
	isPress.emit()

func afficherNombre(NbLettres):
	var string="nombre de points lettres: "+str(NbLettres)
	$pointsLettres.text=string

func _ready():
	$pointsLettres.text="nombre de points lettres: 0"
