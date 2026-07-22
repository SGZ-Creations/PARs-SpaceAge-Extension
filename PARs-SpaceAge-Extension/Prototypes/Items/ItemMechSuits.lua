require("__PARs-SpaceAge-Extension__.Structures.mech-armor-animations")
local smoke_animations = require("__base__.prototypes.entity.smoke-animations")

local item_sounds = require("__base__.prototypes.item_sounds")
local sounds = require("__base__.prototypes.entity.sounds")

local factoriopedia_mech_armor_simulation = {
init = [[
		game.simulation.camera_zoom = 3.5
		game.simulation.camera_position = {0.5, -0.4}
		local character = game.surfaces[1].create_entity{name = "character", position = {0.5, 0.5}, force = "player", direction = defines.direction.south}
		character.insert{name = "mech-armor"}
	]]
}
data:extend{
	{
		type = "equipment-grid",
		name = "huge-equipment-grid",
		width = 10,
		height = 12,
		equipment_categories = {"armor"}
	},
	{
		resistances = {
			{
				type = "physical",
				decrease = 10,
				percent = 50
			},
			{
				type = "acid",
				decrease = 0,
				percent = 70
			},
			{
				type = "explosion",
				decrease = 60,
				percent = 50
			},
			{
				type = "fire",
				decrease = 10,
				percent = 70
			}
		},
		type = "armor",
		name = "mech-armor",
		icon = "__PARs-SpaceAge-Extension__/graphics/icons/mech-armor.png",
		subgroup = "armor",
		order = "f[mech-armor]",
		factoriopedia_simulation = factoriopedia_mech_armor_simulation,
		inventory_move_sound = item_sounds.armor_large_inventory_move,
		pick_sound = item_sounds.armor_large_inventory_pickup,
		drop_sound = item_sounds.armor_large_inventory_move,
		stack_size = 1,
		infinite = true,
		equipment_grid = "huge-equipment-grid",
		inventory_size_bonus = 50,
		character_health_bonus = 1000,
		provides_flight = true,
		takeoff_sound = {filename = "__PARs-SpaceAge-Extension__/sound/mech-armor-takeoff.ogg", volume = 0.2, aggregation = {max_count = 2, remove = true, count_already_playing = true}},
		landing_sound = {filename = "__PARs-SpaceAge-Extension__/sound/mech-armor-land.ogg", volume = 0.3, aggregation = {max_count = 2, remove = true, count_already_playing = true}},
		flight_sound = {sound={filename = "__PARs-SpaceAge-Extension__/sound/mech-armor-flight.ogg", volume = 0.2}},
		steps_sound =  {
			variations = sound_variations("__PARs-SpaceAge-Extension__/sound/mech-armor-steps-metallic", 5, 0.2),
			advanced_volume_control = default_tile_sounds_advanced_volume_control(),
		},
		moving_sound = {
			variations = sound_variations("__PARs-SpaceAge-Extension__/sound/mech-armor-moves", 10, 0.4),
			advanced_volume_control = default_tile_sounds_advanced_volume_control(),
		},
		collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
		drawing_box = {{-0.4, -2}, {0.4, 0}},
		open_sound = sounds.armor_open,
		close_sound = sounds.armor_close,
		weight = 1*tons
	},
	smoke_animations.trivial_smoke
	{
		name = "mech-armor-smoke",
		color = {r = 0.5, g = 0.5, b = 0.5, a = 0.5},
		duration = 50,
		spread_duration = 50,
		fade_in_duration = 10,
		fade_away_duration = 40,
		start_scale = 0.1,
		end_scale = 0.3
	},
}