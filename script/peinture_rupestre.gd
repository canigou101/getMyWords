extends HBoxContainer

signal estBuyPeint(prix)

var argent=0
var prix=5

func pasDargent(arg):
	argent=arg
	if argent<prix:
		$Button.disabled=true
	elif argent>prix:
		$Button.disabled=false

func actualiserCompte(compte):
	var string="X"+str(compte)
	$Label2.text=string

func _on_button_pressed():
	estBuyPeint.emit(prix)
	prix=int(prix*1.2)
	resetButton()
	afficher_Prix()
	
	
func afficher_Prix():
	var string2="Prix :"+str(prix)
	$prix.text=string2

func resetButton():
	$Button.disabled=true
	$Timer.start()
	

func _ready():
	afficher_Prix()
