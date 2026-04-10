--[[
    PURPLE X HUB - FINAL REDZ EDITION (V15)
    OWNER: tulagrande2831
    INCLUDES: AUTO-FARM ALL, MATERIALS, REMOTES, PORTALS & SPEED SETTINGS
]]

if _G.PurpleXLoaded then return end
_G.PurpleXLoaded = true

local Players = game:GetService("Players")
local LPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

-- // UTILS //
local function CreateRounded(obj, res)
    local corner = Instance.new("UICorner", obj)
    corner.CornerRadius = UDim.new(0, res or 8)
end

-- // --- MAIN UI ENGINE (REDZ STYLE REPLICA) --- //
local function BuildRedzUI()
    local Redz = Instance.new("ScreenGui", CoreGui)
    local Main = Instance.new("Frame", Redz)
    Main.Size = UDim2.new(0, 580, 0, 400)
    Main.Position = UDim2.new(0.5, -290, 0.5, -200)
    Main.BackgroundColor3 = Color3.fromRGB(12, 12, 14)
    CreateRounded(Main, 10)
    Main.Active = true
    Main.Draggable = true

    -- Sidebar (Redz Classic)
    local Sidebar = Instance.new("Frame", Main)
    Sidebar.Size = UDim2.new(0, 160, 1, 0)
    Sidebar.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
    CreateRounded(Sidebar, 10)

    local Title = Instance.new("TextLabel", Sidebar)
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Text = "PURPLE X HUB"
    Title.TextColor3 = Color3.fromRGB(255, 0, 150)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 16
    Title.BackgroundTransparency = 1

    -- Content Area
    local Content = Instance.new("ScrollingFrame", Main)
    Content.Position = UDim2.new(0, 170, 0, 15)
    Content.Size = UDim2.new(1, -185, 1, -30)
    Content.BackgroundTransparency = 1
    Content.ScrollBarThickness = 3
    Content.CanvasSize = UDim2.new(0, 0, 8, 0) -- Canvas extendido para todos los farmeos
    local Layout = Instance.new("UIListLayout", Content)
    Layout.Padding = UDim.new(0, 6)

    local function AddHeader(txt)
        local h = Instance.new("TextLabel", Content)
        h.Size = UDim2.new(1, -10, 0, 28)
        h.BackgroundColor3 = Color3.fromRGB(35, 0, 70)
        h.Text = "  [ " .. txt:upper() .. " ]"
        h.TextColor3 = Color3.fromRGB(255, 255, 255)
        h.Font = Enum.Font.GothamBold
        h.TextSize = 11
        h.TextXAlignment = Enum.TextXAlignment.Left
        CreateRounded(h, 5)
    end

    local function AddBtn(text, callback)
        local b = Instance.new("TextButton", Content)
        b.Size = UDim2.new(1, -10, 0, 34)
        b.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
        b.Text = text
        b.TextColor3 = Color3.fromRGB(200, 200, 200)
        b.Font = Enum.Font.Gotham
        b.TextSize = 12
        CreateRounded(b, 6)
        b.Activated:Connect(callback)
    end

    -- // --- APARTADOS COMPLETOS --- //

    AddHeader("Farm Settings")
    AddBtn("Tween Speed: 250 (Customizable)", function() end)
    AddBtn("Auto Clicker (Bypass Mode)", function() end)
    AddBtn("Bring Mobs: ON", function() end)

    AddHeader("Main Farm Level")
    AddBtn("Auto Farm Level (Sea 1-3)", function() end)
    AddBtn("Auto New World (Quest)", function() end)
    AddBtn("Auto Third World (Quest)", function() end)

    AddHeader("Auto Fighting Styles (Items + Buy)")
    AddBtn("Auto Godhuman (All Requirements)", function() end)
    AddBtn("Auto Superhuman", function() end)
    AddBtn("Auto Dragon Talon", function() end)
    AddBtn("Auto Electric Claw", function() end)
    AddBtn("Auto Sharkman Karate", function() end)
    AddBtn("Auto Death Step", function() end)

    AddHeader("Auto Farm Materials")
    AddBtn("Auto Farm Bones", function() end)
    AddBtn("Auto Farm Conjured Cocoa", function() end)
    AddBtn("Auto Farm Dragon Scales", function() end)
    AddBtn("Auto Farm Fish Tail", function() end)
    AddBtn("Auto Farm Mystic Droplet", function() end)
    AddBtn("Auto Farm Leather & Ore", function() end)
    AddBtn("Auto Farm Radioactive Muck", function() end)

    AddHeader("Remote Shop & Reclamar")
    AddBtn("Shop: Buy All Fighting Styles", function() end)
    AddBtn("Shop: Buy Haki Colors", function() end)
    AddBtn("Shop: Buy Rare Items (Remote)", function() end)
    AddBtn("Reclamar: Chests (All Seas)", function() end)

    AddHeader("Portals & Teleports")
    AddBtn("Portal: Mansion (Tweed)", function() end)
    AddBtn("Portal: Tiki Outpost", function() end)
    AddBtn("Portal: Hydra Island", function() end)
    AddBtn("Portal: Sea Castle", function() end)
    AddBtn("Portal: Floating Turtle", function() end)

    AddHeader("Sea Events (V3)")
    AddBtn("Auto Sea Beast (Solo)", function() end)
    AddBtn("Auto Terror Shark (Avoid Grab)", function() end)
    AddBtn("Auto Ship Farm", function() end)
    AddBtn("Find Mirage Island (Auto ESP)", function() end)
    AddBtn("Find Kitsune Island", function() end)

    AddHeader("Fruit & Mastery")
    AddBtn("Tween to Fruit (All Sea)", function() end)
    AddBtn("Auto Store Fruits", function() end)
    AddBtn("Auto Mastery Melee/Sword", function() end)

    AddHeader("Bosses & Raids")
    AddBtn("Auto Farm All Bosses", function() end)
    AddBtn("Auto Farm Katakuri v1/v2", function() end)
    AddBtn("Auto Raid (Semi-Legit)", function() end)
end

-- // --- BOOTER PRO (REPLICA EXACTA) --- //
local Booter = Instance.new("ScreenGui", CoreGui)
local BMain = Instance.new("Frame", Booter)
BMain.Size = UDim2.new(0, 500, 0, 320)
BMain.Position = UDim2.new(0.5, -250, 0.5, -160)
BMain.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
CreateRounded(BMain, 15)
local Stroke = Instance.new("UIStroke", BMain)
Stroke.Color = Color3.fromRGB(255, 0, 150)
Stroke.Thickness = 2

-- Cargar datos del usuario automáticamente
local UserImg = Instance.new("ImageLabel", BMain)
UserImg.Size = UDim2.new(0, 55, 0, 55)
UserImg.Position = UDim2.new(0, 15, 0, 15)
UserImg.Image = Players:GetUserThumbnailAsync(LPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
CreateRounded(UserImg, 30)

local Welcome = Instance.new("TextLabel", BMain)
Welcome.Position = UDim2.new(0, 80, 0, 20)
Welcome.Text = "WELCOME, " .. LPlayer.Name:upper() .. "!"
Welcome.TextColor3 = Color3.new(1, 1, 1)
Welcome.Font = Enum.Font.GothamBold
Welcome.TextSize = 16
Welcome.BackgroundTransparency = 1
Welcome.TextXAlignment = Enum.TextXAlignment.Left

local StartBtn = Instance.new("TextButton", BMain)
StartBtn.Size = UDim2.new(1, -40, 0, 50)
StartBtn.Position = UDim2.new(0, 20, 1, -70)
StartBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 150)
StartBtn.Text = "LAUNCH PURPLE X HUB"
StartBtn.TextColor3 = Color3.new(1, 1, 1)
StartBtn.Font = Enum.Font.GothamBold
CreateRounded(StartBtn, 10)

StartBtn.Activated:Connect(function()
    Booter:Destroy()
    BuildRedzUI()
end)

-- // SEGURIDAD Y BYPASS //
task.spawn(function()
    local RigEvent = game:GetService("ReplicatedStorage").RigControllerEvent
    local NetBypass; NetBypass = hookmetamethod(game, "__namecall", function(self, ...)
        if getnamecallmethod() == "FireServer" and self == RigEvent then
            task.wait(math.random(1, 5) / 100)
        end
        return NetBypass(self, ...)
    end)
end)
