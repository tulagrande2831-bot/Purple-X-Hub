--[[
    PURPLE X HUB - TRUE OMNI-UI (V11)
    OWNER: tulagrande2831
    STYLES: Redz (Sidebar), Quantum (Topbar), Gravity (Neon Border)
]]

if _G.PurpleXLoaded then return end
_G.PurpleXLoaded = true

local Players = game:GetService("Players")
local LPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- // UTILS //
local function CreateRounded(obj, res)
    local corner = Instance.new("UICorner", obj)
    corner.CornerRadius = UDim.new(0, res or 8)
end

local function CreateStroke(obj, color, thick)
    local stroke = Instance.new("UIStroke", obj)
    stroke.Color = color
    stroke.Thickness = thick or 1
end

-- // --- BUILDER ENGINES --- //

-- ENGINE 1: REDZ HUB STYLE (SIDEBAR)
local function BuildRedz(UIName, Color)
    local RedzGui = Instance.new("ScreenGui", CoreGui)
    local Main = Instance.new("Frame", RedzGui)
    Main.Size = UDim2.new(0, 520, 0, 320)
    Main.Position = UDim2.new(0.5, -260, 0.5, -160)
    Main.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
    CreateRounded(Main, 10)
    Main.Active = true; Main.Draggable = true

    -- Sidebar
    local Sidebar = Instance.new("Frame", Main)
    Sidebar.Size = UDim2.new(0, 140, 1, 0)
    Sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    CreateRounded(Sidebar, 10)

    local Title = Instance.new("TextLabel", Sidebar)
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.Text = UIName
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.Font = Enum.Font.GothamBold
    Title.BackgroundTransparency = 1

    -- Content Area
    local Content = Instance.new("Frame", Main)
    Content.Position = UDim2.new(0, 150, 0, 10)
    Content.Size = UDim2.new(1, -160, 1, -20)
    Content.BackgroundTransparency = 1

    local Scroll = Instance.new("ScrollingFrame", Content)
    Scroll.Size = UDim2.new(1, 0, 1, 0)
    Scroll.BackgroundTransparency = 1
    Scroll.ScrollBarThickness = 2
    local Layout = Instance.new("UIListLayout", Scroll)
    Layout.Padding = UDim.new(0, 6)

    -- Shared Button Builder
    local function AddBtn(text, callback)
        local b = Instance.new("TextButton", Scroll)
        b.Size = UDim2.new(1, -10, 0, 35)
        b.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
        b.Text = text
        b.TextColor3 = Color3.new(1, 1, 1)
        b.Font = Enum.Font.Gotham
        CreateRounded(b, 5)
        b.Activated:Connect(callback)
    end

    -- Add your 40+ Functions here
    AddBtn("ULTRA FAST ATTACK", function() end)
    AddBtn("AUTO FARM LEVEL", function() end)
end

-- ENGINE 2: QUANTUM ONYX STYLE (TOPBAR)
local function BuildQuantum(UIName, Color)
    local QuantGui = Instance.new("ScreenGui", CoreGui)
    local Main = Instance.new("Frame", QuantGui)
    Main.Size = UDim2.new(0, 480, 0, 300)
    Main.Position = UDim2.new(0.5, -240, 0.5, -150)
    Main.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
    CreateRounded(Main, 12)
    Main.Active = true; Main.Draggable = true

    -- Topbar
    local Topbar = Instance.new("Frame", Main)
    Topbar.Size = UDim2.new(1, 0, 0, 45)
    Topbar.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    CreateRounded(Topbar, 12)

    local Title = Instance.new("TextLabel", Topbar)
    Title.Position = UDim2.new(0, 15, 0, 0)
    Title.Size = UDim2.new(0.4, 0, 1, 0)
    Title.Text = UIName
    Title.TextColor3 = Color
    Title.Font = Enum.Font.GothamBold
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.BackgroundTransparency = 1

    -- Shared Button Builder (Quantum Style)
    local function AddBtn(text, callback)
        local b = Instance.new("TextButton", Main)
        b.Size = UDim2.new(1, -30, 0, 35)
        b.Position = UDim2.new(0, 15, 0, 60) -- Esto necesita lógica de layout compleja en V12
        b.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
        b.Text = text
        b.TextColor3 = Color
        b.Font = Enum.Font.Gotham
        CreateRounded(b, 5)
        CreateStroke(b, Color, 1)
        b.Activated:Connect(callback)
    end

    -- Add your 40+ Functions here
    AddBtn("AUTO FARM LEVEL", function() end)
end

-- ENGINE 3: GRAVITY/BANANA STYLE (NEON BORDER)
local function BuildGravity(UIName, Color)
    local GravGui = Instance.new("ScreenGui", CoreGui)
    local Main = Instance.new("Frame", GravGui)
    Main.Size = UDim2.new(0, 400, 0, 280)
    Main.Position = UDim2.new(0.5, -200, 0.5, -140)
    Main.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
    Main.BackgroundTransparency = 0.2
    CreateRounded(Main, 15)
    CreateStroke(Main, Color, 2) -- El borde de neón brillante
    Main.Active = true; Main.Draggable = true

    -- Title Bar
    local TitleBar = Instance.new("Frame", Main)
    TitleBar.Size = UDim2.new(1, -20, 0, 30)
    TitleBar.Position = UDim2.new(0, 10, 0, 10)
    TitleBar.BackgroundTransparency = 1

    local Title = Instance.new("TextLabel", TitleBar)
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Text = UIName
    Title.TextColor3 = Color
    Title.Font = Enum.Font.GothamBold
    Title.BackgroundTransparency = 1

    -- Shared Button Builder (Gravity Style)
    local function AddBtn(text, callback)
        local b = Instance.new("TextButton", Main)
        b.Size = UDim2.new(1, -30, 0, 32)
        b.Position = UDim2.new(0, 15, 0, 50) -- Esto necesita lógica de layout en V12
        b.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
        b.Text = text
        b.TextColor3 = Color3.new(1, 1, 1)
        b.Font = Enum.Font.Gotham
        CreateRounded(b, 8)
        b.Activated:Connect(callback)
    end

    -- Add your 40+ Functions here
    AddBtn("FIND MIRAGE", function() end)
end

-- // --- BOOTER UI (REPLICATED FROM IMAGE) --- //
local Booter = Instance.new("ScreenGui", CoreGui)
local BMain = Instance.new("Frame", Booter)
CreateRounded(BMain, 15)
CreateStroke(BMain, Color3.fromRGB(255, 0, 150), 2)

BMain.Size = UDim2.new(0, 500, 0, 320)
BMain.Position = UDim2.new(0.5, -250, 0.5, -160)
BMain.BackgroundColor3 = Color3.fromRGB(10, 10, 12)

-- [Header, Welcome, ID logic same as V10]

local Container = Instance.new("Frame", BMain)
Container.Size = UDim2.new(1, -20, 0, 150)
Container.Position = UDim2.new(0, 10, 0, 105)
Container.BackgroundTransparency = 1

local function CreateVersion(name, vNum, desc, pos, color, iconID, callback)
    local VFrame = Instance.new("Frame", Container)
    VFrame.Size = UDim2.new(0.48, 0, 1, 0)
    VFrame.Position = pos
    VFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    CreateRounded(VFrame, 8)
    CreateStroke(VFrame, Color3.fromRGB(30, 30, 40), 1)
    
    local Tag = Instance.new("TextLabel", VFrame)
    Tag.Size = UDim2.new(0, 60, 0, 20)
    Tag.Position = UDim2.new(0, 10, 0, 10)
    Tag.BackgroundColor3 = color
    Tag.Text = name
    Tag.TextColor3 = Color3.new(1, 1, 1)
    Tag.Font = Enum.Font.GothamBold
    Instance.new("UICorner", Tag)

    local SelBtn = Instance.new("TextButton", VFrame)
    SelBtn.Size = UDim2.new(1, -20, 0, 25)
    SelBtn.Position = UDim2.new(0, 10, 1, -35)
    SelBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    SelBtn.Text = "SELECT " .. vNum
    SelBtn.TextColor3 = color
    SelBtn.Font = Enum.Font.GothamBold
    Instance.new("UICorner", SelBtn)

    SelBtn.Activated:Connect(function()
        Booter:Destroy()
        callback()
    end)
end

-- // VERSION SELECTIONS //
CreateVersion("Redz Hub", "V1", "No-Key\nSidebar UI\nStable", UDim2.new(0, 0, 0, 0), Color3.fromRGB(255, 50, 100), "rbxassetid://10723386349", function()
    BuildRedz("REDZ HUB | PURPLE X", Color3.fromRGB(255, 0, 100))
end)

CreateVersion("Gravity", "V2", "No-Key\nGravity UI\nStable", UDim2.new(0.52, 0, 0, 0), Color3.fromRGB(150, 100, 255), "rbxassetid://10723389033", function()
    BuildGravity("GRAVITY HUB | PURPLE X", Color3.fromRGB(150, 100, 255))
end)

-- (Tocarías este botón para iniciar la versión por defecto)
local StartBtn = Instance.new("TextButton", BMain)
StartBtn.Size = UDim2.new(1, -20, 0, 40)
StartBtn.Position = UDim2.new(0, 10, 1, -50)
StartBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 150)
StartBtn.Text = "SELECT SCRIPT TO START"
StartBtn.TextColor3 = Color3.new(1, 1, 1)
StartBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", StartBtn)
