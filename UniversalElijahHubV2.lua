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

Section:NewSlider("Change Walkspeed", "Set Walkspeed", 500, 0, function(speed) -- 500 (MaxValue) | 0 (MinValue)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

Section:NewSlider("Change JumpPower", "Set JumpPower", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewButton("Infinite Yield (Mobile)", "Infinite Yield", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/Infinite-Yield/main/InfiniteYieldDeltaMobile.lua"))() 
end)

local Tab2 = Window:NewTab("Roblox Executor")
local Section2 = Tab:NewSection("Executor Options")

Section:NewButton("Run UNC", "For Roblox Executors", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ElijahGamingRBLX2/UNC-And-Scripts/main/UNCCheck.lua'))()
end)

Section:NewButton("Run Vulnerability Test", "For Roblox Executors", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ElijahGamingRBLX2/UNC-And-Scripts/main/RobloxExecutorVulnerabilityTest.lua"))()
end)

local Tab3 = Window:NewTab("Scripts")
local Section3 = Tab:NewSection("Script Option")


Section:NewButton("FPS Counter (Draggable)", "Counts FPS", function()
 -- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.022813689, 0, 0.0541082174, 0)
Frame.Size = UDim2.new(0, 79, 0, 56)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.129077807, 0, 0.400000036, 0)
TextLabel.Size = UDim2.new(0, 31, 0, 30)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "60"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 34.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.127986133, 0, 0.132142887, 0)
TextLabel_2.Size = UDim2.new(0, 29, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "FPS"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 34.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function GZAQCE_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local textLabel = script.Parent
	
	local runService = game:GetService("RunService")
	
	local goodFPS = 30
	local okFPS = 15
	
	runService.RenderStepped:Connect(function()
	
		local currentFPS = workspace:GetRealPhysicsFPS()
		textLabel.Text = math.floor(currentFPS)..""
	
		if currentFPS >= goodFPS then
	
			textLabel.TextColor3 = Color3.new(0,1,0)
	
		elseif currentFPS >= okFPS then
	
			textLabel.TextColor3 = Color3.new(1, 0.333333, 0)
	
		else
	
			textLabel.TextColor3 = Color3.new(1,0,0)
	
		end
	
	end)
end
coroutine.wrap(GZAQCE_fake_script)()
local function JMWW_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
	
end
coroutine.wrap(JMWW_fake_script)()
end)

Section:NewButton("FPS Counter (Draggable)", "Counts FPS", function()
  
end)

Section:NewButton("FPS Counter Viewer", "Counts FPS", function()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.022813689, 0, 0.0541082174, 0)
Frame.Size = UDim2.new(0, 79, 0, 56)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.129077807, 0, 0.400000036, 0)
TextLabel.Size = UDim2.new(0, 31, 0, 30)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "60"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 34.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.127986133, 0, 0.132142887, 0)
TextLabel_2.Size = UDim2.new(0, 29, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "FPS"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 34.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function WYJXB_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local textLabel = script.Parent
	
	local runService = game:GetService("RunService")
	
	local goodFPS = 30
	local okFPS = 15
	
	runService.RenderStepped:Connect(function()
	
		local currentFPS = workspace:GetRealPhysicsFPS()
		textLabel.Text = math.floor(currentFPS)..""
	
		if currentFPS >= goodFPS then
	
			textLabel.TextColor3 = Color3.new(0,1,0)
	
		elseif currentFPS >= okFPS then
	
			textLabel.TextColor3 = Color3.new(1, 0.333333, 0)
	
		else
	
			textLabel.TextColor3 = Color3.new(1,0,0)
	
		end
	
	end)
end
coroutine.wrap(WYJXB_fake_script)()
end)
end)

Section:NewButton("Basic FPS Counter", "Counts FPS", function()
repeat wait() until game:IsLoaded() wait(2)
local ScreenGui = Instance.new("ScreenGui")
local Fps = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Fps.Name = "Fps"
Fps.Parent = ScreenGui
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.BackgroundTransparency = 1.000
Fps.Position = UDim2.new(0.786138654, 0, 0, 0)
Fps.Size = UDim2.new(0, 125, 0, 25)
Fps.Font = Enum.Font.SourceSans
Fps.TextColor3 = Color3.fromRGB(1,1,1)
Fps.TextScaled = true
Fps.TextSize = 14.000
Fps.TextWrapped = true

-- Scripts:

local script = Instance.new('LocalScript', Fps)
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(frame) -- This will fire every time a frame is rendered
script.Parent.Text = ("FPS: "..math.round(1/frame)) 
end)
end)

Section:NewButton("Hitbox Expander GUI", "Hitbox Expander", function()
_G.Transparency = 0.7 --Transparency Rest is from the gui--

local HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

--Properties:

HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7.Name = "what"
HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7.Parent = game:GetService("CoreGui")
HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = HACKEDBYG00BKIDh8DY8H9y9dfy87sdayo9YH8dbfd87Yh8yhfds78dyf78WESY90y7vSY9FY0D4Q39R7hdfgh7
Frame.BackgroundColor3 = Color3.fromRGB(105, 0, 113)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.33098945, 0, 0.397435904, 0)
Frame.Size = UDim2.new(0, 235, 0, 173)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 5
TextLabel.Position = UDim2.new(-0.106382981, 0, -0.0809248537, 0)
TextLabel.Size = UDim2.new(0, 285, 0, 35)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Elijah Hub - Hitbox Expander"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 5
TextLabel_2.Position = UDim2.new(-0.106382981, 0, 0.947976887, 0)
TextLabel_2.Size = UDim2.new(0, 285, 0, 35)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "Elijah Hub Hitbox Expander"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 5
TextButton.Position = UDim2.new(0.0723404288, 0, 0.549132943, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "Expand Hitbox"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
	while wait(1.5) do
		local Players = game:GetService("Players")
		local allPlayers = Players:GetPlayers()
		local LocalPlayer = Players.LocalPlayer

		for _, player in pairs(allPlayers) do
			if LocalPlayer ~= player then
				local char = player.Character
				if char then
					local Ht = char:FindFirstChild('HumanoidRootPart')
					Ht.Size = Vector3.new(TextBox.Text, TextBox.Text, TextBox.Text)
					Ht.Transparency = _G.Transparency
				end
			end
		end
	end
end)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 5
TextBox.Position = UDim2.new(0.314893603, 0, 0.213872835, 0)
TextBox.Size = UDim2.new(0, 85, 0, 37)
TextBox.Font = Enum.Font.SciFi
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

-- Scripts:

local function ATGNSBN_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			if gui.Visible then
				update(input)
			end
		end
	end)
end
coroutine.wrap(ATGNSBN_fake_script)()
end)
