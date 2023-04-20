extends Node


class Attacks_Base:
	var name
	var power
	var accuracy
	var id
	var mana_needed
	
	
	func calculate_damage(enemy):
		var diff = power-enemy.defense
		if diff < 0:
			diff = 1
			
		return diff
			
	func calculate_attack_buff(monster, actually):
		monster.attack += power * actually
		
	func calculate_defense_buff(monster, actually):
		monster.defense += power * actually
	
	func calculate_speed_buff(monster, actually):
		monster.speed += power * actually

	func 
