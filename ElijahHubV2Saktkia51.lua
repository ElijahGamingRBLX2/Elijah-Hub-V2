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

Section3:NewButton("Killers Ignore You", "Killers Ignore You", function()
Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
    if script.Disabled ~= true then
        wait(.25)
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.Equals then
        if script.Disabled ~= true then
            script.Disabled = true
            print'you may re-execute'
        end
    end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(10,1,10)
box.Position = Vector3.new(0,10000,0)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))
end)

Section3:NewButton("God Mode", "God Mode", function()local stationaryrespawn = false
local needsrespawning = false
local haspos = false
local pos = CFrame.new()
local Respawning = Instance.new("ScreenGui")
local RespawningButton = Instance.new("TextButton")

Respawning.Name = "Respawning"
Respawning.Parent = game.CoreGui




function StatRespawn(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.N and gameProcessedEvent == false then        
stationaryrespawn = not stationaryrespawn
    end
end






game:GetService("UserInputService").InputBegan:connect(StatRespawn)



game:GetService('RunService').Stepped:connect(function()


if stationaryrespawn == false and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
if haspos == false then
pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
haspos = true
end

needsrespawning = true
end


if needsrespawning == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end


if stationaryrespawn == false then 
RespawningButton.Text = "Returning"
else
RespawningButton.Text = "Not Returning"
end


end)

game.Players.LocalPlayer.CharacterAdded:connect(function()
wait(0.6)
needsrespawning = false
haspos = false
end)

game.Players.LocalPlayer.CharacterAdded:connect(function()
wait(0.6)
needsrespawning = false
haspos = false
end)
end)

game.Players.LocalPlayer.CharacterAdded:connect(function()
wait(0.6)
needsrespawning = false
haspos = false
end)

Section3:NewButton("Infinite Ammo", "Infinite Ammo", function()
while true do
local oldpos = workspace["AREA51"]["PlantRoom"]["Box of Shells"]["Box"].CFrame
workspace["AREA51"]["PlantRoom"]["Box of Shells"]["Box"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
workspace["AREA51"]["PlantRoom"]["Box of Shells"]["Box"].CanCollide = false
wait()
workspace["AREA51"]["PlantRoom"]["Box of Shells"]["Box"].CFrame = oldpos
workspace["AREA51"]["PlantRoom"]["Box of Shells"]["Box"].CanCollide = true
wait()
end
end)

local Tab4 = Window:NewTab("Visuals")
local Section4 = Tab4:NewSection("Visuals")

Section4:NewButton("Remove All Doors", "Remove All Doors", function()
game.Workspace.AREA51.Doors.Vertical.ToComptersRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.EntranceOfArea.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ComputersRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToMultipleRooms.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToMedicAndMeet.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ElectricityRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToRadioactive.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ComputersRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.CartonsRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToTeleporterRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TeleporterRoomRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TeleporterRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToTeleporterLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToSurveillanceCams.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToMenageRoom.Door.Door:Destroy()
game.Workspace.AREA51.ExecutionRoom.Door.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.RobotsRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.SmallTrapRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.UFORoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TrapRoomLeft.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TrapRoomRight.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToAlienRoom.Door.DoorDestroy()
game.Workspace.AREA51.Doors.Horizontal.ToUndergroundRoom.Door.DoorDestroy()
game.Workspace.AREA51.Doors.Horizontal.ToExperimentRoom.Door.DoorDestroy()
game.Workspace.AREA51.Doors.Vertical.ToJails.Door.DoorDestroy()
game.Workspace.AREA51.JailsRoom.RotateDoor.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToTrainRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToNewRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Horizontal.ToOtherNewRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.TrainRoom.Door.Door:Destroy()
game.Workspace.AREA51.Doors.Vertical.ToRayGunElevatorRoom.Door.Door:Destroy()
end)

Section4:NewButton("Full Bright", "Full Bright", function()
local Light = game:GetService("Lighting")
function dofullbright()
Light.Ambient = Color3.new(1, 1, 1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
end
dofullbright()
Light.LightingChanged:Connect(dofullbright)
end)

local Tab5 = Window:NewTab("Teleport")
local Section5 = Tab5:NewSection("Teleport")

Section5:NewButton("Spawn", "Teleport To Spawn", function()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(323.956818, 512.700012, 396.804596)
end)

Section5:NewButton("Exit Vent (MP5K)", "Teleport", function()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(195.749, 344.5, 48.9903)
end)

Section5:NewButton("Spawn Tunnel", "Teleport", function()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(326.2, 316, 369.4)
end)

Section5:NewButton("Ammo Room", "Teleport", function()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(172.827, 316.5, 420.396)
end)

Section5:NewButton("Bedroom (Key Location)", "Teleport", function()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(110.904, 336.5, 68.3771)
end)

Section5:NewButton("Pack A Punch", "Teleport", function()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(280.522, 324.5, 784.666)
end)

Secrion5:NewButton("Alien Teleporter", "Teleport", function()
game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(103.432, 316.5, 91.18)
end)
