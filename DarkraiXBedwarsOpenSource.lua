local a = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local b = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
b:Notify(
    {Title = "Loading", Description = "Please Wait"},
    {OutlineColor = Color3.fromRGB(76, 0, 130), Time = 5, Type = "default"}
)
wait(5)
local c = loadstring(game:HttpGet("https://pastebin.com/raw/RmLqTugH"))()
local d = c.CreateLib("Darkrai X | Doors", "Serpent")
local f = Instance.new("ScreenGui")
local g = Instance.new("TextButton")
f.Name = "Toggle"
f.Parent = game.CoreGui
g.Name = "UIToggle"
g.Parent = f
g.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
g.BackgroundTransparency = 0.660
g.Position = UDim2.new(0, 0, 0.454706937, 0)
g.Size = UDim2.new(0.0650164187, 0, 0.0888099447, 0)
g.Font = Enum.Font.SourceSans
g.Text = "Toggle"
g.TextColor3 = Color3.fromRGB(75, 0, 130)
g.TextSize = 24.000
g.TextXAlignment = Enum.TextXAlignment.Left
g.MouseButton1Click:connect(
    function()
        c:ToggleUI()
    end
)
local h = game.Players.LocalPlayer
local i = game:GetService("Players")
local j = workspace.CurrentCamera
local k = game:GetService("UserInputService")
local l = debug.getupvalue(require(h.PlayerScripts.TS.knit).setup, 6)
local m = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local n = function(o)
    for p, q in pairs(o) do
        if q == "Client" then
            return o[p + 1]
        end
    end
    return ""
end
local r = {
    ["SprintController"] = l.Controllers.SprintController,
    ["ClientHandlerStore"] = require(h.PlayerScripts.TS.ui.store).ClientStore,
    ["KnockbackUtil"] = require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil,
    ["PingController"] = require(h.PlayerScripts.TS.controllers.game.ping["ping-controller"]).PingController,
    ["DamageIndicator"] = l.Controllers.DamageIndicatorController.spawnDamageIndicator,
    ["SwordController"] = l.Controllers.SwordController,
    ["ViewmodelController"] = l.Controllers.ViewmodelController,
    ["SwordRemote"] = n(debug.getconstants(l.Controllers.SwordController.attackEntity))
}
function isAlive(s)
    s = s or h
    if not s.Character then
        return false
    end
    if not s.Character:FindFirstChild("Head") then
        return false
    end
    if not s.Character:FindFirstChild("Humanoid") then
        return false
    end
    return true
end
function canwalk(s)
    s = s or h
    if not s.Character then
        return false
    end
    if not s.Character:FindFirstChild("Humanoid") then
        return false
    end
    local t = s.Character:FindFirstChild("Humanoid"):GetState()
    if t == Enum.HumanoidStateType.Dead then
        return false
    end
    if t == Enum.HumanoidStateType.Ragdoll then
        return false
    end
    return true
end
function getbeds()
    local u = {}
    for p, q in pairs(game:GetService("Workspace"):GetChildren()) do
        if
            string.lower(q.Name) == "bed" and q:FindFirstChild("Covers") ~= nil and
                q:FindFirstChild("Covers").Color ~= h.Team.TeamColor
         then
            table.insert(u, q)
        end
    end
    return u
end
function getplayers()
    local v = {}
    for p, q in pairs(game:GetService("Players"):GetPlayers()) do
        if q.Team ~= h.Team and isAlive(q) and q.Character:FindFirstChild("Humanoid").Health > 0.11 then
            table.insert(v, q)
        end
    end
    return v
end
function getserverpos(w)
    local x = math.round(w.X / 3)
    local y = math.round(w.Y / 3)
    local z = math.round(w.Z / 3)
    return Vector3.new(x, y, z)
end
function getnearestplayer(A)
    local B = h
    local C = math.huge
    for p, q in pairs(game:GetService("Players"):GetChildren()) do
        if q.Team ~= h.Team and q ~= h and isAlive(q) and isAlive(h) then
            local D =
                (q.Character:FindFirstChild("HumanoidRootPart").Position -
                h.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
            if D < C and D < A then
                C = D
                B = q
            end
        end
    end
    return B
end
function getmatchstate()
    return r["ClientHandlerStore"]:getState().Game.matchState
end
function getqueuetype()
    local t = r["ClientHandlerStore"]:getState()
    return t.Game.queueType or "bedwars_test"
end
function getitem(E)
    if isAlive(h) and h.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild(E) then
        return true
    end
    return false
end
local F = l.Controllers.SprintController
local G = m
local H =
    debug.getupvalue(
    require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity,
    1
)
local I = game:GetService("TweenService")
local J = workspace.CurrentCamera
local function K(L)
    local M = I:Create(J, TweenInfo.new(1, Enum.EasingStyle.Quint), {FieldOfView = J.FieldOfView - L})
    M:Play()
end
local N = d:NewTab("Welcome")
local O = N:NewSection("Hello, " .. game.Players.LocalPlayer.Name)
local P = d:NewTab("Main")
local Q = P:NewSection("Killaura")
local R = d:NewTab("Player")
local S = R:NewSection("Trail")
local T = d:NewTab("Visuals")
local U = T:NewSection("ESP")
local V = d:NewTab("World")
local W = V:NewSection("Anti-Void")
local X = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
O:NewButton(
    "Player : " .. game.Players.LocalPlayer.Name .. " | " .. game.Players.LocalPlayer.UserId,
    "?",
    function()
        print("hi")
    end
)
O:NewButton(
    "Game : " .. game.PlaceId .. " | " .. X.Name,
    "?",
    function()
        print("hi")
    end
)
O:NewButton(
    "Account Age : " .. game.Players.LocalPlayer.AccountAge .. " | Premium : No",
    "?",
    function()
        print("hi")
    end
)
O:NewButton(
    "Discord | Click To Copy",
    "?",
    function()
        setclipboard("https://discord.gg/D6q73nefFm")
    end
)
O:NewKeybind(
    "Ui Toggle (Key-Bind)",
    "?",
    Enum.KeyCode.F,
    function()
        c:ToggleUI()
    end
)
Q:NewToggle(
    "Killaura",
    "?",
    function(t)
        local Y = require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-swords"]).BedwarsSwords
        function hashFunc(Z)
            return {value = Z}
        end
        local function _(s)
            if not s then
                return {items = {}, armor = {}}
            end
            local a0, a1 =
                pcall(
                function()
                    return require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil.getInventory(
                        s
                    )
                end
            )
            if not a0 then
                return {items = {}, armor = {}}
            end
            if s.Character and s.Character:FindFirstChild("InventoryFolder") then
                local a2 = s.Character:FindFirstChild("InventoryFolder").Value
                if not a2 then
                    return a1
                end
                for p, q in next, a1 do
                    for a3, a4 in next, q do
                        if typeof(a4) == "table" and a4.itemType then
                            a4.instance = a2:FindFirstChild(a4.itemType)
                        end
                    end
                    if typeof(q) == "table" and q.itemType then
                        q.instance = a2:FindFirstChild(q.itemType)
                    end
                end
            end
            return a1
        end
        local function a5()
            local a6, a7 = -9e9, nil
            for p, q in next, _(h).items do
                local a8 = table.find(Y, q.itemType)
                if not a8 then
                end
                if a8 > a6 then
                    a7 = q
                    a6 = a8
                end
            end
            return a7
        end
        local a9 = m:Get(r["SwordRemote"])
        local aa = {["Value"] = 21}
        local ab = t
        if ab then
            spawn(
                function()
                    repeat
                        task.wait(0.12)
                        local ac = getnearestplayer(aa["Value"])
                        if
                            ac ~= nil and ac.Team ~= h.Team and isAlive(ac) and
                                ac.Character:FindFirstChild("Humanoid").Health > 0.1 and
                                isAlive(h) and
                                h.Character:FindFirstChild("Humanoid").Health > 0.1 and
                                not ac.Character:FindFirstChild("ForceField")
                         then
                            local ad = a5()
                            spawn(
                                function()
                                    local ae = Instance.new("Animation")
                                    ae.AnimationId = "rbxassetid://4947108314"
                                    local af = h.Character:FindFirstChild("Humanoid"):FindFirstChild("Animator")
                                    af:LoadAnimation(ae):Play()
                                    ae:Destroy()
                                    r["ViewmodelController"]:playAnimation(15)
                                end
                            )
                            if ad ~= nil then
                                r["SwordController"].lastAttack = game:GetService("Workspace"):GetServerTimeNow() - 0.11
                                a9:SendToServer(
                                    {
                                        ["weapon"] = ad.tool,
                                        ["entityInstance"] = ac.Character,
                                        ["validate"] = {
                                            ["raycast"] = {
                                                ["cameraPosition"] = hashFunc(j.CFrame.Position),
                                                ["cursorDirection"] = hashFunc(
                                                    Ray.new(
                                                        j.CFrame.Position,
                                                        ac.Character:FindFirstChild("HumanoidRootPart").Position
                                                    ).Unit.Direction
                                                )
                                            },
                                            ["targetPosition"] = hashFunc(
                                                ac.Character:FindFirstChild("HumanoidRootPart").Position
                                            ),
                                            ["selfPosition"] = hashFunc(
                                                h.Character:FindFirstChild("HumanoidRootPart").Position +
                                                    ((h.Character:FindFirstChild("HumanoidRootPart").Position -
                                                        ac.Character:FindFirstChild("HumanoidRootPart").Position).magnitude >
                                                        14 and
                                                        CFrame.lookAt(
                                                            h.Character:FindFirstChild("HumanoidRootPart").Position,
                                                            ac.Character:FindFirstChild("HumanoidRootPart").Position
                                                        ).LookVector * 4 or
                                                        Vector3.new(0, 0, 0))
                                            )
                                        },
                                        ["chargedAttack"] = {["chargeRatio"] = 0.8}
                                    }
                                )
                            end
                        end
                    until not ab
                end
            )
        end
    end
)
Q:NewLabel("BedNuker")
Q:NewToggle(
    "BedNuker",
    "?",
    function(t)
        local ag = RaycastParams.new()
        ag.IgnoreWater = true
        function NukerFunction(ah)
            local ai =
                game:GetService("Workspace"):Raycast(ah.Position + Vector3.new(0, 24, 0), Vector3.new(0, -27, 0), ag)
            if ai then
                local aj = ai.Instance
                for p, q in pairs(aj:GetChildren()) do
                    if q:IsA("Texture") then
                        q:Destroy()
                    end
                end
                aj.Color = Color3.fromRGB(102, 0, 255)
                aj.Material = Enum.Material.Neon
                game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer(
                    {
                        ["blockRef"] = {
                            ["blockPosition"] = Vector3.new(
                                math.round(aj.Position.X / 3),
                                math.round(aj.Position.Y / 3),
                                math.round(aj.Position.Z / 3)
                            )
                        },
                        ["hitPosition"] = Vector3.new(
                            math.round(aj.Position.X / 3),
                            math.round(aj.Position.Y / 3),
                            math.round(aj.Position.Z / 3)
                        ),
                        ["hitNormal"] = Vector3.new(
                            math.round(aj.Position.X / 3),
                            math.round(aj.Position.Y / 3),
                            math.round(aj.Position.Z / 3)
                        )
                    }
                )
            end
        end
        local aa = {["Value"] = 30}
        local ak = t
        if ak then
            spawn(
                function()
                    while task.wait(0.1) do
                        if not ak then
                            return
                        end
                        spawn(
                            function()
                                if h:GetAttribute("DenyBlockBreak") == true then
                                    h:SetAttribute("DenyBlockBreak", nil)
                                end
                            end
                        )
                        if isAlive(h) then
                            local u = getbeds()
                            for p, q in pairs(u) do
                                local D = (q.Position - h.Character.PrimaryPart.Position).Magnitude
                                if D < aa["Value"] then
                                    NukerFunction(q)
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
Q:NewLabel("ShopTier Bypass")
Q:NewButton(
    "ShopTier Bypass",
    "?",
    function()
        local al =
            debug.getupvalue(
            require(game:GetService("ReplicatedStorage").TS.games.bedwars.shop["bedwars-shop"]).BedwarsShop.getShopItem,
            2
        )
        local am
        local an
        local ao = true
        if ao then
            for p, q in pairs(al) do
                an = an or q.tiered
                am = am or q.nextTier
            end
            for p, q in pairs(al) do
                q.tiered = nil
                q.nextTier = nil
            end
        else
            for p, q in pairs(al) do
                q.tiered = an
                q.nextTier = am
            end
        end
    end
)
Q:NewLabel("Chest Stealer")
Q:NewButton(
    "Chest Stealer",
    "?",
    function()
        local al =
            debug.getupvalue(
            require(game:GetService("ReplicatedStorage").TS.games.bedwars.shop["bedwars-shop"]).BedwarsShop.getShopItem,
            2
        )
        local am
        local an
        local ao = true
        if ao then
            for p, q in pairs(al) do
                an = an or q.tiered
                am = am or q.nextTier
            end
            for p, q in pairs(al) do
                q.tiered = nil
                q.nextTier = nil
            end
        else
            for p, q in pairs(al) do
                q.tiered = an
                q.nextTier = am
            end
        end
    end
)
Q:NewLabel("Sprint")
Q:NewToggle(
    "Sprint",
    "Automatically on your sprint",
    function(t)
        if t then
            BindToStepped(
                "Sprint",
                1,
                function()
                    if F.sprinting == false then
                        F:startSprinting()
                    end
                end
            )
        else
            UnbindFromStepped("Sprint")
            F:stopSprinting()
        end
    end
)
Q:NewLabel("NoFallDamage")
Q:NewToggle(
    "NoFallDamage",
    "Prevents taking fall damage",
    function(t)
        if t then
            local ap = {["Enabled"] = true}
            local aq
            spawn(
                function()
                    repeat
                        task.wait(0.5)
                        G:Get("GroundHit"):SendToServer()
                    until ap["Enabled"] == false
                end
            )
        end
    end
)
Q:NewLabel("Velocity")
Q:NewToggle(
    "Velocity",
    "Prevents taking a knockback",
    function(t)
        if t then
            H["kbDirectionStrength"] = 0
            H["kbUpwardStrength"] = 0
        else
            H["kbDirectionStrength"] = 100
            H["kbUpwardStrength"] = 100
        end
    end
)
S:NewButton(
    "Trail",
    "?",
    function()
        local ar = Instance.new("Trail")
        local as = Instance.new("Attachment")
        local at = Instance.new("Attachment")
        ar.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        color1 = Color3.new(15 / 255, 127 / 255, 254 / 255)
        color2 = Color3.new(255 / 255, 255 / 255, 255 / 25)
        ar.Color = ColorSequence.new(color1, color2)
        as.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        at.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        ar.Attachment0 = as
        ar.Attachment1 = at
        ar.Enabled = true
        as.Position = Vector3.new(.1, -2.5, 0)
        at.Position = Vector3.new(-.1, -2.5, 0)
    end
)
S:NewLabel("Cape")
S:NewButton(
    "Cape",
    "?",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/vPH3fgUj"))()
    end
)
S:NewLabel("Cower")
S:NewToggle(
    "Cower",
    "?",
    function(t)
        getgenv().cower = t
        game:GetService("RunService").RenderStepped:connect(
            function()
                if getgenv().cower then
                    local au = game.Players.LocalPlayer.Character.Animate
                    au.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4940563117"
                    au.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4940563117"
                    au.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=4940563117"
                    au.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=4940563117"
                    au.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=4940563117"
                    au.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=4940563117"
                    au.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=4940563117"
                end
            end
        )
    end
)
S:NewLabel("Infinite Jumps")
S:NewToggle(
    "Infjump",
    "Allows you to hold space to fly up",
    function(t)
        if t then
            local av = {["Enabled"] = true}
            connectioninfjump =
                k.JumpRequest:connect(
                function(aw)
                    if av["Enabled"] then
                        h.Character:FindFirstChildOfClass "Humanoid":ChangeState("Jumping")
                    end
                end
            )
        else
            connectioninfjump:Disconnect()
        end
    end
)
S:NewLabel("Speed")
S:NewToggle(
    "Speed 23.3",
    "?",
    function(t)
        if t then
            local speedloop =
                game:GetService("RunService").Stepped:connect(
                function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23.3
                end
            )
        else
            speedloop:Disconnect()
        end
    end
)
S:NewLabel("Spider")
local function ax(ay)
    ay()
end
ax(
    function()
        local az = nil
        local aA = {["Value"] = 0}
        S:NewToggle(
            "Spider",
            "Allows you to climb up a wall",
            function(t)
                if t then
                    BindToStepped(
                        "Spider",
                        1,
                        function()
                            local aB = RaycastParams.new()
                            aB.FilterDescendantsInstances = {h.Character}
                            local aC =
                                workspace:Raycast(
                                h.Character.Humanoid.LeftLeg.Position,
                                h.Character.HumanoidRootPart.CFrame.LookVector * 1.3,
                                aB
                            )
                            az = aC and aC.Instance or nil
                            if az then
                                h.Character.HumanoidRootPart.Velocity =
                                    Vector3.new(
                                    h.Character.HumanoidRootPart.Velocity.X or 0,
                                    aA["Value"],
                                    h.Character.HumanoidRootPart.Velocity.Z or 0
                                )
                                if h.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Climbing then
                                    h.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
                                end
                            end
                        end
                    )
                else
                    UnbindFromStepped("Spider")
                end
            end
        )
        S:NewSlider(
            "Speed",
            "Adjust spider speed",
            100,
            0,
            function(aD)
                aA["Value"] = aD
            end
        )
    end
)
S:NewLabel("Camera Fixer")
S:NewButton(
    "FixCam",
    "fix camera bug on mobile",
    function()
        j.CameraType = Enum.CameraType.Fixed
        j.CameraType = Enum.CameraType.Custom
    end
)
S:NewLabel("FOV")
S:NewSlider(
    "FOV",
    "?",
    120,
    10,
    function(q)
        K(q)
    end
)
W:NewLabel("Anti-Void")
W:NewButton(
    "Anti-Void",
    "?",
    function()
        local aE =
            workspace.MapCFrames:FindFirstChild("center") and
            workspace.MapCFrames.center.Value.p == Vector3.new(77, 11, 35)
        AntiVoidP = Instance.new("Part")
        AntiVoidP.Parent = Workspace
        AntiVoidP.Name = "AntiVoid"
        AntiVoidP.CanCollide = true
        AntiVoidP.Size = Vector3.new(2048, 1, 2048)
        AntiVoidP.Anchored = true
        AntiVoidP.Transparency = 0.55
        AntiVoidP.Material = Enum.Material.Neon
        AntiVoidP.Color = Color3.fromRGB(254, 0, 4)
        AntiVoidP.Position = Vector3.new(0, 20.5, 0)
    end
)
W:NewColorPicker(
    "Anti-Void Colour",
    "?",
    Color3.fromRGB(254, 0, 4),
    function(aF)
        AntiVoidP.Color = aF
    end
)
W:NewLabel("Shaders")
W:NewButton(
    "Wither",
    "?",
    function()
        local Vignette = true
        local aG = game:GetService("Lighting")
        local aH = game:GetService("StarterGui")
        local aI = Instance.new("BloomEffect")
        local aJ = Instance.new("BlurEffect")
        local aK = Instance.new("ColorCorrectionEffect")
        local aL = Instance.new("SunRaysEffect")
        local aM = Instance.new("Sky")
        local aN = Instance.new("Atmosphere")
        for p, q in pairs(aG:GetChildren()) do
            if q then
                q:Destroy()
            end
        end
        aI.Parent = aG
        aJ.Parent = aG
        aK.Parent = aG
        aL.Parent = aG
        aM.Parent = aG
        aN.Parent = aG
        if Vignette == true then
            local aO = Instance.new("ScreenGui")
            aO.Parent = aH
            aO.IgnoreGuiInset = true
            local aP = Instance.new("ImageLabel")
            aP.Parent = aO
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.Position = UDim2.new(0.5, 0, 1, 0)
            aP.Size = UDim2.new(1, 0, 1.05, 0)
            aP.BackgroundTransparency = 1
            aP.Image = "rbxassetid://4576475446"
            aP.ImageTransparency = 0.3
            aP.ZIndex = 10
        end
        aI.Intensity = 0.3
        aI.Size = 10
        aI.Threshold = 0.8
        aJ.Size = 5
        aK.Brightness = 0.1
        aK.Contrast = 0.5
        aK.Saturation = -0.3
        aK.TintColor = Color3.fromRGB(123, 182, 232)
        aL.Intensity = 0.075
        aL.Spread = 0.727
        aM.SunAngularSize = 10
        aG.Ambient = Color3.fromRGB(2, 2, 2)
        aG.Brightness = 2.25
        aG.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        aG.ColorShift_Top = Color3.fromRGB(0, 0, 0)
        aG.EnvironmentDiffuseScale = 0.2
        aG.EnvironmentSpecularScale = 0.2
        aG.GlobalShadows = true
        aG.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
        aG.ShadowSoftness = 0.2
        aG.ClockTime = 7
        aG.GeographicLatitude = 45
        aG.ExposureCompensation = 0.5
        aN.Density = 0.364
        aN.Offset = 0.556
        aN.Color = Color3.fromRGB(110, 153, 202)
        aN.Decay = Color3.fromRGB(13, 105, 172)
        aN.Glare = 0.36
        aN.Haze = 1.72
        e.Density = 0.364
        aN.Offset = 0.556
        aN.Color = Color3.fromRGB(199, 175, 166)
        aN.Decay = Color3.fromRGB(44, 39, 33)
        aN.Glare = 0.36
        aN.Haze = 1.72
    end
)
W:NewButton(
    "Afternoon",
    "?",
    function()
        local aG = game:GetService("Lighting")
        local aH = game:GetService("StarterGui")
        local aI = Instance.new("BloomEffect")
        local aJ = Instance.new("BlurEffect")
        local aK = Instance.new("ColorCorrectionEffect")
        local aL = Instance.new("SunRaysEffect")
        local aM = Instance.new("Sky")
        local aN = Instance.new("Atmosphere")
        for p, q in pairs(aG:GetChildren()) do
            if q then
                q:Destroy()
            end
        end
        aI.Parent = aG
        aJ.Parent = aG
        aK.Parent = aG
        aL.Parent = aG
        aM.Parent = aG
        aN.Parent = aG
        if Vignette == true then
            local aO = Instance.new("ScreenGui")
            aO.Parent = aH
            aO.IgnoreGuiInset = true
            local aP = Instance.new("ImageLabel")
            aP.Parent = aO
            aP.AnchorPoint = Vector2.new(0.5, 1)
            aP.Position = UDim2.new(0.5, 0, 1, 0)
            aP.Size = UDim2.new(1, 0, 1.05, 0)
            aP.BackgroundTransparency = 1
            aP.Image = "rbxassetid://4576475446"
            aP.ImageTransparency = 0.3
            aP.ZIndex = 10
        end
        aI.Intensity = 0.3
        aI.Size = 10
        aI.Threshold = 0.8
        aJ.Size = 5
        aK.Brightness = 0.1
        aK.Contrast = 0.5
        aK.Saturation = -0.3
        aK.TintColor = Color3.fromRGB(242, 243, 243)
        aL.Intensity = 0.075
        aL.Spread = 0.727
        aM.SunAngularSize = 10
        aG.Ambient = Color3.fromRGB(2, 2, 2)
        aG.Brightness = 2.25
        aG.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        aG.ColorShift_Top = Color3.fromRGB(0, 0, 0)
        aG.EnvironmentDiffuseScale = 0.2
        aG.EnvironmentSpecularScale = 0.2
        aG.GlobalShadows = true
        aG.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
        aG.ShadowSoftness = 0.2
        aG.ClockTime = 10
        aG.GeographicLatitude = 45
        aG.ExposureCompensation = 0.5
        aN.Density = 0.364
        aN.Offset = 0.556
        aN.Color = Color3.fromRGB(249, 233, 153)
        aN.Decay = Color3.fromRGB(245, 205, 48)
        aN.Glare = 0.36
        aN.Haze = 1.72
    end
)
local aQ = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/V.G-Hub/main/Karrot-Esp"))()
aQ.Players = true
U:NewToggle(
    "Enable Esp",
    "?",
    function(aR)
        aQ:Toggle(aR)
    end
)
U:NewToggle(
    "Tracers Esp",
    "?",
    function(aR)
        aQ.Tracers = aR
    end
)
U:NewToggle(
    "Name Esp",
    "?",
    function(aR)
        aQ.Names = aR
    end
)
U:NewToggle(
    "Boxes Esp",
    "?",
    function(aR)
        aQ.Boxes = aR
    end
)
U:NewToggle(
    "Team Coordinate",
    "?",
    function(t)
        aQ.TeamColor = t
    end
)
U:NewToggle(
    "Team Mates",
    "?",
    function(t)
        aQ.TeamMates = t
    end
)
U:NewColorPicker(
    "ESP Color",
    "?",
    Color3.fromRGB(255, 255, 255),
    function(aF)
        aQ.Color = aF
    end
)
