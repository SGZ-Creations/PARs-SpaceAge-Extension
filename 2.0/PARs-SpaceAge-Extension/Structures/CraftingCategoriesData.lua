---------------------------------------------------------New Categories----------------------------------------------------------------------
data:extend({
	{
		type = "recipe-category",
		name = "par-electronic-hands"
	},
	{
		type = "recipe-category",
		name = "par-electronics"
	}
})
--------------------------------------------------Hands & Assemblers------------------------------------------------------------------------
	table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "par-electronic-hands")
	table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "par-electronic-hands")
	table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "par-electronic-hands")
	table.insert(data.raw["character"]["character"].crafting_categories, "par-electronic-hands")

	if mods["pypostprocessing"] then
		table.insert(data.raw["assembling-machine"]["automated-factory-mk01"].crafting_categories, "par-electronic-hands")
		table.insert(data.raw["assembling-machine"]["automated-factory-mk02"].crafting_categories, "par-electronic-hands")
		table.insert(data.raw["assembling-machine"]["automated-factory-mk03"].crafting_categories, "par-electronic-hands")
		table.insert(data.raw["assembling-machine"]["automated-factory-mk04"].crafting_categories, "par-electronic-hands")
	end

	if mods["space-age"] then
		table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "par-electronic-hands")
	end

	if (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) then
		table.insert(data.raw["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories, "par-electronic-hands")
	end
----------------------------------------------------Assemblers Only---------------------------------------------------------------------------
	table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "par-electronics")
	table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "par-electronics")
	table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "par-electronics")

	if mods["pypostprocessing"] then
		table.insert(data.raw["assembling-machine"]["automated-factory-mk01"].crafting_categories, "par-electronics")
		table.insert(data.raw["assembling-machine"]["automated-factory-mk02"].crafting_categories, "par-electronics")
		table.insert(data.raw["assembling-machine"]["automated-factory-mk03"].crafting_categories, "par-electronics")
		table.insert(data.raw["assembling-machine"]["automated-factory-mk04"].crafting_categories, "par-electronics")
	end

	if mods["space-age"] then
		table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "par-electronics")
	end

	if (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) then
		table.insert(data.raw["assembling-machine"]["kr-advanced-assembling-machine"].crafting_categories, "par-electronics")
	end