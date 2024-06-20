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
gamePieceAndBoardHandler.registerSpecial("Base.SpiffoCards", { actions = {examine=true}, textureSize = {176,250} })