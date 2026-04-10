--[[
    PURPLE X HUB - MULTI-UI SELECTION SYSTEM
    OWNER: tulagrande2831
    BYPASS: V8 UNIVERSAL
]]

if _G.PurpleXLoaded then return end
_G.PurpleXLoaded = true

-- // LIBRARIES & TRANSLATION //
local LocalizationService = game:GetService("LocalizationService")
local PlayerLocale = LocalizationService.RobloxLocaleId:sub(1,2)
local function t(en, es) return (PlayerLocale == "es") and es or en end

-- // UI SELECTOR STARTUP //
local Selector = Instance.new("ScreenGui", game:GetService("CoreGui"))
local Frame = Instance.new("Frame", Selector)
local Title = Instance.new("TextLabel", Frame)
local UIList = Instance.new("UIListLayout", Frame)

Frame.Size = UDim2.new(0, 250, 0, 300)
Frame.Position = UDim2.new(0.5, -125, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 2
Frame.Active = true
Frame.Draggable = true

Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "SELECT UI STYLE"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundColor3 = Color3.fromRGB(100, 0, 200)

UIList.Padding = UDim.new(0, 5)
UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- // MAIN HUB FUNCTION //
local function LaunchHub(StyleName, MainColor, TitleColor)
    Selector:Destroy()
    
    local Screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
    local Main = Instance.new("Frame", Screen)
    local HubTitle = Instance.new("TextLabel", Main)
    local Scroll = Instance.new("ScrollingFrame", Main)
    local Layout = Instance.new("UIListLayout", Scroll)

    Main.Size = UDim2.new(0, 260, 0, 400)
    Main.Position = UDim2.new(0.5, -130, 0.5, -200)
    Main.BackgroundColor3 = MainColor
    Main.Active = true
    Main.Draggable = true

    HubTitle.Size = UDim2.new(1, 0, 0, 35)
    HubTitle.BackgroundColor3 = TitleColor
    HubTitle.Text = "PURPLE X HUB | " .. StyleName
    HubTitle.TextColor3 = Color3.new(1, 1, 1)
    HubTitle.Font = Enum.Font.SourceSansBold

    Scroll.Position = UDim2.new(0, 5, 0, 40)
    Scroll.Size = UDim2.new(1, -10, 1, -45)
    Scroll.BackgroundTransparency = 1
    Scroll.CanvasSize = UDim2.new(0, 0, 15, 0)
    Layout.Padding = UDim.new(0, 4)

    -- Shared Functions Builder
    local function AddBtn(en, es, callback)
        local b = Instance.new("TextButton", Scroll)
        b.Size = UDim2.new(1, 0, 0, 32)
        b.BackgroundColor3 = TitleColor:Lerp(Color3.new(0,0,0), 0.3)
        b.Text = t(en, es)
        b.TextColor3 = Color3.new(1, 1, 1)
        b.Activated:Connect(function() callback(b) end)
    end

    -- [Add 40+ Functions Here same as V8]
    AddBtn("Ultra Fast Attack", "Ataque Ultra Rapido", function() end)
    AddBtn("Auto Farm Level", "Auto Farm Nivel", function() end)
    AddBtn("No Vision", "Sin Vision", function() end)
    AddBtn("FPS Boost", "Mejorar FPS", function() end)
end

-- // SELECTOR BUTTONS //
local function CreateSelectBtn(name, mainC, titleC)
    local b = Instance.new("TextButton", Frame)
    b.Size = UDim2.new(0.9, 0, 0, 40)
    b.Text = name
    b.BackgroundColor3 = titleC
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Activated:Connect(function() LaunchHub(name, mainC, titleC) end)
end

CreateSelectBtn("V1 REDZ STYLE", Color3.fromRGB(40, 0, 0), Color3.fromRGB(200, 0, 0))
CreateSelectBtn("V2 QUANTUM ONYX", Color3.fromRGB(0, 20, 40), Color3.fromRGB(0, 150, 255))
CreateSelectBtn("BANANA CAT HUB", Color3.fromRGB(40, 40, 0), Color3.fromRGB(255, 200, 0))
CreateSelectBtn("PURPLE EXCLUSIVE", Color3.fromRGB(15, 0, 30), Color3.fromRGB(120, 0, 240))

-- // BYPASSES (V8) //
task.spawn(function()
    local RigEvent = game:GetService("ReplicatedStorage").RigControllerEvent
    local NetBypass; NetBypass = hookmetamethod(game, "__namecall", function(self, ...)
        if getnamecallmethod() == "FireServer" and self == RigEvent then
            task.wait(math.random(1, 4) / 100)
        end
        return NetBypass(self, ...)
    end)
end)
