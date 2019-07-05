card = new Layer
	backgroundColor: "red"

#直接写运动变化
# card.animate
# 	x: 100
# 	y: 100
# 	scale: 0.3
# 	backgroundColor: "red"
# 	options: 
# 		time: 1
# 		curve: Spring(damping: 0.4)
		

#通过状态变更写运动
card.states.small =
	x: 300
	y: 200
	backgroundColor: "yellow"
	
card.states.animationOptions =
		time: 1
		curve: Spring(damping: 0.4)
		
# card.animate "small"

cardAnimation = new Animation card,
	x: 100
	y: 300
	backgroundColor: "green"
	
cardAnimation.start()



