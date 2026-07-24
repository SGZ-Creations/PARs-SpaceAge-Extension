local factoriopedia_mech_armor_simulation = { init = [[ game.simulation.camera_zoom = 3.5 game.simulation.camera_position = {0.5, -0.4} local character = game.surfaces[1].create_entity{name = "character", position = {0.5, 0.5}, force = "player", direction = defines.direction.south}character.insert{name = "mech-armor"}]]}
require("__PARs-SpaceAge-Extension__.internal.mech-armor-animations")
local smoke_animations = require("__base__.prototypes.entity.smoke-animations")
local item_sounds = require("__base__.prototypes.item_sounds")
local sounds = require("__base__.prototypes.entity.sounds")
local SS = settings.startup

local MechSuits = {
	{order = "baa", helthbonus = 1000, flight = false, drawings = nil, colisions= nil, inventory_bonus = 100, grid_width = 40, grid_height = 40, durability= SS["MechDurability_01"].value, weightvalue = SS["MechWeight_01"].value, icon = "__PARs-SpaceAge-Extension__/graphics/icons/mech-armor.png"},
	{order = "bab", helthbonus = 2000, flight = false, drawings = nil, colisions= nil, inventory_bonus = 200, grid_width = 60, grid_height = 60, durability= SS["MechDurability_02"].value, weightvalue = SS["MechWeight_02"].value, icon = "__PARs-SpaceAge-Extension__/graphics/icons/mech-armor.png"},
	{order = "bac", helthbonus = 3000, flight = true, drawings = {{-0.4, -2}, {0.4, 0}}, colisions= {{-0.25, -0.25}, {0.25, 0.25}}, inventory_bonus = 300, grid_width = 80, grid_height = 80, durability= SS["MechDurability_03"].value, weightvalue = SS["MechWeight_03"].value, icon = "__PARs-SpaceAge-Extension__/graphics/icons/mech-armor.png"},
	{order = "bad", helthbonus = 4000, flight = true, drawings = {{-0.4, -2}, {0.4, 0}}, colisions= {{-0.25, -0.25}, {0.25, 0.25}}, inventory_bonus = 400, grid_width = 100, grid_height = 100, durability= SS["MechDurability_04"].value, weightvalue = SS["MechWeight_04"].value, icon = "__PARs-SpaceAge-Extension__/graphics/icons/mech-armor.png"},
	{order = "bae", helthbonus = 5000, flight = true, drawings = {{-0.4, -2}, {0.4, 0}}, colisions= {{-0.25, -0.25}, {0.25, 0.25}}, inventory_bonus = 500, grid_width = 120, grid_height = 120, durability= SS["MechDurability_05"].value, weightvalue = SS["MechWeight_05"].value, icon = "__PARs-SpaceAge-Extension__/graphics/icons/mech-armor.png"},
}

local resistances = {
-- Vanilla     		         1,   2,   3,   4,   5,  
    physical_decrease  = { 100, 200, 300, 400, 500},
    physical_percent   = {  50, 150, 200, 250, 300},--p
    acid_decrease      = {   0,   0,   0,   0,   0},
    acid_percent       = { -50, -40, -30, -20, -10},--p
    explosion_decrease = { 200, 400, 600, 800,1000},
    explosion_percent  = {   0,   0,   0,   0,   0},--p
    fire_decrease      = {   0,   0,   0,   0,   0},
    fire_percent       = { 200, 400, 600, 800,1000},--p
    poison_decrease    = {   0,   0,   0,   0,   0},
    poison_percent     = {-500,-400,-300,-200,-100},--p
    electric_decrease  = {  30,  40,  50,  60,  70},
    electric_percent   = {  20,  40,  60,  80, 100},--p
    impact_decrease    = {  50, 100, 150, 200, 250},
    impact_percent     = {   5,  15,  25,  35,  45},--p
    laser_decrease     = { 100, 200, 300, 400, 500},
    laser_percent      = {  40,  80, 120, 160, 200},--p

-- Bobs Warfare          	1,   2,   3,   4,   5,
    plasma_decrease    = { 250, 500, 750,1000,1250},
    plasma_percent     = {   0,   0,   0,   0,   0},--p
    pierce_decrease    = { 100, 200, 300, 400, 500},
    pierce_percent     = {   5,  15,  25,  35,  45},--p

-- Cold_biters
    cold_decrease      = { 50, 100, 150, 200, 250},
    cold_percent       = { 20,  40,  60,  80, 100},--p

-- K2/K2SO
    radiation_decrease = { 100, 200, 300, 400, 500},
    radiation_percent  = {  25,  50,  75, 100, 125},--p
}

for tier, mechsuit in pairs(MechSuits) do
	local equipment_name = "par-mech-armour-mk" .. tier
	local equipment_grid_name = "par-mech-armour-mk" .. tier .. "-equipment-grid"
	local equipment_order = mechsuit.order .. "[par-armour-mk" .. tier .. "]-ab[armour-replacer]"

    ---@type data.ArmorPrototype
	local equipment_mechsuit = {
		type = "armor",
		name = equipment_name,
		icon = mechsuit.icon,
		stack_size = 1,
		subgroup = "PAREXT_MechSuits",
		order = equipment_order,
		equipment_grid = equipment_grid_name, -- disable to removes quality. now make a setting or function that tells if setting = grids H-W 0 then remove grid entirely. make this code at C.A.S to not cause load order issues.
		inventory_size_bonus = mechsuit.inventory_bonus,
		character_health_bonus = mechsuit.helthbonus,
		provides_flight = mechsuit.flight,
		weight = mechsuit.weightvalue,
		collision_box = mechsuit.colisions,
		drawing_box = mechsuit.drawings,
		resistances = {
			{
                type = "physical",
                decrease = resistances.physical_decrease[tier],
                percent = resistances.physical_percent[tier],
            },
            {
                type = "acid",
                decrease = resistances.acid_decrease[tier],
                percent = resistances.acid_percent[tier],
            },
            {
                type = "explosion",
                decrease = resistances.explosion_decrease[tier],
                percent = resistances.explosion_percent[tier],
            },
            {
                type = "fire",
                decrease = resistances.fire_decrease[tier],
                percent = resistances.fire_percent[tier],
            },
            {
                type = "electric",
                decrease = resistances.electric_decrease[tier],
                percent = resistances.electric_percent[tier],
            },
            {
                type = "impact",
                decrease = resistances.impact_decrease[tier],
                percent = resistances.impact_percent[tier],
            },
            {
                type = "laser",
                decrease = resistances.laser_decrease[tier],
                percent = resistances.laser_percent[tier],
            },
            {
                type = "poison",
                decrease = resistances.poison_decrease[tier],
                percent = resistances.poison_percent[tier],
            },
		},
		factoriopedia_simulation = factoriopedia_mech_armor_simulation,
		inventory_move_sound = item_sounds.armor_large_inventory_move,
		pick_sound = item_sounds.armor_large_inventory_pickup,
		drop_sound = item_sounds.armor_large_inventory_move,
		takeoff_sound = {filename = "__PARs-SpaceAge-Extension__/internal/sound/mech-armor-takeoff.ogg", volume = 0.2, aggregation = {max_count = 2, remove = true, count_already_playing = true}},
		landing_sound = {filename = "__PARs-SpaceAge-Extension__/internal/sound/mech-armor-land.ogg", volume = 0.3, aggregation = {max_count = 2, remove = true, count_already_playing = true}},
		flight_sound = {sound={filename = "__PARs-SpaceAge-Extension__/internal/sound/mech-armor-flight.ogg", volume = 0.2}},
		steps_sound =  {
			variations = sound_variations("__PARs-SpaceAge-Extension__/internal/sound/mech-armor-steps-metallic", 5, 0.2),
			advanced_volume_control = default_tile_sounds_advanced_volume_control(),
		},
		moving_sound = {
			variations = sound_variations("__PARs-SpaceAge-Extension__/internal/sound/mech-armor-moves", 10, 0.4),
			advanced_volume_control = default_tile_sounds_advanced_volume_control(),
		},
		open_sound = sounds.armor_open,
		close_sound = sounds.armor_close,
	}

    ---@type data.EquipmentGridPrototype
    local equipment_grid = {
        name = equipment_grid_name,
        type = "equipment-grid",
        equipment_categories = {"armor"},
        width = mechsuit.grid_width,
        height = mechsuit.grid_height,
    }

    if SS["Durability"].value == "ArmourdurabilityOFF" then
        equipment_mechsuit.infinite = true
    elseif SS["Durability"].value == "ArmourDurabilityAll" then
        equipment_mechsuit.durability = SS["SingleArmourDurabilitySetting"].value
    elseif SS["Durability"].value == "ArmourDurabilitySolo" then
        equipment_mechsuit.durability = mechsuit.durability
    end

	if mods["bobenemies"] then
        table.insert(equipment_mechsuit.resistances, {
            type = "bob-plasma",
            decrease = resistances.plasma_decrease[tier],
            percent = resistances.plasma_percent[tier],
        })
        table.insert(equipment_mechsuit.resistances, {
            type = "bob-pierce",
            decrease = resistances.pierce_decrease[tier],
            percent = resistances.pierce_percent[tier],
        })
    end

    if mods["Cold_biters"] then
        table.insert(equipment_mechsuit.resistances, {
            type = "cold",
            decrease = resistances.cold_decrease[tier],
            percent = resistances.cold_percent[tier],
        })
    end

    if (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) then
        table.insert(equipment_mechsuit.resistances, {
            type = "kr-radioactive",
            decrease = resistances.radiation_decrease[tier],
            percent = resistances.radiation_percent[tier],
        })
    end

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
	}

	data:extend({
        equipment_mechsuit,
		equipment_grid,
    })
end