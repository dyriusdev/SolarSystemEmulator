class_name CelestialBody extends RigidBody3D

@export var initialVelocity : Vector3 = Vector3.ZERO
@export var isSun : bool = false

func _ready() -> void:
	linear_velocity = initialVelocity
	Globals.celestialBodies.append(self)
	pass

func _physics_process(_delta : float) -> void:
	if !isSun:
		Globals.Gravity(self)
	else:
		linear_velocity = Vector3.ZERO
	pass
