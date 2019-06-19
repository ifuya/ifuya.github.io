###
Step 4
Let’s make our box clickable. Select "Event" in the tools menu (left).
Select "box" and then "click", and watch how the code gets added for you.

Step 5
Next, click on "Animate", pick "Layer", and select "box" again.
You’re now editing your animation.
Change the rotation to 90 using the Animation properties panel (left).

Step 6
Hit "esc" to exit editing mode. In the preview window (right), click on the box.
You've just made your first animation!

Are you stuck? Double click on "Sample Code" below.
###

Box.onClick (event, layer) ->

	Box.animate
		options:
			time: 1
			curve: Bezier.ease
		rotation: 90
	
	


	


