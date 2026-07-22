local Recipes = data.raw["recipe"]
local Tech = data.raw["technology"]
local Item = data.raw["item"]
local Armour = data.raw["armor"]
local SS = settings.startup

local function Hide_Item(name)
    local item = Item[name]
    if item then
        item.hidden = true
    end

    local armour_item = Armour[name]
    if armour_item then
        armour_item.hidden = true
    end
    if not (Item or armour_item) then
        log("Could not find "..name)
    end
end


if (mods["space-age"] or mods["mech-armor"])then

    Tech["mech-armor"].enabled = false

    Recipes["mech-armor"].hidden = true

    Tech["mech-armor"].hidden = true

    if SS["MechTechFilters"].value then
        Hide_Item("mech-armor")
    end
end

if mods["space-age"] and mods["incendiary-arsenal"]then

    Tech["mech-armor-fireproof"].enabled = false

    Recipes["mech-armor-fireproof"].hidden = true

    Tech["mech-armor-fireproof"].hidden = true

    if SS["FireMechTechFilters"].value then
        Hide_Item("mech-armor-fireproof")
    end
end


if mods["RampantArsenalFork"] then
    if (mods["space-age"] or mods["mech-armor"]) then
        log(nil)
    end 
end