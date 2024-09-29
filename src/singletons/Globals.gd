extends Node

const G : float = 6.6743 * pow(10, -2)

var celestialBodies : Array[CelestialBody] = []

func Gravity(body : CelestialBody) -> void:
	for other in celestialBodies:
		if other != body:
			var direction : Vector3 = body.position - other.position
			var distance : float = direction.length()
			var forceMag : float = G * ((body.mass * other.mass) / (distance * distance))
			var force : Vector3 = direction * forceMag
			body.apply_central_force(-force)
	pass
