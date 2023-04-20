extends Node


class Monster_Base:
	var name
	var attack
	var defense
	var speed
	var attacks = []
	var max_attacks = 4
	var max_health
	var current_health
	var current_level
	
	var mana_max = 100
	var current_mana = 50
	
	func _init():
		print("Monster_Init")
		
		pass
	
	func attack(num, enemy):
		if num > max_attacks - 1 or num < 0:
			
			return
		#Will use a number to initiate an attack
		var a = attacks[num]
		a.power += attack
		var damage = a.calculate_damage()
