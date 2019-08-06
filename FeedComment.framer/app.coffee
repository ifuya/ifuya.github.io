
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

