local tile_sounds = require("__PARs-SpaceAge-Extension__/internal/tile-sounds")
local Tiles = data.raw["tile"]

Tiles["water-shallow"].landing_steps_sound = tile_sounds.landing.wet
Tiles["grass-1"].landing_steps_sound = tile_sounds.landing.grass
Tiles["grass-2"].landing_steps_sound = tile_sounds.landing.grass
Tiles["grass-3"].landing_steps_sound = tile_sounds.landing.grass
Tiles["grass-4"].landing_steps_sound = tile_sounds.landing.grass
Tiles["dry-dirt"].landing_steps_sound = tile_sounds.landing.sand
Tiles["dirt-1"].landing_steps_sound = tile_sounds.landing.sand
Tiles["dirt-2"].landing_steps_sound = tile_sounds.landing.sand
Tiles["dirt-3"].landing_steps_sound = tile_sounds.landing.sand
Tiles["dirt-4"].landing_steps_sound = tile_sounds.landing.sand
Tiles["dirt-5"].landing_steps_sound = tile_sounds.landing.sand
Tiles["dirt-6"].landing_steps_sound = tile_sounds.landing.sand
Tiles["dirt-7"].landing_steps_sound = tile_sounds.landing.sand
Tiles["sand-1"].landing_steps_sound = tile_sounds.landing.sand
Tiles["sand-2"].landing_steps_sound = tile_sounds.landing.sand
Tiles["sand-3"].landing_steps_sound = tile_sounds.landing.sand
Tiles["red-desert-0"].landing_steps_sound = tile_sounds.landing.sand
Tiles["red-desert-1"].landing_steps_sound = tile_sounds.landing.sand
Tiles["red-desert-2"].landing_steps_sound = tile_sounds.landing.sand
Tiles["red-desert-3"].landing_steps_sound = tile_sounds.landing.sand
Tiles["nuclear-ground"].landing_steps_sound = tile_sounds.landing.sand
Tiles["stone-path"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["lab-dark-1"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["lab-dark-2"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["lab-white"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["tutorial-grid"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["concrete"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["hazard-concrete-left"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["hazard-concrete-right"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["refined-concrete"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["refined-hazard-concrete-left"].landing_steps_sound = tile_sounds.landing.concrete
Tiles["refined-hazard-concrete-right"].landing_steps_sound = tile_sounds.landing.concrete

-- Required to load space-travel feature flag without space age
if not Tiles["empty-space"] then
	local empty_space = table.deepcopy(Tiles["out-of-map"])
	empty_space.name = "empty-space"
	data:extend{empty_space}
end