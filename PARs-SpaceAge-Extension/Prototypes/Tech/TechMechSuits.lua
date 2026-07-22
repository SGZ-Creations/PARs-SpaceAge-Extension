data:extend({
	{
		type = "technology",
		name = "mech-armor",
		icon = "__mech-armor__/graphics/technology/mech-armor.png",
		icon_size = 256,
		effects = {{type = "unlock-recipe", recipe = "mech-armor" }},
		prerequisites = {"power-armor-mk2", "fission-reactor-equipment"},
		unit = {
			count = 5000,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 60
		}
	},
})