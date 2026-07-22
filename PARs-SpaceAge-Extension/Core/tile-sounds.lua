local tile_sounds = {}
local landing_sounds = {}

landing_sounds.wet = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-wet", 3, 0.6, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.semi_wet = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-semi-wet", 3, 1.0, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.rock = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-rock", 3, 1.0, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.bark = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-bark", 3, 1.0, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.snow = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-snow", 3, 1.0, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.ice = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-ice", 3, 0.5, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.sand = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-sand", 3, 1.0, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.concrete = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-concrete", 3, 1.0, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
landing_sounds.grass = {
  variations = sound_variations("__PARs-SpaceAge-Extension__/Core/sound/mech-armor-land-grass", 3, 1.0, volume_multiplier("main-menu", 2.9)),
  advanced_volume_control = default_tile_sounds_advanced_volume_control(),
}
tile_sounds.landing = landing_sounds;

return tile_sounds;