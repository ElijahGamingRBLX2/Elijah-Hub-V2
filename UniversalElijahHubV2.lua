local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/Kavo-UI/main/kavo.lua"))()

local Window = Library.CreateLib("Elijah Hub V2 - Universal Script", "DarkTheme")

local Tab = Window:NewTab("Player")

Section:NewButton("Set HipHeight (21)", "Change HipHeight", function()
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 21
end)

Section:NewSlider("Change HipHeight", "Set HipHeight", 23, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = s
end)

Section:NewSlider("Change Walkspeed", "Set Walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Change JumpPower", "Set JumpPower", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewButton("Infinite Yield (Mobile)", "Infinite Yield", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/Infinite-Yield/main/InfiniteYieldDeltaMobile.lua"))() 
end)
