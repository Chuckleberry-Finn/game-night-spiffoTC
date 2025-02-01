require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["SpiffoCards"] = {
    rolls = 4,
    perDistFactor = {
        ["ClassroomDesk"] = 0.01,
        ["ClassroomMisc"] = 0.01,
        ["SchoolLockers"] = 0.01,
    }
}

local addToInsert = {"CrateSpiffoMerch","ServingTrayBurgers", "ServingTrayChickenNuggets",
                     "ServingTrayFries", "ServingTrayOnionRings", "SpiffosDiningCounter",
                     "SpiffosKitchenBags", "SpiffosKitchenSpecial",}

for _,contID in pairs(addToInsert) do
    gameNightDistro.proceduralDistGameNight.listsToInsert[contID] = { generalChance = 0, chanceOverride = {["SpiffoCards"] = 10 } }
end



