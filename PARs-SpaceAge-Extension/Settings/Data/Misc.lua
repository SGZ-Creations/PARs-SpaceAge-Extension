if (mods["space-age"] or mods["mech-armor"]) then
	data:extend({
		{
			type = "bool-setting",
			name = "MechMechFilters",
			setting_type = "startup",
			default_value = true,
			order = "ZBaa-9"
		},
	})
end
if mods["metal-and-stars"]then
	data:extend({
		{
			type = "bool-setting",
			name = "PrototypeMechFilters",
			setting_type = "startup",
			default_value = true,
			order = "ZBab-9"
		},
	})
end
if mods["space-age"] and mods["incendiary-arsenal"]then
	data:extend({
		{
			type = "bool-setting",
			name = "FireMechMechFilters",
			setting_type = "startup",
			default_value = true,
			order = "ZBac-9"
		},
	})
end
if mods["RampantArsenalFork"] then
	if (mods["space-age"] or mods["mech-armor"]) then
		data:extend({
			{
				type = "bool-setting",
				name = "RampantArsenalMechFilters",
				setting_type = "startup",
				default_value = true,
				order = "ZBad-9"
			},
		})
	end
end