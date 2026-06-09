-- SkiHook | Owner Build | Xeno Executor
-- Right Shift  ->  Open / close menu
-- Aim Key      ->  Configurable in menu (default RMB)

-- ── key system ───────────────────────────────────────────────────────────────

local VALID_KEYS = { "givemescript", "okhere123" }

local _ksGui = Instance.new("ScreenGui")
_ksGui.Name = "SkiHookKey"
_ksGui.ResetOnSpawn = false
_ksGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _ksGui.Parent = game:GetService("CoreGui") end)
if not _ksGui.Parent then _ksGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") end

local _ksBg = Instance.new("Frame", _ksGui)
_ksBg.Size = UDim2.new(1,0,1,0)
_ksBg.BackgroundColor3 = Color3.fromRGB(0,0,0)
_ksBg.BackgroundTransparency = 0.45
_ksBg.BorderSizePixel = 0
_ksBg.ZIndex = 10

local _ksPanel = Instance.new("Frame", _ksGui)
_ksPanel.Size = UDim2.new(0,360,0,196)
_ksPanel.Position = UDim2.new(0.5,-180,0.5,-98)
_ksPanel.BackgroundColor3 = Color3.fromRGB(17,19,26)
_ksPanel.BorderSizePixel = 0
_ksPanel.ZIndex = 11
Instance.new("UICorner", _ksPanel).CornerRadius = UDim.new(0,10)
local _ksSt = Instance.new("UIStroke", _ksPanel)
_ksSt.Color = Color3.fromRGB(180,50,255); _ksSt.Thickness = 1

local _ksTitleBar = Instance.new("Frame", _ksPanel)
_ksTitleBar.Size = UDim2.new(1,0,0,46)
_ksTitleBar.Position = UDim2.new(0,0,0,0)
_ksTitleBar.BackgroundColor3 = Color3.fromRGB(180,50,255)
_ksTitleBar.BorderSizePixel = 0
_ksTitleBar.ZIndex = 12
Instance.new("UICorner", _ksTitleBar).CornerRadius = UDim.new(0,6)
local _ksTitleFix = Instance.new("Frame", _ksPanel)
_ksTitleFix.Size = UDim2.new(1,0,0,8)
_ksTitleFix.Position = UDim2.new(0,0,0,38)
_ksTitleFix.BackgroundColor3 = Color3.fromRGB(180,50,255)
_ksTitleFix.BorderSizePixel = 0
_ksTitleFix.ZIndex = 12

local _ksLogo = Instance.new("TextLabel", _ksTitleBar)
_ksLogo.Size = UDim2.new(0,32,0,32)
_ksLogo.Position = UDim2.new(0,10,0.5,-16)
_ksLogo.BackgroundColor3 = Color3.fromRGB(255,255,255)
_ksLogo.BackgroundTransparency = 0.85
_ksLogo.BorderSizePixel = 0
_ksLogo.Text = "S"
_ksLogo.TextColor3 = Color3.fromRGB(255,255,255)
_ksLogo.TextSize = 16
_ksLogo.Font = Enum.Font.GothamBlack
_ksLogo.ZIndex = 13
Instance.new("UICorner", _ksLogo).CornerRadius = UDim.new(0,5)

local _ksTitleText = Instance.new("TextLabel", _ksTitleBar)
_ksTitleText.Size = UDim2.new(1,-56,0,20)
_ksTitleText.Position = UDim2.new(0,50,0,5)
_ksTitleText.BackgroundTransparency = 1
_ksTitleText.Text = "SkiHook"
_ksTitleText.TextColor3 = Color3.fromRGB(255,255,255)
_ksTitleText.TextSize = 15
_ksTitleText.Font = Enum.Font.GothamBlack
_ksTitleText.TextXAlignment = Enum.TextXAlignment.Left
_ksTitleText.ZIndex = 13

local _ksSubTitle = Instance.new("TextLabel", _ksTitleBar)
_ksSubTitle.Size = UDim2.new(1,-56,0,16)
_ksSubTitle.Position = UDim2.new(0,50,0,24)
_ksSubTitle.BackgroundTransparency = 1
_ksSubTitle.Text = "Key Authentication"
_ksSubTitle.TextColor3 = Color3.fromRGB(220,180,255)
_ksSubTitle.TextSize = 11
_ksSubTitle.Font = Enum.Font.Gotham
_ksSubTitle.TextXAlignment = Enum.TextXAlignment.Left
_ksSubTitle.ZIndex = 13

local _ksHint = Instance.new("TextLabel", _ksPanel)
_ksHint.Size = UDim2.new(1,-20,0,20)
_ksHint.Position = UDim2.new(0,10,0,58)
_ksHint.BackgroundTransparency = 1
_ksHint.Text = "Enter your key to continue"
_ksHint.TextColor3 = Color3.fromRGB(135,138,152)
_ksHint.TextSize = 12
_ksHint.Font = Enum.Font.Gotham
_ksHint.TextXAlignment = Enum.TextXAlignment.Left
_ksHint.ZIndex = 12

local _ksBox = Instance.new("TextBox", _ksPanel)
_ksBox.Size = UDim2.new(1,-20,0,32)
_ksBox.Position = UDim2.new(0,10,0,82)
_ksBox.BackgroundColor3 = Color3.fromRGB(32,35,46)
_ksBox.BorderSizePixel = 0
_ksBox.Text = ""
_ksBox.PlaceholderText = "key here..."
_ksBox.TextColor3 = Color3.fromRGB(210,212,220)
_ksBox.PlaceholderColor3 = Color3.fromRGB(80,84,100)
_ksBox.TextSize = 13
_ksBox.Font = Enum.Font.Gotham
_ksBox.ClearTextOnFocus = false
_ksBox.ZIndex = 12
Instance.new("UICorner", _ksBox).CornerRadius = UDim.new(0,6)
local _ksBoxSt = Instance.new("UIStroke", _ksBox)
_ksBoxSt.Color = Color3.fromRGB(50,54,70); _ksBoxSt.Thickness = 1

local _ksStatus = Instance.new("TextLabel", _ksPanel)
_ksStatus.Size = UDim2.new(1,-20,0,18)
_ksStatus.Position = UDim2.new(0,10,0,120)
_ksStatus.BackgroundTransparency = 1
_ksStatus.Text = ""
_ksStatus.TextColor3 = Color3.fromRGB(220,60,60)
_ksStatus.TextSize = 12
_ksStatus.Font = Enum.Font.Gotham
_ksStatus.TextXAlignment = Enum.TextXAlignment.Left
_ksStatus.ZIndex = 12

local _ksBtn = Instance.new("TextButton", _ksPanel)
_ksBtn.Size = UDim2.new(1,-20,0,30)
_ksBtn.Position = UDim2.new(0,10,0,154)
_ksBtn.BackgroundColor3 = Color3.fromRGB(180,50,255)
_ksBtn.BorderSizePixel = 0
_ksBtn.Text = "Unlock"
_ksBtn.TextColor3 = Color3.fromRGB(255,255,255)
_ksBtn.TextSize = 13
_ksBtn.Font = Enum.Font.GothamBold
_ksBtn.ZIndex = 12
Instance.new("UICorner", _ksBtn).CornerRadius = UDim.new(0,7)
_ksBtn.MouseEnter:Connect(function() _ksBtn.BackgroundColor3 = Color3.fromRGB(200,70,255) end)
_ksBtn.MouseLeave:Connect(function() _ksBtn.BackgroundColor3 = Color3.fromRGB(180,50,255) end)

-- ── snow animation ────────────────────────────────────────────────────────────

local _ksSnowCount = 80
local _ksFlakes = {}
math.randomseed(tick())

local function _ksMakeFlake()
    local f = Instance.new("Frame", _ksBg)
    local sz = math.random(2, 5)
    f.Size = UDim2.new(0, sz, 0, sz)
    f.Position = UDim2.new(math.random(), 0, math.random(), 0)
    f.BackgroundColor3 = Color3.fromRGB(
        math.random(210, 255),
        math.random(220, 255),
        255)
    f.BackgroundTransparency = math.random(0, 40) / 100
    f.BorderSizePixel = 0
    f.ZIndex = 10
    Instance.new("UICorner", f).CornerRadius = UDim.new(1, 0)
    return {
        frame  = f,
        x      = math.random(),
        y      = math.random(),
        speed  = math.random(4, 14) / 100,
        drift  = (math.random() - 0.5) * 0.006,
        wobble = math.random() * math.pi * 2,
    }
end

for i = 1, _ksSnowCount do
    _ksFlakes[i] = _ksMakeFlake()
end

task.spawn(function()
    local lastT = tick()
    while _ksGui and _ksGui.Parent do
        local now = tick()
        local dt  = math.min(now - lastT, 0.05)
        lastT = now
        for _, fl in ipairs(_ksFlakes) do
            if fl.frame and fl.frame.Parent then
                fl.wobble += dt * 1.2
                fl.x = fl.x + fl.drift + math.sin(fl.wobble) * 0.001
                fl.y = fl.y + fl.speed * dt
                if fl.y > 1.02 then
                    fl.y = -0.02
                    fl.x = math.random()
                end
                if fl.x < -0.01 then fl.x = 1.01 end
                if fl.x > 1.01  then fl.x = -0.01 end
                fl.frame.Position = UDim2.new(fl.x, 0, fl.y, 0)
            end
        end
        task.wait(0.016)
    end
end)

-- ─────────────────────────────────────────────────────────────────────────────

local _ksUnlocked = false
local _ksBusy     = false

local function _ksTryKey()
    if _ksBusy then return end
    local entered = _ksBox.Text:lower():gsub("[^%a%d]", "")
    if entered == "" then return end

    for _, k in ipairs(VALID_KEYS) do
        if entered == k:lower():gsub("[^%a%d]", "") then
            _ksStatus.TextColor3 = Color3.fromRGB(60, 210, 90)
            _ksStatus.Text       = "✓  Unlocked!"
            _ksBtn.BackgroundColor3 = Color3.fromRGB(50, 180, 90)
            task.wait(0.35)
            _ksUnlocked = true
            _ksGui:Destroy()
            return
        end
    end

    _ksBusy = true
    _ksStatus.TextColor3    = Color3.fromRGB(220, 60, 60)
    _ksStatus.Text          = "✗  Invalid key. Try again."
    _ksBox.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
    _ksBox.Text             = ""
    task.delay(0.3, function()
        pcall(function() _ksBox.BackgroundColor3 = Color3.fromRGB(32,35,46) end)
    end)
    task.delay(2, function()
        pcall(function() _ksStatus.Text = "" end)
        _ksBusy = false
    end)
end

_ksBtn.MouseButton1Click:Connect(_ksTryKey)
_ksBox.FocusLost:Connect(function(enter) if enter then _ksTryKey() end end)

repeat task.wait() until _ksUnlocked

-- ─────────────────────────────────────────────────────────────────────────────

local Players          = game:GetService("Players")
local RunService       = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService      = game:GetService("HttpService")
local TweenService     = game:GetService("TweenService")
local Lighting         = game:GetService("Lighting")
local Camera           = workspace.CurrentCamera
local LocalPlayer      = Players.LocalPlayer

-- ── settings ─────────────────────────────────────────────────────────────────

local S = {
    ESP = {
        Enabled   = false,
        Boxes     = true,
        Names     = true,
        Bars      = true,
        Distance  = true,
        Tracers   = false,
        Skeleton  = false,
        Tool      = false,
    },
    Aimbot = {
        Enabled       = false,
        FOVCircle     = true,
        Part          = "Head",
        Smooth        = 8,
        FOV           = 180,
        Key           = "MouseButton2",
        FOVColor      = {0, 200, 255},
        FOVFill       = false,
        FOVFillAlpha  = 15,
        FOVColorSpin  = false,
        FOVSpinSpeed  = 0.5,
        WallCheck     = true,
        TriggerBot    = false,
        TriggerDelay  = 50,
        AimKeyMode    = "Hold",
    },
    Misc = {
        Fly        = false,
        FlySpeed   = 50,
        Noclip     = false,
        WorldSnow  = false,
        SnowRate   = 120,
        SnowSpeed  = 10,
        HitSound   = false,
        HitVolume  = 100,
        Spin       = false,
        SpinSpeed  = 360,
        HideMode    = "Off",
        AntiAim     = "Off",
        ThirdPerson = false,
        TPZoom      = 20,
        Scope         = false,
        ScopeRainbow  = true,
        ScopeSpinSpeed= 90,
        ScopeSize     = 20,
        ScopeTextShow = true,
        ScopeText     = "SkiHook",
        HitNotif      = false,
        BunnyHop      = false,
        Boost         = false,
        BoostSpeed    = 50,
        Desync        = false,
        DesyncKey     = "X",
        DesyncSpeed   = 20,
        ViewFOV       = false,
        FOVValue      = 90,
        FPSBoost      = false,
    },
    Theme = {
        Name   = "Purple",
        Accent = {180, 50, 255},
    },
    World = {
        SkyEnabled     = false,
        SkyColor       = {255, 120, 180},
        SkyPreset      = "None",
        SunEnabled     = false,
        SunColor       = {255, 180,  80},
        FogEnabled     = false,
        FogColor       = {180, 200, 255},
        FogDensity     = 200,
        TimeEnabled    = false,
        Time           = 14,
        BrightEnabled  = false,
        Brightness     = 2,
    },
}

-- ── config ────────────────────────────────────────────────────────────────────

local CFG_FOLDER = "SkiHook"

local function _sanitizeName(name)
    name = tostring(name or "default"):gsub("[^%w%-_%.]",""):match("^%s*(.-)%s*$") or "default"
    return (name == "" and "default" or name)
end

local function SaveNamedConfig(name)
    name = _sanitizeName(name)
    if not isfolder(CFG_FOLDER) then makefolder(CFG_FOLDER) end
    local ok, err = pcall(writefile, CFG_FOLDER.."/"..name..".json", HttpService:JSONEncode(S))
    if not ok then warn("[SkiHook] Save failed: "..tostring(err)) end
end

local function LoadNamedConfig(name)
    name = _sanitizeName(name)
    local path = CFG_FOLDER.."/"..name..".json"
    if not isfile(path) then return end
    local ok, data = pcall(function() return HttpService:JSONDecode(readfile(path)) end)
    if not ok or type(data) ~= "table" then return end
    if type(data.ESP)    == "table" then for k,v in pairs(data.ESP)    do if S.ESP[k]    ~= nil then S.ESP[k]=v    end end end
    if type(data.Aimbot) == "table" then for k,v in pairs(data.Aimbot) do if S.Aimbot[k] ~= nil then S.Aimbot[k]=v end end end
    if type(data.Misc)   == "table" then for k,v in pairs(data.Misc)   do if S.Misc[k]   ~= nil then S.Misc[k]=v   end end end
    if type(data.World)  == "table" then for k,v in pairs(data.World)  do if S.World[k]  ~= nil then S.World[k]=v  end end end
    if type(data.Theme)  == "table" then
        if type(data.Theme.Name)   == "string" then S.Theme.Name   = data.Theme.Name   end
        if type(data.Theme.Accent) == "table"  then S.Theme.Accent = data.Theme.Accent end
    end
end

local function ListConfigs()
    if not isfolder(CFG_FOLDER) then return {} end
    local ok, files = pcall(listfiles, CFG_FOLDER)
    if not ok or type(files) ~= "table" then return {} end
    local names = {}
    for _, p in ipairs(files) do
        local n = tostring(p):match("([^/\\]+)%.json$")
        if n then table.insert(names, n) end
    end
    table.sort(names)
    return names
end

if not isfolder(CFG_FOLDER) then makefolder(CFG_FOLDER) end
LoadNamedConfig("default")

-- ── colours ───────────────────────────────────────────────────────────────────

local C = {
    Box      = Color3.fromRGB(220, 60,  60),
    Shadow   = Color3.fromRGB(0,   0,   0),
    White    = Color3.fromRGB(235, 235, 235),
    Grey     = Color3.fromRGB(140, 140, 155),
    HPHigh   = Color3.fromRGB(60,  210, 90),
    HPMid    = Color3.fromRGB(255, 165, 0),
    HPLow    = Color3.fromRGB(220, 60,  60),
    Accent   = Color3.fromRGB(90,  160, 255),
    FOV      = Color3.fromRGB(0, 200, 255),
}

local function HPColor(pct)
    if pct > .6 then return C.HPHigh
    elseif pct > .3 then return C.HPMid
    else return C.HPLow end
end

-- ── drawing helpers ───────────────────────────────────────────────────────────

local function D(kind, props)
    local o = Drawing.new(kind)
    for k,v in pairs(props) do o[k]=v end
    return o
end

-- ── skeleton bones ────────────────────────────────────────────────────────────

local SKELETON_BONES = {
    {"Head","UpperTorso"},
    {"UpperTorso","LowerTorso"},
    {"UpperTorso","LeftUpperArm"},  {"LeftUpperArm","LeftLowerArm"},  {"LeftLowerArm","LeftHand"},
    {"UpperTorso","RightUpperArm"}, {"RightUpperArm","RightLowerArm"},{"RightLowerArm","RightHand"},
    {"LowerTorso","LeftUpperLeg"},  {"LeftUpperLeg","LeftLowerLeg"},  {"LeftLowerLeg","LeftFoot"},
    {"LowerTorso","RightUpperLeg"}, {"RightUpperLeg","RightLowerLeg"},{"RightLowerLeg","RightFoot"},
}
local R6_MAP = {
    UpperTorso="Torso",   LowerTorso="Torso",
    LeftUpperArm="Left Arm",  LeftLowerArm="Left Arm",  LeftHand="Left Arm",
    RightUpperArm="Right Arm",RightLowerArm="Right Arm",RightHand="Right Arm",
    LeftUpperLeg="Left Leg",  LeftLowerLeg="Left Leg",  LeftFoot="Left Leg",
    RightUpperLeg="Right Leg",RightLowerLeg="Right Leg",RightFoot="Right Leg",
}
local function FindBonePart(char, name)
    return char:FindFirstChild(name) or (R6_MAP[name] and char:FindFirstChild(R6_MAP[name]))
end

-- ── ESP objects ───────────────────────────────────────────────────────────────

local ESPCache = {}

local function MakeESP(player)
    if player == LocalPlayer then return end
    local bones = {}
    for _ = 1, #SKELETON_BONES do
        table.insert(bones, D("Line",{Visible=false,Color=Color3.fromRGB(255,255,255),Thickness=1}))
    end
    ESPCache[player] = {
        BoxShadow = D("Square",{Visible=false,Filled=false,Color=C.Shadow,   Thickness=3}),
        Box       = D("Square",{Visible=false,Filled=false,Color=C.Box,      Thickness=1}),
        Name      = D("Text",  {Visible=false,Color=C.White, Size=13,Center=true,
                                Outline=true,OutlineColor=C.Shadow,Font=2}),
        HBbg      = D("Square",{Visible=false,Filled=true, Color=Color3.fromRGB(0,0,0)}),
        HBfill    = D("Square",{Visible=false,Filled=true}),
        Dist      = D("Text",  {Visible=false,Color=C.Grey,  Size=12,Center=true,
                                Outline=true,OutlineColor=C.Shadow,Font=2}),
        Tracer    = D("Line",  {Visible=false,Color=C.Box,   Thickness=1}),
        Tool      = D("Text",  {Visible=false,Color=Color3.fromRGB(255,210,80),Size=12,Center=true,
                                Outline=true,OutlineColor=C.Shadow,Font=2}),
        Bones     = bones,
    }
end

local function KillESP(player)
    local esp = ESPCache[player]
    if not esp then return end
    for _, line in ipairs(esp.Bones) do line:Remove() end
    for k, o in pairs(esp) do
        if k ~= "Bones" then o:Remove() end
    end
    ESPCache[player] = nil
end

for _,p in ipairs(Players:GetPlayers()) do MakeESP(p) end
Players.PlayerAdded:Connect(MakeESP)
Players.PlayerRemoving:Connect(KillESP)

local FOVDraw = D("Circle",{Visible=false,Color=C.FOV,Thickness=1,
                             Filled=false,NumSides=64,Radius=S.Aimbot.FOV})
local FOVFillDraw = D("Circle",{Visible=false,Color=C.FOV,Thickness=0,
                                  Filled=true,NumSides=64,Radius=S.Aimbot.FOV,
                                  Transparency=1-(S.Aimbot.FOVFillAlpha/100)})

local ScopeShad = {
    D("Line",{Visible=false,Color=Color3.fromRGB(0,0,0),Thickness=3}),
    D("Line",{Visible=false,Color=Color3.fromRGB(0,0,0),Thickness=3}),
    D("Line",{Visible=false,Color=Color3.fromRGB(0,0,0),Thickness=3}),
    D("Line",{Visible=false,Color=Color3.fromRGB(0,0,0),Thickness=3}),
}
local ScopeLines = {
    D("Line",{Visible=false,Color=Color3.fromRGB(255,255,255),Thickness=1.5}),
    D("Line",{Visible=false,Color=Color3.fromRGB(255,255,255),Thickness=1.5}),
    D("Line",{Visible=false,Color=Color3.fromRGB(255,255,255),Thickness=1.5}),
    D("Line",{Visible=false,Color=Color3.fromRGB(255,255,255),Thickness=1.5}),
}
local ScopeDot = D("Circle",{Visible=false,Color=Color3.fromRGB(255,255,255),
                               Filled=true,Radius=1.5,NumSides=16,Thickness=0})
local ScopeTextDraw = D("Text",{Visible=false,Color=Color3.fromRGB(255,255,255),
                                 Size=14,Center=true,Outline=true,
                                 OutlineColor=Color3.fromRGB(0,0,0),Text="SkiHook"})
pcall(function() ScopeTextDraw.Font = Drawing.Fonts.UI end)

-- ── update one player's ESP ───────────────────────────────────────────────────

local function UpdateESP(player, esp)
    local function hide()
        for k, o in pairs(esp) do
            if k == "Bones" then
                for _, line in ipairs(o) do line.Visible = false end
            else
                o.Visible = false
            end
        end
    end

    local char = player.Character
    if not char then return hide() end
    local hrp  = char:FindFirstChild("HumanoidRootPart")
    local head = char:FindFirstChild("Head")
    local hum  = char:FindFirstChild("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then return hide() end

    local headWorld = head and head.Position or (hrp.Position + Vector3.new(0,1.5,0))
    local footWorld = hrp.Position - Vector3.new(0, 3, 0)
    local hs, onScreen = Camera:WorldToViewportPoint(headWorld)
    local fs           = Camera:WorldToViewportPoint(footWorld)
    if not onScreen then return hide() end

    local sx, sy  = hs.X, hs.Y
    local bh = math.max(math.abs(sy - fs.Y), 12)
    local bw = math.max(bh * 0.55, 8)
    local bx = sx - bw/2
    local by = sy
    local pct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)

    if S.ESP.Boxes then
        esp.BoxShadow.Position = Vector2.new(bx-1, by-1)
        esp.BoxShadow.Size     = Vector2.new(bw+2, bh+2)
        esp.BoxShadow.Visible  = true
        esp.Box.Position = Vector2.new(bx, by)
        esp.Box.Size     = Vector2.new(bw, bh)
        esp.Box.Visible  = true
    else
        esp.BoxShadow.Visible = false
        esp.Box.Visible = false
    end

    if S.ESP.Names then
        esp.Name.Position = Vector2.new(sx, by - 18)
        esp.Name.Text     = player.Name
        esp.Name.Visible  = true
    else
        esp.Name.Visible = false
    end

    if S.ESP.Bars then
        local hx   = bx - 7
        local fill = math.max(bh * pct, 1)
        esp.HBbg.Position = Vector2.new(hx-1, by-1)
        esp.HBbg.Size     = Vector2.new(6, bh+2)
        esp.HBbg.Visible  = true
        esp.HBfill.Position = Vector2.new(hx, by + bh - fill)
        esp.HBfill.Size     = Vector2.new(4, fill)
        esp.HBfill.Color    = HPColor(pct)
        esp.HBfill.Visible  = true
    else
        esp.HBbg.Visible   = false
        esp.HBfill.Visible = false
    end

    if S.ESP.Distance then
        local dist = (Camera.CFrame.Position - hrp.Position).Magnitude
        esp.Dist.Position = Vector2.new(sx, by + bh + 3)
        esp.Dist.Text     = string.format("[%dm]", math.floor(dist/3.5))
        esp.Dist.Visible  = true
    else
        esp.Dist.Visible = false
    end

    if S.ESP.Tool then
        local toolObj = char:FindFirstChildOfClass("Tool")
        if toolObj then
            local distOffset = S.ESP.Distance and 14 or 3
            esp.Tool.Position = Vector2.new(sx, by + bh + distOffset)
            esp.Tool.Text     = "[" .. toolObj.Name .. "]"
            esp.Tool.Visible  = true
        else
            esp.Tool.Visible = false
        end
    else
        esp.Tool.Visible = false
    end

    if S.ESP.Tracers then
        local vp = Camera.ViewportSize
        esp.Tracer.From    = Vector2.new(vp.X/2, vp.Y)
        esp.Tracer.To      = Vector2.new(sx, by + bh)
        esp.Tracer.Visible = true
    else
        esp.Tracer.Visible = false
    end

    if S.ESP.Skeleton then
        for i, pair in ipairs(SKELETON_BONES) do
            local p1 = FindBonePart(char, pair[1])
            local p2 = FindBonePart(char, pair[2])
            local line = esp.Bones[i]
            if p1 and p2 then
                local s1, on1 = Camera:WorldToViewportPoint(p1.Position)
                local s2, on2 = Camera:WorldToViewportPoint(p2.Position)
                if on1 and on2 and s1.Z > 0 and s2.Z > 0 then
                    line.From    = Vector2.new(s1.X, s1.Y)
                    line.To      = Vector2.new(s2.X, s2.Y)
                    line.Visible = true
                else
                    line.Visible = false
                end
            else
                line.Visible = false
            end
        end
    else
        for _, line in ipairs(esp.Bones) do line.Visible = false end
    end
end

-- ── aimbot ────────────────────────────────────────────────────────────────────

local _wallParams = RaycastParams.new()
_wallParams.FilterType = Enum.RaycastFilterType.Exclude

local function IsTargetVisible(targetPos)
    local char = LocalPlayer.Character
    _wallParams.FilterDescendantsInstances = char and {char} or {}
    local origin    = Camera.CFrame.Position
    local direction = targetPos - origin
    local result    = workspace:Raycast(origin, direction, _wallParams)
    if not result then return true end
    local hitModel = result.Instance:FindFirstAncestorOfClass("Model")
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character == hitModel then return true end
    end
    return false
end

local function AimbotTarget(cx, cy)
    local bestD   = S.Aimbot.FOV
    local bestPos = nil
    for _,p in ipairs(Players:GetPlayers()) do
        if p == LocalPlayer then continue end
        local char = p.Character
        if not char then continue end
        local hum = char:FindFirstChild("Humanoid")
        if not hum or hum.Health <= 0 then continue end
        local part = char:FindFirstChild(S.Aimbot.Part) or char:FindFirstChild("HumanoidRootPart")
        if not part then continue end
        local sp, vis = Camera:WorldToViewportPoint(part.Position)
        if not vis then continue end
        if S.Aimbot.WallCheck and not IsTargetVisible(part.Position) then continue end
        local d = math.sqrt((sp.X-cx)^2 + (sp.Y-cy)^2)
        if d < bestD then bestD=d; bestPos=Vector2.new(sp.X,sp.Y) end
    end
    return bestPos
end

-- ── keybind helpers ───────────────────────────────────────────────────────────

local _aimToggleOn = false

local function IsAimKeyHeld()
    if S.Aimbot.AimKeyMode == "Toggle" then return _aimToggleOn end
    local k = S.Aimbot.Key
    if k == "MouseButton1" then
        return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
    elseif k == "MouseButton2" then
        return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
    elseif k == "MouseButton3" then
        return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton3)
    else
        local ok, kc = pcall(function() return Enum.KeyCode[k] end)
        if ok and kc then return UserInputService:IsKeyDown(kc) end
    end
    return false
end

local function KeyToDisplay(k)
    if k == "MouseButton1" then return "LMB"
    elseif k == "MouseButton2" then return "RMB"
    elseif k == "MouseButton3" then return "MMB"
    else return k end
end

-- forward declarations
local snowPart, snowEmitter
local _triggerFiring   = false
local _spinAngle       = 0
local _origHipHeight   = nil
local _aaGyro          = nil
local _prevHideMode    = "Off"
local _floorHideParams = RaycastParams.new()
_floorHideParams.FilterType = Enum.RaycastFilterType.Exclude

-- ── GUI themes ────────────────────────────────────────────────────────────────

local PANEL_W = 700
local COL_W   = math.floor((PANEL_W - 3) / 2)

local THEMES = {
    {name="Purple", bg=Color3.fromRGB(17,19,26),   bg2=Color3.fromRGB(24,26,34),  bg3=Color3.fromRGB(32,35,46),  sep=Color3.fromRGB(40,44,58),   accent=Color3.fromRGB(180,50,255)},
    {name="Blue",   bg=Color3.fromRGB(15,17,22),   bg2=Color3.fromRGB(20,23,32),  bg3=Color3.fromRGB(28,32,45),  sep=Color3.fromRGB(38,42,58),   accent=Color3.fromRGB(0,115,210) },
    {name="Red",    bg=Color3.fromRGB(20,16,18),   bg2=Color3.fromRGB(28,22,24),  bg3=Color3.fromRGB(38,30,32),  sep=Color3.fromRGB(55,40,42),   accent=Color3.fromRGB(220,50,60) },
    {name="Green",  bg=Color3.fromRGB(15,20,18),   bg2=Color3.fromRGB(20,27,24),  bg3=Color3.fromRGB(26,36,32),  sep=Color3.fromRGB(36,48,44),   accent=Color3.fromRGB(50,200,80) },
    {name="Orange", bg=Color3.fromRGB(20,17,13),   bg2=Color3.fromRGB(28,24,18),  bg3=Color3.fromRGB(38,32,24),  sep=Color3.fromRGB(55,46,34),   accent=Color3.fromRGB(255,145,0) },
}
local function FindTheme(name)
    for _,t in ipairs(THEMES) do if t.name==name then return t end end
end
local _T      = FindTheme(S.Theme.Name) or THEMES[1]
local _BG     = _T.bg
local _BG2    = _T.bg2
local _BG3    = _T.bg3
local _SEP    = _T.sep
local _ACCENT = _T.accent
local _TXT    = Color3.fromRGB(210, 212, 220)
local _TXT2   = Color3.fromRGB(135, 138, 152)

local _rABg,_rATxt,_rBg,_rBg2,_rBg3,_rSep,_rStroke = {},{},{},{},{},{},{}
local function RA(i)   table.insert(_rABg,  i); i.BackgroundColor3=_ACCENT; return i end
local function RT(i)   table.insert(_rATxt, i); i.TextColor3=_ACCENT;       return i end
local function RBg(i)  table.insert(_rBg,   i); i.BackgroundColor3=_BG;     return i end
local function RBg2(i) table.insert(_rBg2,  i); i.BackgroundColor3=_BG2;    return i end
local function RBg3(i) table.insert(_rBg3,  i); i.BackgroundColor3=_BG3;    return i end
local function RSep(i) table.insert(_rSep,  i); i.BackgroundColor3=_SEP;    return i end
local function RSt(i)  table.insert(_rStroke,i);i.Color=_SEP;               return i end

local function SetTheme(t)
    _BG=t.bg; _BG2=t.bg2; _BG3=t.bg3; _SEP=t.sep; _ACCENT=t.accent
    for _,e in ipairs(_rBg)     do e.BackgroundColor3=_BG     end
    for _,e in ipairs(_rBg2)    do e.BackgroundColor3=_BG2    end
    for _,e in ipairs(_rBg3)    do e.BackgroundColor3=_BG3    end
    for _,e in ipairs(_rSep)    do e.BackgroundColor3=_SEP    end
    for _,e in ipairs(_rStroke) do e.Color=_SEP               end
    for _,e in ipairs(_rABg)    do e.BackgroundColor3=_ACCENT end
    for _,e in ipairs(_rATxt)   do e.TextColor3=_ACCENT       end
    S.Theme.Name = t.name
    S.Theme.Accent = {math.floor(t.accent.R*255+.5),math.floor(t.accent.G*255+.5),math.floor(t.accent.B*255+.5)}
end

-- ── RenderStepped loop ────────────────────────────────────────────────────────

RunService.RenderStepped:Connect(function(dt)
    -- watermark fps
    _fpsSmooth = _fpsSmooth + (1/dt - _fpsSmooth) * 0.1
    if _wmLine2 and _wmLine2.Parent then
        _wmLine2.Text = string.format("%s  |  %d fps", _wmGameName:sub(1,28), math.floor(_fpsSmooth))
    end

    -- ESP
    if S.ESP.Enabled then
        for player, esp in pairs(ESPCache) do
            UpdateESP(player, esp)
        end
    else
        for _, esp in pairs(ESPCache) do
            for k, o in pairs(esp) do
                if k == "Bones" then
                    for _, line in ipairs(o) do line.Visible = false end
                else
                    o.Visible = false
                end
            end
        end
    end

    -- FOV circle
    local vp = Camera.ViewportSize
    local cx, cy = vp.X/2, vp.Y/2
    if S.Aimbot.Enabled and S.Aimbot.FOVCircle then
        local fovColor
        if S.Aimbot.FOVColorSpin then
            local t = tick()
            local spd = S.Aimbot.FOVSpinSpeed
            local h1 = (t * spd) % 1
            local h2 = (h1 + 0.5) % 1
            local blend = (math.sin(t * spd * math.pi * 2) + 1) / 2
            fovColor = Color3.fromHSV(h1, 1, 1):Lerp(Color3.fromHSV(h2, 1, 1), blend)
        else
            fovColor = Color3.fromRGB(table.unpack(S.Aimbot.FOVColor))
        end
        FOVDraw.Position    = Vector2.new(cx, cy)
        FOVDraw.Radius      = S.Aimbot.FOV
        FOVDraw.Color       = fovColor
        FOVDraw.Visible     = true
        FOVFillDraw.Position = Vector2.new(cx, cy)
        FOVFillDraw.Radius   = S.Aimbot.FOV
        FOVFillDraw.Color    = fovColor
        FOVFillDraw.Transparency = S.Aimbot.FOVFill and (1 - S.Aimbot.FOVFillAlpha/100) or 1
        FOVFillDraw.Visible  = S.Aimbot.FOVFill
    else
        FOVDraw.Visible     = false
        FOVFillDraw.Visible = false
    end

    -- Aimbot
    if S.Aimbot.Enabled and IsAimKeyHeld() then
        local target = AimbotTarget(cx, cy)
        if target then
            local smooth = math.max(S.Aimbot.Smooth, 1)
            mousemoverel(
                (target.X - cx) / smooth,
                (target.Y - cy) / smooth
            )
        end
    end

    -- Scope crosshair
    if S.Misc.Scope then
        local t    = tick()
        local sz   = S.Misc.ScopeSize
        local spin = S.Misc.ScopeSpinSpeed
        local ang  = math.rad(t * spin % 360)
        local col
        if S.Misc.ScopeRainbow then
            local h = (t * 0.15) % 1
            col = Color3.fromHSV(h, 1, 1)
        else
            col = _ACCENT
        end
        local dirs = {
            {math.cos(ang),       math.sin(ang)},
            {math.cos(ang+math.pi/2), math.sin(ang+math.pi/2)},
            {math.cos(ang+math.pi),   math.sin(ang+math.pi)},
            {math.cos(ang+3*math.pi/2), math.sin(ang+3*math.pi/2)},
        }
        local gap = 5
        for i = 1, 4 do
            local dx, dy = dirs[i][1], dirs[i][2]
            ScopeShad[i].From    = Vector2.new(cx + dx*gap,    cy + dy*gap)
            ScopeShad[i].To      = Vector2.new(cx + dx*(gap+sz), cy + dy*(gap+sz))
            ScopeShad[i].Visible = true
            ScopeLines[i].From   = Vector2.new(cx + dx*gap,    cy + dy*gap)
            ScopeLines[i].To     = Vector2.new(cx + dx*(gap+sz), cy + dy*(gap+sz))
            ScopeLines[i].Color  = col
            ScopeLines[i].Visible = true
        end
        ScopeDot.Position = Vector2.new(cx, cy)
        ScopeDot.Color    = col
        ScopeDot.Visible  = true
        if S.Misc.ScopeTextShow then
            ScopeTextDraw.Position = Vector2.new(cx, cy + sz + gap + 10)
            ScopeTextDraw.Text     = S.Misc.ScopeText
            ScopeTextDraw.Color    = col
            ScopeTextDraw.Visible  = true
        else
            ScopeTextDraw.Visible = false
        end
    else
        for i = 1, 4 do
            ScopeShad[i].Visible  = false
            ScopeLines[i].Visible = false
        end
        ScopeDot.Visible      = false
        ScopeTextDraw.Visible = false
    end

    -- Spin
    if S.Misc.Spin then
        local char = LocalPlayer.Character
        local hrp  = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            _spinAngle = (_spinAngle + S.Misc.SpinSpeed * dt) % 360
            hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0, math.rad(_spinAngle), 0)
        end
    end

    -- Third person
    if S.Misc.ThirdPerson then
        Camera.CameraType = Enum.CameraType.Custom
        local char = LocalPlayer.Character
        local hrp  = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            local zoom = S.Misc.TPZoom
            Camera.CFrame = Camera.CFrame:Lerp(
                CFrame.new(hrp.Position) * CFrame.Angles(0, math.rad(_spinAngle), 0)
                    * CFrame.new(0, 2, zoom),
                0.15)
        end
    end
end)

-- ── InputBegan ────────────────────────────────────────────────────────────────

UserInputService.InputBegan:Connect(function(inp, gpe)
    if inp.KeyCode == Enum.KeyCode.RightShift then
        TogglePanel()
        ShowKeybindFeed("RShift", Panel.Visible and "Menu Open" or "Menu Close",
            Color3.fromRGB(160, 80, 255))
    end

    if gpe then return end

    -- Fly toggle
    if inp.KeyCode == Enum.KeyCode.F and S.Misc.Fly then end

    -- Aimbot toggle mode
    if S.Aimbot.AimKeyMode == "Toggle" then
        local k = S.Aimbot.Key
        local matched = false
        if k == "MouseButton1" and inp.UserInputType == Enum.UserInputType.MouseButton1 then matched = true
        elseif k == "MouseButton2" and inp.UserInputType == Enum.UserInputType.MouseButton2 then matched = true
        elseif k == "MouseButton3" and inp.UserInputType == Enum.UserInputType.MouseButton3 then matched = true
        else
            local ok, kc = pcall(function() return Enum.KeyCode[k] end)
            if ok and kc and inp.KeyCode == kc then matched = true end
        end
        if matched then
            _aimToggleOn = not _aimToggleOn
            ShowKeybindFeed(KeyToDisplay(k), _aimToggleOn and "Aim ON" or "Aim OFF",
                _aimToggleOn and Color3.fromRGB(60,210,90) or Color3.fromRGB(220,60,60))
        end
    end

    -- Desync key
    if S.Misc.Desync then
        local dk = S.Misc.DesyncKey
        local ok2, dkc = pcall(function() return Enum.KeyCode[dk] end)
        if ok2 and dkc and inp.KeyCode == dkc then
            _DS.active = not _DS.active
            if not _DS.active and _deactivateDesync then _deactivateDesync() end
            ShowKeybindFeed(dk, _DS.active and "Desync ON" or "Desync OFF",
                _DS.active and Color3.fromRGB(255,145,0) or Color3.fromRGB(140,140,155))
        end
    end
end)

print("[SkiHook] Loaded successfully — RightShift to open menu")
