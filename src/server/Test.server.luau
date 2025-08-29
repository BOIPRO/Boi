local ReplicatedStorage = game:GetService("ReplicatedStorage")
--!strictly
local Shared = ReplicatedStorage:WaitForChild("Shared")
local leaderstats = require(Shared.leaderstats)
local Players = game:GetService("Players")
local myleaderstats
Players.PlayerAdded:Connect(function(player)
    myleaderstats = leaderstats.new(player)
    myleaderstats:AddCoins(100)
    myleaderstats:AddRolls(20)
    myleaderstats:AddSpped(20)
    wait(5)
    myleaderstats:AddCoins(200)
    myleaderstats:AddRolls(40)
    myleaderstats:AddSpped(20)
end)




