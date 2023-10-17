extends RigidBody2D

const LIFESPAN = 3.0
const SPEED = 300.0
@onready var timer = get_node("Timer")

func _ready():
	timer.start(LIFESPAN)

func _physics_process(delta):
	position += transform.y * SPEED * delta

func _on_timer_timeout():
	queue_free()
