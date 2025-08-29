--Phuc dep trai nhat vu tru nay
local leaderstats = {}
leaderstats.__index = leaderstats
function leaderstats.new(player)
    local self = setmetatable({},leaderstats)
    local myleaderstats = Instance.new("Folder")
    myleaderstats.Name = 'leaderstats'
    myleaderstats.Parent = player
    self.LeaderstasFolder = myleaderstats
    self.Coins = self:CreateValue("Coins")
    self.Rolls = self:CreateValue("Rolls")
    self.Speed = self:CreateValue("Speed")
    return self
end

function leaderstats:CreateValue(name)
    local NumberValue = Instance.new("NumberValue")
    NumberValue.Name = name
    NumberValue.Parent = self.LeaderstasFolder
    return NumberValue
end

function leaderstats:PrintCoins()
    return self.Coins.Value
end
function leaderstats:AddCoins(number)
    self.Coins.Value += number
end
function leaderstats:AddRolls(number)
    self.Rolls.Value += number
end
function leaderstats:AddSpped(number)
    self.Speed.Value += number
end

return leaderstats
