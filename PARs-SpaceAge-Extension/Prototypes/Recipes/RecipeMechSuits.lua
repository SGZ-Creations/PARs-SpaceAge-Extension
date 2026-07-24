data:extend({
	{
		type = "recipe",
		name = "par-mech-armour-recipe-mk1",
		main_product = "par-mech-armour-mk1",
		categories = {"par-electronic-hands"},
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type="item",name="electronic-circuit", amount=500},
			{type="item",name="par-armour-mk2", amount=1},
			{type="item",name="battery", amount=500},
		},
		results = {{type="item", name="par-mech-armour-mk1", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armour-recipe-mk2",
		main_product = "par-mech-armour-mk2",
		categories = {"par-electronic-hands"},
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type="item",name="par-armour-mk4", amount=1},
			{type="item",name="advanced-circuit", amount=1000},
			{type="item",name="par-mech-armour-mk1", amount=1},
			{type="item",name="electric-engine-unit", amount=1000},
		},
		results = {{type="item", name="par-mech-armour-mk2", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armour-recipe-mk3",
		main_product = "par-mech-armour-mk3",
		categories = {"par-electronics"},
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type = "item", name = "par-armour-mk6", amount = 1},
			{type = "item", name = "processing-unit", amount = 1500},
			{type = "item", name = "par-mech-armour-mk2", amount = 1},
			{type = "item", name = "armour-control-unit", amount = 1500},
			{type = "item", name = "low-density-structure", amount = 1500},
		},
		results = {{type="item", name="par-mech-armour-mk3", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armour-recipe-mk4",
		main_product = "par-mech-armour-mk4",
		categories = {"par-electronics"},
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type = "item", name = "par-armour-mk8", amount = 1},
			{type = "item", name = "processing-unit", amount = 2000},
			{type = "item", name = "par-mech-armour-mk3", amount = 1},
			{type = "item", name = "armour-control-unit", amount = 2000},
			{type = "item", name = "low-density-structure", amount = 2000},
		},
		results = {{type="item", name="par-mech-armour-mk4", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armour-recipe-mk5",
		main_product = "par-mech-armour-mk5",
		categories = {"par-electronics"},
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type = "item", name = "par-armour-mk10", amount = 1},
			{type = "item", name = "processing-unit", amount = 2500},
			{type = "item", name = "par-mech-armour-mk4", amount = 1},
			{type = "item", name = "armour-control-unit", amount = 2500},
			{type = "item", name = "low-density-structure", amount = 2500},
		},
		results = {{type="item", name="par-mech-armour-mk5", amount=1}}
	},
})
if mods["space-age"]then
	data:extend({
		{
			type = "recipe",
			name = "par-mech-armour-recipe-mk1",
			main_product = "par-mech-armour-mk1",
			categories = {"par-electronic-hands"},
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type="item",name="electronic-circuit",amount=500},
				{type="item",name="par-armour-mk2",amount=1},
				{type="item",name="battery", amount=500},
			},
			results = {{type="item", name="par-mech-armour-mk1", amount=1}}
		},
		{
			type = "recipe",
			name = "par-mech-armour-recipe-mk2",
			main_product = "par-mech-armour-mk2",
			categories = {"par-electronic-hands"},
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type="item",name="par-armour-mk4", amount=1},
				{type="item",name="advanced-circuit", amount=1000},
				{type="item",name="par-mech-armour-mk1", amount=1},
				{type="item",name="electric-engine-unit", amount=1000},
			},
			results = {{type="item", name="par-mech-armour-mk2", amount=1}}
		},
		{
			type = "recipe",
			name = "par-mech-armour-recipe-mk3",
			main_product = "par-mech-armour-mk3",
			categories = {"par-electronics"},
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type="item", name="par-armour-mk6", amount=1},
				{type="item", name="par-mech-armour-mk2", amount=1},
				{type="item", name="armour-control-unit", amount=1500},
				{type="item", name="tungsten-carbide", amount=1500},
				{type="item", name="tungsten-plate", amount=1500},
				{type="item", name="supercapacitor", amount=1500},
				{type="item", name="superconductor", amount=1500},
				{type="item", name="holmium-plate", amount=1500},
				{type="item", name="lithium-plate", amount=1500},
				{type="item", name="carbon-fiber", amount=1500},
			},
			results = {{type="item", name="par-mech-armour-mk3", amount=1}}
		},
		{
			type = "recipe",
			name = "par-mech-armour-recipe-mk4",
			main_product = "par-mech-armour-mk4",
			categories = {"par-electronics"},
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type="item",name="par-armour-mk8",amount=1},
				{type="item",name="par-mech-armour-mk3",amount=1},
                {type="item", name="armour-control-unit", amount=2000},
                {type="item", name="quantum-processor", amount=2000},
                {type="item", name="tungsten-carbide", amount=2000},
                {type="item", name="tungsten-plate", amount=2000},
                {type="item", name="supercapacitor", amount=2000},
                {type="item", name="superconductor", amount=2000},
                {type="item", name="holmium-plate", amount=2000},
                {type="item", name="lithium-plate", amount=2000},
                {type="item", name="carbon-fiber", amount=2000},
                --fluids
                {type="fluid", name="electrolyte", amount=2000},
                {type="fluid", name="fluoroketone-cold", amount=2000},
			},
			results = {
				{type="item", name="par-mech-armour-mk4", amount=1},
				{type="fluid", name="fluoroketone-hot", amount=1500},
			}
		},
		{
			type = "recipe",
			name = "par-mech-armour-recipe-mk5",
			main_product = "par-mech-armour-mk5",
			categories = {"par-electronics"},
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type="item", name="par-armour-mk10", amount=1},
				{type="item", name="par-mech-armour-mk4", amount=1},
                {type="item", name="armour-control-unit", amount=2500},
                {type="item", name="quantum-processor", amount=2500},
                {type="item", name="tungsten-carbide", amount=2500},
                {type="item", name="tungsten-plate", amount=2500},
                {type="item", name="supercapacitor", amount=2500},
                {type="item", name="superconductor", amount=2500},
                {type="item", name="holmium-plate", amount=2500},
                {type="item", name="lithium-plate", amount=2500},
                {type="item", name="carbon-fiber", amount=2500},
                --fluids
                {type="fluid", name="electrolyte", amount=2500},
                {type="fluid", name="fluoroketone-cold", amount=2500},
			},
			results = {
				{type="item", name="par-mech-armour-mk5", amount=1},
				{type="fluid", name="fluoroketone-hot", amount=2000},
			}
		},
	})
end