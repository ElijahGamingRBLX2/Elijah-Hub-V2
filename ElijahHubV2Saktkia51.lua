local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/Kavo-UI/main/kavo.lua"))()

local Window = Library.CreateLib("Elijah Hub V2 - Survive And Kill The Killers In Area 51", "Serpent")

local Tab = Window:NewTab("Guns")
local Section = Tab:NewSection("Gun")

Section:NewButton("Get All Guns", "Gives You All Of The Guns", function()
    local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "Get All Guns",
    Text = "Getting All Guns",
    Duration = 5,
})

wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(183, 305, 184)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(136, 334, 501)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(115, 324, 676)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(320, 272, 140)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(3, 268, 187)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(-104, 313, 461)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(-155, 303, 768)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(233, 373, 49)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(148, 260, 326)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(157, 344, 607)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(-147, 313, 281)
wait(1)
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(326, 511, 392)
end)

local Tab2 = Window:NewTab("Pack A Punch")
local Section2 = Tab2:NewSection("Pack A Punch Guns")

Section2:NewButton("Pack A Punch - Raygun", "Pack A Punch", function()
    local args = {
    [1] = "RayGun"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - M16A2", "Pack A Punch", function()
    local args = {
    [1] = "M16A2/M203"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - MP5K", "Pack A Punch", function()
    local args = {
    [1] = "MP5k"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - P90", "Pack A Punch", function()
    local args = {
    [1] = "P90"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer(
end)

Section2:NewButton("Pack A Punch - R870", "Pack A Punch", function()
    local args = {
    [1] = "R870"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - M14", "Pack A Punch", function()
local args = {
    [1] = "M14"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - M4A1", "Pack A Punch", function()
local args = {
    [1] = "M4A1"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - G36C", "Pack A Punch", function()
local args = {
    [1] = "G36C"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - Desert Eagle", "Pack A Punch", function()
local args = {
    [1] = "Desert Eagle"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - DB Shotgun", "Pack A Punch", function()
local args = {
    [1] = "DB Shotgun"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - AN-94", "Pack A Punch", function()
local args = {
    [1] = "AN-94"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - AK-47", "Pack A Punch", function()
local args = {
    [1] = "AK-47"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - AWP", "Pack A Punch", function()
local args = {
    [1] = "AWP"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - SVD", "Pack A Punch", function()
local args = {
    [1] = "SVD"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - M1014", "Pack A Punch", function()
local args = {
    [1] = "M1014"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

Section2:NewButton("Pack A Punch - MG42", "Pack A Punch", function()
local args = {
    [1] = "MG42"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)
  
Section2:NewButton("Pack A Punch - All Weapons", "Pack A Punch All Weapons", function()

local args = {
    [1] = "R870"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()



local args = {
    [1] = "RayGun"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()




local args = {
    [1] = "P90"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()




local args = {
    [1] = "MP5k"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()




local args = {
    [1] = "M14"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()




local args = {
    [1] = "M4A1"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()




local args = {
    [1] = "M16A2/M203"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()



local args = {
    [1] = "G36C"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

local args = {
    [1] = "Desert Eagle"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

local args = {
    [1] = "DB Shotgun"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

local args = {
    [1] = "AN-94"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

local args = {
    [1] = "AK-47"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

local args = {
    [1] = "AWP"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

local args = {
    [1] = "SVD"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

local args = {
    [1] = "M1014"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()


local args = {
    [1] = "MG42"
}

game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild("PAP Weapon"):InvokeServer(unpack(args))
wait(0.1)
game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()
end)

local Tab3 = Window:NewTab("Player")
local Section3 = Tab3:NewSection("Player Modification")

Section3:NewTextBox("Input Speed", "Change Walkspeed", function(speed)
	while true do
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end
end)

Section3:NewButton("Infinite Yield (PC)", "Infinite Yield Script", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section3:NewButton("Infinite Yield (Mobile)", "Infinite Yield Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/Infinite-Yield/main/InfiniteYieldDeltaMobile.lua"))()
end)

Section3:NewButton("Hitbox Expander", "Elijah Hub Hitbox Expander", function()
loadstring(game:HttpGet("https://pastebin.com/raw/pV5tQwMR"))()
end)
