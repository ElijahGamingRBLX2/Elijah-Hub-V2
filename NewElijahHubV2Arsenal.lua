-- Fly Script
local flySettings={fly=false,flyspeed=50}
local c local h local bv local bav local cam local flying local p=game.Players.LocalPlayer
local buttons={W=false,S=false,A=false,D=false,Moving=false}
local startFly=function()if not p.Character or not p.Character.Head or flying then return end c=p.Character h=c.Humanoid h.PlatformStand=true cam=workspace:WaitForChild('Camera') bv=Instance.new("BodyVelocity") bav=Instance.new("BodyAngularVelocity") bv.Velocity,bv.MaxForce,bv.P=Vector3.new(0,0,0),Vector3.new(10000,10000,10000),1000 bav.AngularVelocity,bav.MaxTorque,bav.P=Vector3.new(0,0,0),Vector3.new(10000,10000,10000),1000 bv.Parent=c.Head bav.Parent=c.Head flying=true h.Died:connect(function()flying=false end)end
local endFly=function()if not p.Character or not flying then return end h.PlatformStand=false bv:Destroy() bav:Destroy() flying=false end
game:GetService("UserInputService").InputBegan:connect(function(input,GPE)if GPE then return end for i,e in pairs(buttons)do if i~="Moving" and input.KeyCode==Enum.KeyCode[i]then buttons[i]=true buttons.Moving=true end end end)
game:GetService("UserInputService").InputEnded:connect(function(input,GPE)if GPE then return end local a=false for i,e in pairs(buttons)do if i~="Moving"then if input.KeyCode==Enum.KeyCode[i]then buttons[i]=false end if buttons[i]then a=true end end end buttons.Moving=a end)
local setVec=function(vec)return vec*(flySettings.flyspeed/vec.Magnitude)end
game:GetService("RunService").Heartbeat:connect(function(step)if flying and c and c.PrimaryPart then local p=c.PrimaryPart.Position local cf=cam.CFrame local ax,ay,az=cf:toEulerAnglesXYZ()c:SetPrimaryPartCFrame(CFrame.new(p.x,p.y,p.z)*CFrame.Angles(ax,ay,az))if buttons.Moving then local t=Vector3.new()if buttons.W then t=t+(setVec(cf.lookVector))end if buttons.S then t=t-(setVec(cf.lookVector))end if buttons.A then t=t-(setVec(cf.rightVector))end if buttons.D then t=t+(setVec(cf.rightVector))end c:TranslateBy(t*step)end end end)

  
  local Players=game:GetService("Players");
  local Player=Players.LocalPlayer;
  --local Mouse=Player:GetMouse();
  local Workspace=game:GetService("Workspace");
  local CurrentCam=Workspace.CurrentCamera;
  local require=require;
  local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt"))()
  local win = lib:Window("Elijah Hub V2 ", Color3.fromRGB(44, 120, 224), Enum.KeyCode.P)
  
  -- Hitbox Settings
  local hitboxEnabled = false
  local hitboxTransparency = 0
  local originalHitboxSize = Vector3.new(1, 1, 1)
  local hitboxSize = 20
  
  local tab = win:Tab("Main")

tab:Button("Rapid Fire V2", function()
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
end)

tab:Button("Infinite Ammo", function()
while wait() do
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
end
end)

tab:Button("Silent Aim V2", function()
function getplrsname() for i,v in pairs(game:GetChildren()) do if v.ClassName == "Players" then return v.Name end end end local players = getplrsname() local plr = game[players].LocalPlayer coroutine.resume(coroutine.create(function() while wait(1) do coroutine.resume(coroutine.create(function() for _,v in pairs(game[players]:GetPlayers()) do if v.Name ~= plr.Name and v.Character then v.Character.RightUpperLeg.CanCollide = false v.Character.RightUpperLeg.Transparency = 75 v.Character.RightUpperLeg.Size = Vector3.new(21,21,21) v.Character.LeftUpperLeg.CanCollide = false v.Character.LeftUpperLeg.Transparency = 75 v.Character.LeftUpperLeg.Size = Vector3.new(21,21,21) v.Character.HeadHB.CanCollide = false v.Character.HeadHB.Transparency = 75 v.Character.HeadHB.Size = Vector3.new(21,21,21) v.Character.HumanoidRootPart.CanCollide = false v.Character.HumanoidRootPart.Transparency = 75 v.Character.HumanoidRootPart.Size = Vector3.new(21,21,21) end end end)) end end))
end)

tab:Button("RGB Gun", function()
local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
end)
  
  -- Hitbox Collide
  tab:Label("Hitbox Collide")
  
  local function hitboxes()
      for _, player in pairs(game:GetService("Players"):GetPlayers()) do
          if player ~= game:GetService("Players").LocalPlayer then
              local character = player.Character
              local rootPart = character and character:FindFirstChild("HumanoidRootPart")
              if rootPart then
                  rootPart.CanCollide = hitboxEnabled
                  rootPart.Transparency = hitboxEnabled and hitboxTransparency or 0
                  rootPart.Size = hitboxEnabled and Vector3.new(hitboxSize, hitboxSize, hitboxSize) or originalHitboxSize
              end
          end
      end
  end
  
  local connection
  tab:Toggle("Hitbox", false, function(state)
      hitboxEnabled = state
  
      if state then
          connection = game:GetService("RunService").Stepped:Connect(hitboxes)
      else
          if connection then
              connection:Disconnect()
          end
          hitboxes()
      end
  end)
  
  tab:Slider("Hitbox Size", 1, 50, hitboxSize, function(value)
      hitboxSize = value
      hitboxes()
  end)
  
  tab:Slider("Hitbox Transparency", 0, 1, hitboxTransparency, function(value)
      hitboxTransparency = value
      hitboxes()
  end)
  
  tab:Label("Hitbox (No Collision)")
  local function hitboxesNoCollision()
      for _, player in pairs(game:GetService("Players"):GetPlayers()) do
          if player ~= game:GetService("Players").LocalPlayer then
              local character = player.Character
              local rootPart = character and character:FindFirstChild("HumanoidRootPart")
              if rootPart then
                  local success, err = pcall(function()
                      rootPart.CanCollide = not hitboxEnabled
                      rootPart.Transparency = hitboxEnabled and hitboxTransparency or 0
                      rootPart.Size = hitboxEnabled and Vector3.new(hitboxSize, hitboxSize, hitboxSize) or originalHitboxSize
                      rootPart.CollisionGroup = hitboxEnabled and "PlayerHitbox" or "Default"
                  end)
                  if not success then
                      warn("Error modifying the hitbox:", err)
                  end
              end
          end
      end
  end
  
  tab:Toggle("Hitbox", false, function(state)
      hitboxEnabled = state
  
      if state then
          connection = game:GetService("RunService").Stepped:Connect(hitboxesNoCollision)
      else
          if connection then
              connection:Disconnect()
          end
          hitboxesNoCollision()
      end
  end)
  
  tab:Slider("Hitbox Size", 1, 50, hitboxSize, function(value)
      hitboxSize = value
      hitboxesNoCollision()
  end)
  
  tab:Slider("Hitbox Transparency", 0, 1, hitboxTransparency, function(value)
      hitboxTransparency = value
      hitboxesNoCollision()
  end)
  
  -- Visuals Tab
  local Visual = win:Tab("Visuals")

tab:Button("Full Bright", function()
lib:Notification("Notification", "Hello!", "Hi!")
end)

  tab:Button("Player ESP V2", function()
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
end)

tab:Button("Player ESP", function()
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
end)
   
  -- Player Tab
  local tab3 = win:Tab("Player")
  tab3:Toggle("Fly", false, function(state)
      if state then
          startFly()
      else
          endFly()
      end
  end)
  
  tab3:Slider("Change Fly Speed", 1, 500, 1, function(s)
      flySettings.flyspeed = s
  end)
  
  
  
  local settings = {
      WalkSpeed = 16,
      JumpPower = 50
  }
  
  local function setWalkSpeed(value)
      settings.WalkSpeed = value
      local player = game:GetService("Players").LocalPlayer
      local character = player.Character
      local humanoid = character and character:FindFirstChild("Humanoid")
  
      if humanoid then
          humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
              humanoid.WalkSpeed = settings.WalkSpeed
          end)
          humanoid.WalkSpeed = settings.WalkSpeed
      end
  end
  
  tab3:Slider("Change Walkspeed", 16, 500, 16, function(value)
      setWalkSpeed(value)
  end)
  
  tab3:Label("JumpPower")
  
  local function setJumpPower(value)
      settings.JumpPower = value
      local player = game:GetService("Players").LocalPlayer
      local character = player.Character
      local humanoid = character and character:FindFirstChild("Humanoid")
  
      if humanoid then
          humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
              humanoid.JumpPower = settings.JumpPower
          end)
          humanoid.JumpPower = settings.JumpPower
      end
  end
  
  tab3:Slider("Change JumpPower", 50, 500, 50, function(value)
      setJumpPower(value)
  end)
  
  local IJ = false
  tab3:Toggle("Infinite Jump", false, function(state)
      IJ = state
      game:GetService("UserInputService").JumpRequest:Connect(function()
          if IJ then
              game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
          end
      end)
  end)
  
  -- Settings
  local changeclr = win:Tab("Mics")
  local toggle = false
  
  local function runToggleableScript()
      if toggle then
          local voteKick = game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.VoteKick
          if voteKick and voteKick.Title.Text == "Vote Kick <font color='#FFA500'>".. game.Players.LocalPlayer.Name .. "</font>?" then
              game:GetService("TeleportService"):Teleport(game.PlaceId)
          else
              wait()
          end
      end
  end
  
  game:GetService("RunService").Heartbeat:Connect(runToggleableScript)
  changeclr:Toggle("Rejoin", toggle, function(state)
      toggle = state
      if not toggle then
          game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.VoteKick.Title.Text = ""
      end
  end)
  
  changeclr:Colorpicker("Change UI Color", Color3.fromRGB(44, 120, 224), function(t)
      lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
  end)

tab:Label("Status: Undetcted")

tab:Button("Join The Discord Server", function()
setclipboard("https://discord.gg/ahU2XqVyp")
end)

  
  
