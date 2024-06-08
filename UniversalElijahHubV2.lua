local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/Kavo-UI/main/kavo.lua"))()

local Window = Library.CreateLib("Elijah Hub V2 - Universal Script", "Serpent")

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player Mods")

Section:NewButton("Set HipHeight (21)", "Change HipHeight", function()
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 21
end)

Section:NewSlider("Change HipHeight", "Set HipHeight", 23, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = s
end)

Section:NewTextBox("Change Walkspeed", "Set Walkspeed", function(speed)
while true do
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end
end)

Section:NewSlider("Change JumpPower", "Set JumpPower", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewButton("Infinite Yield (Mobile)", "Infinite Yield", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/Infinite-Yield/main/InfiniteYieldDeltaMobile.lua"))() 
end)

local Tab2 = Window:NewTab("Roblox Executor")
local Section2 = Tab2:NewSection("Executor Options")

Section2:NewButton("Run UNC", "For Roblox Executors", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ElijahGamingRBLX2/UNC-And-Scripts/main/UNCCheck.lua'))()
end)

Section2:NewButton("Run Vulnerability Test", "For Roblox Executors", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/UNC-And-Scripts/main/RobloxExecutorVulnerabilityTest.lua"))()
end)

local Tab3 = Window:NewTab("Scripts")
local Section3 = Tab3:NewSection("Script Option")
