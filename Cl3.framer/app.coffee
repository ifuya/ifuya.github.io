card1 = new Layer
	x: 100
	y: 100
	backgroundColor: "#443333"
	skewX: 0
	skewY: 0
	rotation: 0
	index: 10
	# card1.center()
	
card2 = new Layer
	backgroundColor: "yellow"
	x: 20
	y: 20
	
#放到同一个父级的最上层
card1.bringToFront()

print card1.index
print card2.index


card3 = new Layer

#可拖动
card3.draggable.enabled = true
#每次只能向一个方向拖动
card3.draggable.directionLock = true
#可拖动范围
card3.draggable.constraints = 
	x: 0
	y: 0
	height: 500
	width: 400
#不可拖出边界
card3.draggable.overdrag = false


#双指缩放
card4 = new Layer
	x: 120
	y: 220 
card4.pinchable.enabled = true
