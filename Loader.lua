local MarketplaceService = game:GetService("MarketplaceService")

local games = {
    [6766156863] = {src="https://raw.githubusercontent.com/SheshHub/Main/main/games/Strongman%20Simulator.lua"},
    [6284583030] = {src="https://raw.githubusercontent.com/SheshHub/Main/main/games/Pet%20Simulator%20X.lua"},
    [2512643572] = {src="https://raw.githubusercontent.com/SheshHub/Main/main/games/Bubblegum%20Simulator.lua"},
    [7321682575] = {src="https://raw.githubusercontent.com/SheshHub/Main/main/games/Farm%20Yard%20Simulator.lua"},
    [4058282580] = {src="https://raw.githubusercontent.com/SheshHub/Main/main/games/Boxing%20Simulator.lua"},
  
} 

local check = games[game.PlaceId] 

if check then
    loadstring(game:HttpGet(check.src, true))()
else
    local Players = game:GetService("Players")
    Players.LocalPlayer:Kick(string.format("%s is unsupported.", MarketplaceService:GetProductInfo(game.PlaceId).Name))
end
