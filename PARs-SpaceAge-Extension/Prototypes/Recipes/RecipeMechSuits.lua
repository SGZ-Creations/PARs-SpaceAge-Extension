data:extend({
	{
		type = "recipe",
		name = "par-mech-armor-mk1",
		main_product = "par-mech-armour-mk1",
		enabled = false,
		energy_required = 60,
		ingredients ={
			{type = "item", name = "par-armour-mk2", amount = 1},
			{type = "item", name = "advanced-circuit", amount = 100},
			{type = "item", name = "battery", amount = 100},
		},
		results = {{type="item", name="par-mech-armor-mk1", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armor-mk2",
		main_product = "par-mech-armour-mk2",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type = "item", name = "par-mech-armour-mk1", amount = 1},
			{type = "item", name = "par-armour-mk4", amount = 1},
			{type = "item", name = "processing-unit", amount = 100},
			{type = "item", name = "low-density-structure", amount = 100},
		},
		results = {{type="item", name="par-mech-armor-mk2", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armor-mk3",
		main_product = "par-mech-armor-mk3",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type = "item", name = "par-mech-armour-mk2", amount = 1},
			{type = "item", name = "armour-control-unit", amount = 500},
			{type = "item", name = "par-armour-mk6", amount = 1},
			{type = "item", name = "processing-unit", amount = 100},
			{type = "item", name = "low-density-structure", amount = 100},
		},
		results = {{type="item", name="par-mech-armor-mk3", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armor-mk4",
		main_product = "par-mech-armor-mk4",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type = "item", name = "par-mech-armour-mk3", amount = 1},
			{type = "item", name = "par-armour-mk8", amount = 1},
			{type = "item", name = "armour-control-unit", amount = 1000},
			{type = "item", name = "processing-unit", amount = 100},
			{type = "item", name = "low-density-structure", amount = 100},
		},
		results = {{type="item", name="par-mech-armor-mk4", amount=1}}
	},
	{
		type = "recipe",
		name = "par-mech-armor-mk5",
		main_product = "par-mech-armor-mk5",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type = "item", name = "par-mech-armour-mk4", amount = 1},
			{type = "item", name = "par-armour-mk10", amount = 1},
			{type = "item", name = "armour-control-unit", amount = 2000},
			{type = "item", name = "processing-unit", amount = 100},
			{type = "item", name = "low-density-structure", amount = 100},
		},
		results = {{type="item", name="par-mech-armor-mk5", amount=1}}
	},
})
if mods["space-age"]then
	data:extend({
		{
			type = "recipe",
			name = "par-mech-armor-mk1",
			main_product = "par-mech-armor-mk1",
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type = "item", name = "par-armour-mk2", amount = 1},
				{type = "item", name = "processing-unit", amount = 100},
				{type = "item", name = "low-density-structure", amount = 100},
			},
			results = {{type="item", name="par-mech-armor-mk1", amount=1}}
		},
		{
			type = "recipe",
			name = "par-mech-armor-mk2",
			main_product = "par-mech-armor-mk2",
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type = "item", name = "par-mech-armour-mk1", amount = 1},
				{type = "item", name = "par-armour-mk4", amount = 1},
				{type = "item", name = "processing-unit", amount = 100},
				{type = "item", name = "low-density-structure", amount = 100},
			},
			results = {{type="item", name="par-mech-armor-mk2", amount=1}}
		},
		{
			type = "recipe",
			name = "par-mech-armor-mk3",
			main_product = "par-mech-armor-mk3",
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type = "item", name = "par-mech-armour-mk2", amount = 1},
				{type = "item", name = "armour-control-unit", amount = 500},
				{type = "item", name = "par-armour-mk6", amount = 1},
				{type = "item", name = "processing-unit", amount = 100},
				{type = "item", name = "low-density-structure", amount = 100},
			},
			results = {{type="item", name="par-mech-armor-mk3", amount=1}}
		},
		{
			type = "recipe",
			name = "par-mech-armor-mk4",
			main_product = "par-mech-armor-mk4",
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type = "item", name = "par-mech-armour-mk3", amount = 1},
				{type = "item", name = "par-armour-mk8", amount = 1},
				{type = "item", name = "armour-control-unit", amount = 1000},
				{type = "item", name = "processing-unit", amount = 100},
				{type = "item", name = "low-density-structure", amount = 100},
			},
			results = {{type="item", name="par-mech-armor-mk4", amount=1}}
		},
		{
			type = "recipe",
			name = "par-mech-armor-mk5",
			main_product = "par-mech-armor-mk5",
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type = "item", name = "par-mech-armour-mk4", amount = 1},
				{type = "item", name = "par-armour-mk10", amount = 1},
				{type = "item", name = "armour-control-unit", amount = 2000},
				{type = "item", name = "quantum-processor", amount = 2000},
				{type = "item", name = "low-density-structure", amount = 2000},
			},
			results = {{type="item", name="par-mech-armor-mk5", amount=1}}
		},
	})
end