extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y -= -3
	if Input.is_action_just_pressed("fire projectile"):
		go.spawn_instance("Projectile2", self.position.x, self.position.y)
	pass
	
	
	
func area_entered(otherArea):
	if otherArea.name == "ProjectileArea1":
		go.destroy(self)
		
		global.score += 10
		pass
