require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["SpiffoCards"] = {
    perDistFactor = {
        ["ClassroomDesk"] = 0.1,
        ["ClassroomMisc"] = 0.1,
        ["SchoolLockers"] = 0.1,
    }
}

local addToInsert = {"CrateSpiffoMerch","ServingTrayBurgers", "ServingTrayChickenNuggets",
                     "ServingTrayFries", "ServingTrayOnionRings", "SpiffosDiningCounter",
                     "SpiffosKitchenBags", "SpiffosKitchenCounter",}

for _,contID in pairs(addToInsert) do
    gameNightDistro.proceduralDistGameNight.listsToInsert[contID] = { generalChance = 0 }
    gameNightDistro.proceduralDistGameNight.itemsToAdd["SpiffoCards"].perDistFactor[contID] = 5
end



