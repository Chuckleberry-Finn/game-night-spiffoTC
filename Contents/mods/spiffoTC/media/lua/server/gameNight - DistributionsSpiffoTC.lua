require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.proceduralDistGameNight.itemsToAdd["SpiffoCards"] = {
    chanceFactor = 0.01,
    perDistFactor = {
        ["ClassroomDesk"] = 0.01,
        ["ClassroomMisc"] = 0.01,
        ["SchoolLockers"] = 0.01,

        ["CrateSpiffoMerch"] = 25,
        ["ServingTrayBurgers"] = 25,
        ["ServingTrayChickenNuggets"] = 25,
        ["ServingTrayFries"] = 25,
        ["ServingTrayOnionRings"] = 25,
    }
}

