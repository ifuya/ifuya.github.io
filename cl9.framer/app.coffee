CmtBtn.states.a =
	opacity: 1.00
		
CmtBtn.onTapStart (event, layer) ->
	CmtBtn.animate
		opacity: 1.00
		options:
			time: 0.2
			curve: Bezier.ease

CmtBtn.onTapEnd (event, layer) ->
	CmtBtn.animate
		opacity: 0
		options:
			time: 0.2
			curve: Bezier.ease

CmtBtn.onTap (event, layer) ->
	blkmask.animate
		opacity: 0.5

	CmtInput.animate
		y: 433
		options:
			time: 0.6
			curve: Bezier.ease
	Kbd.animate
		y: 560
		options:
			time: 0.6
			curve: Bezier.ease

blkmask = new Layer
	height: 812
	width: 375
	backgroundColor: "rgba(0,0,0,1)"
	opacity: 0.00
blkmask.superLayer = Shot

