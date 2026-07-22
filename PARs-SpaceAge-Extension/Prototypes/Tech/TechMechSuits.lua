data:extend({
	{
		type = "technology",
		name = "par-mech-armour-tech-1",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		order = "MechArmour01",
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk1",}},
		prerequisites = {"par-armour-tech-2", "military-science-pack"},
		unit = {
			count = 10000,
			ingredients = {
				{"automation-science-pack", 5},
				{"logistic-science-pack", 5},
				{"military-science-pack", 5},
			},
			time = 10
			
		}
	},
	{
		type = "technology",
		name = "par-mech-armour-tech-2",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		order = "MechArmour02",
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk2" }},
		prerequisites = {"par-armour-tech-4", "par-mech-armour-tech-1", "chemical-science-pack"},
		unit = {
			count = 10000,
			ingredients = {
				{"automation-science-pack", 10},
				{"logistic-science-pack", 10},
				{"chemical-science-pack", 10},
				{"military-science-pack", 10},
			},
			time = 10
		}
	},
	{
		type = "technology",
		name = "par-mech-armour-tech-3",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		order = "MechArmour03",
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk3" }},
		prerequisites = {"par-armour-tech-6", "par-mech-armour-tech-2", "production-science-pack"},
		unit = {
			count = 10000,
			ingredients = {
				{"automation-science-pack", 15},
				{"logistic-science-pack", 15},
				{"chemical-science-pack", 15},
				{"military-science-pack", 15},
				{"production-science-pack", 15},
			},
			time = 10
		}
	},
	{
		type = "technology",
		name = "par-mech-armour-tech-4",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		order = "MechArmour04",
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk4" }},
		prerequisites = {"par-armour-tech-8", "par-mech-armour-tech-3", "utility-science-pack", },
		unit = {
			count = 10000,
			ingredients = {
				{"automation-science-pack", 20},
				{"logistic-science-pack", 20},
				{"chemical-science-pack", 20},
				{"military-science-pack", 20},
				{"production-science-pack", 20},
				{"utility-science-pack", 20},
			},
			time = 10
		}
	},
	{
		type = "technology",
		name = "par-mech-armour-tech-5",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		order = "MechArmour05",
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk5" }},
		prerequisites = {"par-armour-tech-10", "par-mech-armour-tech-4", "space-science-pack"},
		unit = {
			count = 10000,
			ingredients = {
				{"automation-science-pack", 25},
				{"logistic-science-pack", 25},
				{"chemical-science-pack", 25},
				{"military-science-pack", 25},
				{"production-science-pack", 25},
				{"utility-science-pack", 25},
				{"space-science-pack", 25},
			},
			time = 10
		}
	},
})
if mods["space-age"]then
	data:extend({
		{
			type = "technology",
			name = "par-mech-armour-tech-1",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			order = "MechArmour01",
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk1" }},
			prerequisites = {"par-armour-tech-2", "logistic-science-pack", "military-science-pack"},
			unit = {
				count = 10000,
				ingredients = {
					{"automation-science-pack", 5},
					{"logistic-science-pack", 5},
					{"military-science-pack", 5},
				},
				time = 10
			}
		},
		{
			type = "technology",
			name = "par-mech-armour-tech-2",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			order = "MechArmour02",
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk2" }},
			prerequisites = {"par-armour-tech-4", "par-mech-armour-tech-1", "chemical-science-pack", "production-science-pack", "utility-science-pack"},
			unit = {
				count = 10000,
				ingredients = {
					{"automation-science-pack", 10},
					{"production-science-pack", 10},
					{"logistic-science-pack", 10},
					{"chemical-science-pack", 10},
					{"military-science-pack", 10},
					{"utility-science-pack", 10},
				},
				time = 10
			}
		},
		{
			type = "technology",
			name = "par-mech-armour-tech-3",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			order = "MechArmour03",
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk3" }},
			prerequisites = {"par-armour-tech-6", "par-mech-armour-tech-2"},
			unit = {
				count = 10000,
				ingredients = {
					{"electromagnetic-science-pack", 15},
					{"metallurgic-science-pack", 15},
					{"agricultural-science-pack", 15},
					{"production-science-pack", 15},
					{"automation-science-pack", 15},
					{"logistic-science-pack", 15},
					{"chemical-science-pack", 15},
					{"military-science-pack", 15},
					{"utility-science-pack", 15},
					{"space-science-pack", 15},
				},
				time = 10
			}
		},
		{
			type = "technology",
			name = "par-mech-armour-tech-4",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			order = "MechArmour04",
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk4" }},
			prerequisites = {"par-armour-tech-8", "par-mech-armour-tech-3", },
			unit = {
				count = 10000,
				ingredients = {
					{"electromagnetic-science-pack", 20},
					{"metallurgic-science-pack", 20},
					{"agricultural-science-pack", 20},
					{"production-science-pack", 20},
					{"automation-science-pack", 20},
					{"cryogenic-science-pack", 20},
					{"logistic-science-pack", 20},
					{"chemical-science-pack", 20},
					{"military-science-pack", 20},
					{"utility-science-pack", 20},
					{"space-science-pack", 20},
				},
				time = 10
			}
		},
		{
			type = "technology",
			name = "par-mech-armour-tech-5",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			order = "MechArmour05",
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk5" }},
			prerequisites = {"par-armour-tech-10", "par-mech-armour-tech-4"},
			unit = {
				count = 10000,
				ingredients = {
					{"electromagnetic-science-pack", 25},
					{"metallurgic-science-pack", 25},
					{"agricultural-science-pack", 25},
					{"promethium-science-pack", 25},
					{"production-science-pack", 25},
					{"automation-science-pack", 25},
					{"cryogenic-science-pack", 25},
					{"logistic-science-pack", 25},
					{"chemical-science-pack", 25},
					{"military-science-pack", 25},
					{"utility-science-pack", 25},
					{"space-science-pack", 25},
				},
				time = 10
			}
		},
	})
end

