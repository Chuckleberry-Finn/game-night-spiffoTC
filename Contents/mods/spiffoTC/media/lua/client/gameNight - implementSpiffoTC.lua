local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler

local spiffoCards = {
    "DOCTOR", "ELECTRICIAN", "ENGINEER", "FARMER",
    "FIRE OFFICER", "FISHERMAN", "FITNESS INSTRUCTOR",
    "LUMBERJACK", "MECHANIC", "METALWORKER", "NURSE",
    "PARK RANGER", "POLICE OFFICER", "REPAIRMAN",
    "SECURITY GUARD", "UNEMPLOYED", "VETERAN",
    "BURGER FLIPPER", "BURGLAR", "CARPENTER",
    "CHEF", "CONSTRUCTION WORKER"
}
deckActionHandler.addDeck("SpiffoCards", spiffoCards)
gamePieceAndBoardHandler.registerSpecial("Base.SpiffoCards", { applyCards = "applyCardForSpiffo", actions = {examine=true}, examineScale = 1, textureSize = {176,250} })



function applyItemDetails.applyCardForSpiffo(item)
    if not item:getModData()["gameNight_cardDeck"] then

        local stack = ZombRand(3)+1
        local cards = {}

        for i=1, stack do
            local card = spiffoCards[ZombRand(#spiffoCards)+1]
            table.insert(cards, card)
        end

        item:getModData()["gameNight_cardDeck"] = cards
        item:getModData()["gameNight_cardFlipped"] = {}
        for i=1, #cards do item:getModData()["gameNight_cardFlipped"][i] = true end
    end
end