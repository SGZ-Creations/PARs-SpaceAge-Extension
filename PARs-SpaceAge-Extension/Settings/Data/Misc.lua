if (mods["space-age"] or mods["mech-armor"]) then
	data:extend({
		{
			type = "bool-setting",
			name = "MechTechFilters",
			setting_type = "startup",
			default_value = true,
			order = "ZAax-9"
		},
	})
end
if mods["space-age"] and mods["incendiary-arsenal"]then
	data:extend({
		{
			type = "bool-setting",
			name = "FireMechTechFilters",
			setting_type = "startup",
			default_value = true,
			order = "ZAax-9"
		},
	})
end