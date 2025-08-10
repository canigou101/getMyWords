extends HBoxContainer

signal estBuyPeint(prix)

var argent=10
var prix=5

func pasDargent():
	if argent<prix:
		$Button.disabled=true
	elif argent>=prix:
		$Button.disabled=false

func actualiserCompte(compte):
	var string="X"+str(compte)
	$Label2.text=string

func _on_button_pressed():
	estBuyPeint.emit(prix)
	prix=int(prix*1.5)
	
	
func _process(delta):
	pasDargent()
