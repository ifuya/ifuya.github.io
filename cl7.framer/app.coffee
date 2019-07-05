#事件遮挡
# layer1 = new Layer
# 	backgroundColor: "green"
# 	
# layer2 = new Layer
# 	backgroundColor: "yellow"
# 	size: 100
# 	
# layer1.onTap ->
# 	print "layer1111"
# 	
# layer2.onTap ->
# 	print "layer2222"

#事件冒泡：子层级的触发事件将传到父级
parentBox = new Layer
	backgroundColor: "red"
	
sonBox = new Layer
	backgroundColor: "blue"
	size: 100
	x: 240
	parent: parentBox
	
sonBox.onTap ->
	print "son"
	
#阻止事件冒泡
# sonBox.onTap (event) ->
# 	event.stopPropagation()
# 	print "son"

parentBox.onTap ->
	print "parent"
