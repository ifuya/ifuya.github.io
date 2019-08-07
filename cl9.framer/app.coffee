MainScreen.clip = true

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

blkmask = new Layer
	width: 375
	height: 812
	opacity: 0
	backgroundColor: "rgba(0,0,0,1)"
	visible: false
	
blkmask.superLayer = Shot

blkmask.states =
	show:
		opacity: 0.5
		animationOptions:
			time: 0.5
			curve: Bezier.ease
		


CmtBtn.onTap (event, layer) ->
	blkmask.visible = true
	blkmask.ignoreEvents = false
	blkmask.animate("show")
	CmtInput.animate
		y: 433
		options:
			time: 0.5
			curve: Bezier.ease
	Kbd.animate
		y: 560
		options:
			time: 0.51
			curve: Bezier.ease



blkmask.onTap (event, layer) ->
# 	if this.states.current == "show"
# 		print "hi"
	blkmask.animate("default")
	blkmask.ignoreEvents = true
	
	CmtInput.animate
		y: 812
		options:
			time: 0.5
			curve: Bezier.ease

	Kbd.animate
		y: 812
		options:
			time: 0.35
			curve: Bezier.ease

CmtInput.on Events.Click, ->
Kbd.on Events.Click, ->