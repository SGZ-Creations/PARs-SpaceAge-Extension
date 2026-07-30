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
    Recipes["mech-armor"].enabled = false
    Tech["mech-armor"].enabled = false

    Recipes["mech-armor"].hidden = true
    Tech["mech-armor"].hidden = true
    if SS["MechMechFilters"].value then
        Hide_Item("mech-armor")
    end
end

if mods["metal-and-stars"]then
    Tech["prototype-mech-armor"].enabled = false
    Recipes["prototype-mech-armor"].enabled = false

    Recipes["prototype-mech-armor"].hidden = true
    Tech["prototype-mech-armor"].hidden = true
    if SS["PrototypeMechFilters"].value then
        Hide_Item("prototype-mech-armor")
    end
end

if mods["space-age"] and mods["incendiary-arsenal"]then
    Tech["mech-armor-fireproof"].enabled = false
    Recipes["mech-armor-fireproof"].enabled = false

    Recipes["mech-armor-fireproof"].hidden = true
    Tech["mech-armor-fireproof"].hidden = tru
    if SS["FireMechMechFilters"].value then
        Hide_Item("mech-armor-fireproof")
    end
end

if mods["RampantArsenalFork"] then
    if mods["incendiary-arsenal"] and mods["space-age"] then
        Recipes["FireComabatUpgrade"].hidden = true
        Recipes["FireComabatUpgrade"].enabled = false
    end
    if settings.startup["rampant-arsenal-enableEquipment"].value == true then
        if (mods["space-age"] or mods["mech-armor"]) then
            Tech["rampant-arsenal-technology-combat-mech-armor"].enabled = false
            Recipes["combat-mech-armor-rampant-arsenal"].enabled = false

            Recipes["combat-mech-armor-rampant-arsenal"].hidden = true
            Tech["rampant-arsenal-technology-combat-mech-armor"].hidden = true
            if SS["RampantArsenalMechFilters"].value then
                Hide_Item("combat-mech-armor-rampant-arsenal")
            end
        end
    end
end