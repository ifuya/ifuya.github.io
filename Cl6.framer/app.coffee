card = new Layer

button = new Layer
	height: 80
	width: 80
	borderRadius: "50%"
	y: Align.bottom
	backgroundColor: "blue"
	
button2 = new Layer
	height: 80
	width: 80
	borderRadius: "50%"
	y: Align.bottom
	x: Align.right
	backgroundColor: "green"
	
button.onClick ->
	card.animate 
		backgroundColor: "red"
		
#缩放
button2.onClick ->
	card.animate
		scale: 0.5
		