
card = new Layer
	
card.draggable.enabled = true
#摩擦力
card.draggable.momentumOptions =
	friction: 10
#关闭惯性
# card.draggable.momentum = false

#拖动界限
card.draggable.constraints =
	x: 0
	y: 0
	width: 400
	height: 600
#到界限后不回弹
# card.draggable.bounce = false

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
		
#卡片的x值
card.on "change:x", ->
	print card.x
	