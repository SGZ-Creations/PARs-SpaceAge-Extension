data:extend({
	{
		type = "technology",
		name = "par-mech-armor-tech-mk1",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk1" }},
		prerequisites = {"par-armour-tech-2"},
		unit = {
			count = 10000,
			ingredients = {
				{"automation-science-pack", 5},
				{"logistic-science-pack", 5},
				{"military-science-pack", 5},
			},
			time = 60
		}
	},
	{
		type = "technology",
		name = "par-mech-armor-tech-mk2",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk2" }},
		prerequisites = {"par-armour-tech-4", "par-mech-armor-tech-mk1"},
		unit = {
			count = 10000,
			ingredients = {
					{"automation-science-pack", 10},
					{"logistic-science-pack", 10},
					{"chemical-science-pack", 10},
					{"military-science-pack", 10},
			},
			time = 60
		}
	},
	{
		type = "technology",
		name = "par-mech-armor-tech-mk3",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk3" }},
		prerequisites = {"par-armour-tech-6", "par-mech-armor-tech-mk2"},
		unit = {
			count = 10000,
			ingredients = {
				{"automation-science-pack", 15},
				{"logistic-science-pack", 15},
				{"chemical-science-pack", 15},
				{"military-science-pack", 15},
				{"production-science-pack", 15},
			},
			time = 60
		}
	},
	{
		type = "technology",
		name = "par-mech-armor-tech-mk4",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk4" }},
		prerequisites = {"par-armour-tech-8", "par-mech-armor-tech-mk3"},
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
			time = 60
		}
	},
	{
		type = "technology",
		name = "par-mech-armor-tech-mk5",
		icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
		icon_size = 256,
		effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk5" }},
		prerequisites = {"par-armour-tech-10", "par-mech-armor-tech-mk4"},
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
			time = 60
		}
	},
})
if mods["space-age"]then
	data:extend({
		{
			type = "technology",
			name = "par-mech-armor-tech-mk1",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk1" }},
			prerequisites = {"par-armour-tech-2"},
			unit = {
				count = 10000,
				ingredients = {
					{"automation-science-pack", 5},
					{"logistic-science-pack", 5},
					{"military-science-pack", 5},
				},
				time = 60
			}
		},
		{
			type = "technology",
			name = "par-mech-armor-tech-mk2",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk2" }},
			prerequisites = {"par-armour-tech-4", "par-mech-armor-tech-mk1"},
			unit = {
				count = 10000,
				ingredients = {
					{"automation-science-pack", 10},
					{"logistic-science-pack", 10},
					{"chemical-science-pack", 10},
					{"military-science-pack", 10},
					{"space-science-pack", 10},
				},
				time = 60
			}
		},
		{
			type = "technology",
			name = "par-mech-armor-tech-mk3",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk3" }},
			prerequisites = {"par-armour-tech-6", "par-mech-armor-tech-mk2"},
			unit = {
				count = 10000,
				ingredients = {
					{"electromagnetic-science-pack", 15},
					{"production-science-pack", 15},
					{"automation-science-pack", 15},
					{"logistic-science-pack", 15},
					{"chemical-science-pack", 15},
					{"military-science-pack", 15},
					{"utility-science-pack", 15},
					{"space-science-pack", 15},
				},
				time = 60
			}
		},
		{
			type = "technology",
			name = "par-mech-armor-tech-mk4",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk4" }},
			prerequisites = {"par-armour-tech-8", "par-mech-armor-tech-mk3"},
			unit = {
				count = 10000,
				ingredients = {
					{"electromagnetic-science-pack", 20},
					{"production-science-pack", 20},
					{"automation-science-pack", 20},
					{"cryogenic-science-pack", 20},
					{"logistic-science-pack", 20},
					{"chemical-science-pack", 20},
					{"military-science-pack", 20},
					{"utility-science-pack", 20},
					{"space-science-pack", 20},
				},
				time = 60
			}
		},
		{
			type = "technology",
			name = "par-mech-armor-tech-mk5",
			icon = "__PARs-SpaceAge-Extension__/graphics/technology/mech-armor.png",
			icon_size = 256,
			effects = {{type = "unlock-recipe", recipe = "par-mech-armour-recipe-mk5" }},
			prerequisites = {"par-armour-tech-10", "par-mech-armor-tech-mk4"},
			unit = {
				count = 10000,
				ingredients = {
					{"electromagnetic-science-pack", 25},
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
				time = 60
			}
		},
	})
end

