local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ElijahGamingRBLX2/Orion-UI/main/OrionMobile.lua')))()

local Window = OrionLib:MakeWindow({Name = "Elijah Hub V2", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Elijah Hub V2",
	Content = "Elijah Hub V2 Has Loaded",
	Image = "https://cdn.discordapp.com/attachments/1245398119357874318/1245665318630719498/58D0DD01-8747-4C32-8478-53DD08EC8E64.jpg?ex=665993bb&is=6658423b&hm=d5be83125390415ad18480a9f5a4e66db223aa74120d5cbb4ca74ab5d20b1ba4&",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("Welcome","Thanks For Using Elijah Hub V2")

Tab:AddLabel("Status: Undetected")

Tab:AddButton({
	Name = "Join The Discord Server",
	Callback = function()
      	setclipboard("https://discord.gg/ahU2XqVyp")
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

Tab2:AddButton({
	Name = "Player ESP",
	Callback = function()
      	 local gui = Instance.new("BillboardGui");
gui.Name = "";
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
local frame = Instance.new("Frame", gui);
frame.BackgroundColor3 = Color3.fromRGB(170, 0, 0);
frame.Size = UDim2.new(1, 0, 1, 0);
frame.BorderSizePixel = 4;
frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
local gi = gui:Clone();
local body = frame:Clone();
body.Parent = gi;
body.BackgroundColor3 = Color3.fromRGB(0, 170, 170);

for _, v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character and v.Character:FindFirstChild("Head") then
        gui:Clone().Parent = v.Character.Head;
    end
end
  	end    
})

local Tab3 = Window:MakeTab({
	Name = "Gun Mods",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab3:AddButton({
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

Tab3:AddButton({
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

Tab3:AddButton({
	Name = "Infinite Ammo",
	Callback = function()
      		while wait() do
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
end
  	end    
})

Tab3:AddButton({
	Name = "RGB Gun",
	Callback = function()
      local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
  	end    
})

Tab3:AddButton({
	Name = "Silent Aim",
	Callback = function()
      function getplrsname() for i,v in pairs(game:GetChildren()) do if v.ClassName == "Players" then return v.Name end end end local players = getplrsname() local plr = game[players].LocalPlayer coroutine.resume(coroutine.create(function() while wait(1) do coroutine.resume(coroutine.create(function() for _,v in pairs(game[players]:GetPlayers()) do if v.Name ~= plr.Name and v.Character then v.Character.RightUpperLeg.CanCollide = false v.Character.RightUpperLeg.Transparency = 75 v.Character.RightUpperLeg.Size = Vector3.new(21,21,21) v.Character.LeftUpperLeg.CanCollide = false v.Character.LeftUpperLeg.Transparency = 75 v.Character.LeftUpperLeg.Size = Vector3.new(21,21,21) v.Character.HeadHB.CanCollide = false v.Character.HeadHB.Transparency = 75 v.Character.HeadHB.Size = Vector3.new(21,21,21) v.Character.HumanoidRootPart.CanCollide = false v.Character.HumanoidRootPart.Transparency = 75 v.Character.HumanoidRootPart.Size = Vector3.new(21,21,21) end end end)) end end))
  	end    
})

local Tab4 = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab4:AddButton({
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

Tab4:AddButton({
	Name = "Infinite Jump",
	Callback = function()
      		local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
  	end    
})

local Tab5 = Window:MakeTab({
	Name = "Change Walkspeed",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab5:AddTextbox({
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

local Tab6 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab6:AddButton({
	Name = "Destroy UI",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})
OrionLib:Init()
