layer = new Layer
	x: 100
	y: 80
	width: 160
	height: 160
	backgroundColor: "rgba(170,212,96,1)"


layer.onClick (event, layer) ->layer.animate
	y: 600
	backgroundColor: "rgba(225,181,77,1)"
	rotation: 360
	options:
		time: 1
		curve: Spring

	
	