extends Control

var money: int = 0
var money_per_race: int = 10

@onready var money_label = $MoneyLabel
@onready var race_button = $RaceButton

func _ready():
	race_button.pressed.connect(on_race_button_pressed)
	update_ui()

func on_race_button_pressed():
	money += money_per_race
	update_ui()

func update_ui():
	money_label.text = "Money: $" + str(money)
