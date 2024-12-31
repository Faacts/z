--] Boot [--
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SRVRHOLDER/alphax/main/lib.lua"))()

--] Window [--
local Window = Library:CreateWindow('AlphaX', 'Dragon Soul', 'Welcome to AlphaX!', 'rbxassetid://0', false, 'AlphaX', 'Default')

--] Locals [--
local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char:WaitForChild("Humanoid")
local farm = false

--] Tabs [--

local Home = Window:CreateTab('Home', true, 'rbxassetid://0', Vector2.new(484, 44), Vector2.new(36, 36))

local Farm = Window:CreateTab('Farm', true, 'rbxassetid://0', Vector2.new(484, 44), Vector2.new(36, 36))

--] Sections [--

local Level = Farm:CreateSection('Level Farm')

-- Toggles [--
local Toggle_Farm = Level:CreateToggle('Fast Farm (OP)', false, Color3.fromRGB(0, 125, 255), 0.25, function(newvalue)
    farm = newvalue
    if farm == true then
        Library:CreateNotification('Warn', 'Wait some time..', 5)
    end

local ohNumber1 = 1

while farm == true do
wait()
    game:GetService("Players").LocalPlayer.QuestRemoteEvents:WaitForChild("TreasureAhoy"):FireServer(ohNumber1)

    ohNumber1 = ohNumber1 + 1

    if ohNumber1 > 120 then
        wait(.1)
        ohNumber1 = 1
    end
    wait(.1)
end

end)
