local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ElijahGamingRBLX2/Orion-UI/main/OrionMobile.lua')))()

local Window = OrionLib:MakeWindow({Name = "Elijah Hub V2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Elijah Hub V2",
	Content = "Elijah Hub V2 Has Loaded",
	Image = "https://cdn.discordapp.com/attachments/1245398119357874318/1245665318630719498/58D0DD01-8747-4C32-8478-53DD08EC8E64.jpg?ex=665993bb&is=6658423b&hm=d5be83125390415ad18480a9f5a4e66db223aa74120d5cbb4ca74ab5d20b1ba4&",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Rapid Fire",
	Callback = function()
      	local replicationstorage = game.ReplicatedStorage
for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
   if v.Name == "Auto" then
       v.Value = true
   end
   if v.Name == "RecoilControl" then
       v.Value = 0
   end
   if v.Name == "MaxSpread" then
       v.Value = 0
   end
   if v.Name == "ReloadTime" then
      v.Value = 0
   end
   if v.Name == "FireRate" then
       v.Value = 0.05
   end
   if v.Name == "Crit" then
       v.Value = 20
   end
end	
  	end    
})

Tab:AddButton({
	Name = "Rapid Fire V2",
	Callback = function()
      	local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
   if v.Name == "Auto" then
       v.Value = true
   end
   if v.Name == "RecoilControl" then
       v.Value = 0
   end
   if v.Name == "MaxSpread" then
       v.Value = 0
   end
   if v.Name == "ReloadTime" then
      v.Value = 1
   end
   if v.Name == "FireRate" then
       v.Value = 0.05
   end
   if v.Name == "Crit" then
       v.Value = 20
   end
end
  	end    
})

Tab:AddButton({
	Name = "Infinite Ammo",
	Callback = function()
      		while wait() do
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
end
  	end    
})

Tab:AddButton({
	Name = "RGB Gun",
	Callback = function()
      local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
  	end    
})

Tab:AddButton({
	Name = "Full Bright",
	Callback = function()
      	local Light = game:GetService("Lighting")
function dofullbright()
Light.Ambient = Color3.new(1, 1, 1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
end
dofullbright()
Light.LightingChanged:Connect(dofullbright)
  	end    
})

Tab:AddButton({
	Name = "Silent Aim",
	Callback = function()
      local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "Player ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab2:AddButton({
	Name = "Player ESP V2",
	Callback = function()
         -- loadstring
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

-- config
ESP.Tracers = true
ESP.Players = true
ESP.Boxes = true
ESP.Names = true
ESP:Toggle(true)

-- object
ESP:AddObjectListener(Workspace, { -- Object Path, For example: Workspace.ThisFolder
    Name = "", --Object name inside of the path, for example: Workspace.ThisFolder.Item_1
    CustomName = "", -- Name you want to be displayed
    Color = Color3.fromRGB(0, 0, 0), -- Color
    IsEnabled = "whatever" -- Any name, has to be the same as the last line: ESP.TheNameYouWant
})
ESP.whatever = true
  	end    
})

local Tab3 = Window:MakeTab({
	Name = "Gun Mods",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab3:AddButton({
	Name = "Silent Aim V2",
	Callback = function(silent)
      		if silent then
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    else
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 0, workspace.CurrentCamera.ViewportSize.Y / 0), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    end
  	end    
})

Tab3:AddButton({
	Name = "Aimbot",
	Callback = function(aimbot)
      	        local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local GuiService = game:GetService("GuiService")
    local LocalPlayer = Players.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local Camera = workspace.CurrentCamera
    local sc = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    
    local Down = true
    local Inset = GuiService:GetGuiInset()
    
    --// Options \\--
    getgenv().Options = {
        Enabled = aimbot,
        TeamCheck = true,
        Triggerbot = true,
        Smoothness = true,
        AimPart = "Head",
        FOV = 150
    }
    
    --// Functions \\--
    local gc = function()
        local nearest = math.huge
        local nearplr
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game:GetService("Players").LocalPlayer and v.Character and v.Character:FindFirstChild(Options.AimPart) then
                if Options.TeamCheck then
                    if game:GetService("Players").LocalPlayer.Team ~= v.Team then
                        local pos = Camera:WorldToScreenPoint(v.Character[Options.AimPart].Position)
                        local diff = math.sqrt((pos.X - sc.X) ^ 2 + (pos.Y + Inset.Y - sc.Y) ^ 2)
                        if diff < nearest and diff < Options.FOV then
                            nearest = diff
                            nearplr = v
                        end
                    end
                else
                    local pos = Camera:WorldToScreenPoint(v.Character[Options.AimPart].Position)
                    local diff = math.sqrt((pos.X - sc.X) ^ 2 + (pos.Y + Inset.Y - sc.Y) ^ 2)
                    if diff < nearest and diff < Options.FOV then
                        nearest = diff
                        nearplr = v
                    end
                end
            end
        end
        return nearplr
    end -- google chrome made this but i modified it for it to use teamcheck
    
    function Circle()
        local circ = Drawing.new('Circle')
        circ.Transparency = 1
        circ.Thickness = 1.5
        circ.Visible = true
        circ.Color = Color3.fromRGB(255,255,255)
        circ.Filled = false
        circ.NumSides = 150
        circ.Radius = Options.FOV
        return circ
    end
    curc = Circle()
    --// Main \\--
    UserInputService.InputBegan:Connect(function( input )
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            Down = true
        end
    end)
    UserInputService.InputEnded:Connect(function( input )
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            Down = false
        end
    end)
    RunService.RenderStepped:Connect(function( ... )
        if Options.Enabled then
            if Down then
                if gc() ~= nil and gc().Character:FindFirstChild(Options.AimPart) then
                    if Options.Smoothness then
                        pcall(function( ... )
                            local Info = TweenInfo.new(0.05,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
                            game:GetService("TweenService"):Create(Camera,Info,{
                                CFrame = CFrame.new(Camera.CFrame.p,gc().Character[Options.AimPart].CFrame.p)
                            }):Play()
                        end)
                    else
                        pcall(function()
                            Camera.CFrame = CFrame.new(Camera.CFrame.p,gc().Character[Options.AimPart].CFrame.p)
                        end)
                    end
                end
            end
            curc.Visible = false
            curc.Position = Vector2.new(Mouse.X, Mouse.Y+Inset.Y)
        else
            -- do nothing except remove the fov
            curc.Visible = false
        end
    end)
  	end    
})

local Tab4 = Window:MakeTab({
	Name = "Change Walkspeed",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab4:AddTextbox({
	Name = "Change Walkspeed",
	Default = "",
	TextDisappear = false,
	Callback = function(speed)
		while true do
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end
	end	  
})

local Tab5 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab5:AddButton({
	Name = "Join The Discord Server",
	Callback = function()
      	       https://discord.gg/ahU2XqVyp4
  	end    
})

Tab5:AddButton({
	Name = "Destroy UI",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})
OrionLib:Init()
