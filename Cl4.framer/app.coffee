# # card.x = 100
# card.backgroundColor = "red"
# card.props =
# 	x: 200
# 	y: 200
# 	scale:0.5

# card.y = 300
# print card.children[0]
# 
# card.children[1].y = 100


#切换状态
card = new Layer

card.states =
	small:
		x: 100
		y: 200
		scale: 0.6
		backgroundColor: "yellow"
		
	big:
		x: 120
		y: 300
		backgroundColor: "blue"

#切换状态
# card.stateSwitch "small"
card.stateSwitch "default"
# card.stateSwitch "big"

#执行按钮
button = new Layer
	height: 50
	width: 50
	y: 10
	x: Align.right
	backgroundColor: "green"

#执行状态变更	
button.onClick ->
	card.stateCycle "small","big"

	