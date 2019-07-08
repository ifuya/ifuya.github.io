
flow = new FlowComponent
flow.showNext(Screen1)

Screen1.onTap ->
	flow.showNext Screen2
# Screen2.onTap ->
# 	flow.showNext Screen1
#滑动到上一个元素
Screen2.on Events.Tap, ->
	flow.showPrevious()

nav = new Layer
	height: 80
	width: screen.width
	backgroundColor: "white"
flow.header = nav

nav.on Events.Click, ->


#弹层
layer = new Layer
	backgroundColor: "yellow"
	visible: false

flow.showOverlayCenter layer 
	

		


# layer = new Layer

# layer.animate
# 	x: 300
# 	options:
# 		time: 0.50
# 		curve: Bezier.ease
# 		delay: 1.00
# 
# layer.states.a =
# 	x: 100
# 	width: 30
# 	height: 120
# 	opacity: 0.90
# 
# layer.onPan (event, layer) ->
# 	layer.animate "a"
	

		



# # Create the constraints layer
# constraints = new Layer
# 	width: 400
# 	height: 200
# 	x: Align.center
# 	y: Align.center
# 	opacity: 0.5
# 
# # Create the draggable layer
# layer = new Layer
# 	x: Align.center(-100)
# 	y: Align.center
# 
# # Enable dragging, set constraints
# layer.draggable.enabled = true
# layer.draggable.constraints = constraints.frame


# Create layer
# layer = new Layer
# 	x: Align.center
# 	y: Align.center
# 
# # Rotate on click
# layer.onClick ->
# 	layer.animate
# 		rotation: layer.rotation + 90
# 		options:
# 			curve: Spring(damping: 0.5)

