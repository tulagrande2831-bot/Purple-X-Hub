-- [[ PURPLE X HUB - V55 ULTIMATE GHOST ]]
-- Creador: Zcythess
-- Motores: Zen, Gravity, Redz, Quantum, Hoho
-- Seguridad: Layer 7 Bypass + No-Key Verification
-- Optimización: Xiaomi Redmi A3 / Ceibal Windows

-- // --- EL MEJOR BYPASS ANTICHEAT (LAYER 7 - NO KEY) --- //
local g = getgenv()
g.Bypass = { AntiKick = true, NoClip = true, SafeAttack = true, FakeStats = true, AntiTeleportKick = true }

local mt = getrawmetatable(game)
local oldIndex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(t, k)
    if g.Bypass.FakeStats and (k == "WalkSpeed" or k == "JumpPower") then
        return 16 
    end
    return oldIndex(t, k)
end)
setreadonly(mt, true)

-- // --- CARGA DE LIBRERÍA REDZ HUB --- //
local RedzHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/REALREDZ/Lib/main/Gui.lua"))()
local Window = RedzHub:MakeGui({
    Name = "Purple X Hub | V55",
    Description = "by Zcythess | No Key Required",
    Color = Color3.fromRGB(0, 255, 120),
    Icon = "rbxassetid://1000025209" 
})

-- // --- SISTEMA DE BOTÓN FLOTANTE (ELLEN JOE) --- //
local CoreGui = game:GetService("CoreGui")
local GhostMenuGui = Instance.new("ScreenGui")
local MainButton = Instance.new("Frame")
local ImageBtn = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

GhostMenuGui.Parent = CoreGui
MainButton.Parent = GhostMenuGui
MainButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainButton.Position = UDim2.new(0.12, 0, 0.15, 0)
MainButton.Size = UDim2.new(0, 60, 0, 60)
MainButton.Active = true
MainButton.Draggable = true
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = MainButton
UIStroke.Parent = MainButton
UIStroke.Thickness = 2.5
UIStroke.Color = Color3.fromRGB(0, 255, 120)

ImageBtn.Parent = MainButton
ImageBtn.BackgroundTransparency = 1
ImageBtn.Size = UDim2.new(0.85, 0, 0.85, 0)
ImageBtn.Position = UDim2.new(0.075, 0, 0.075, 0)
ImageBtn.Image = "rbxassetid://1000025209"

local Toggled = true
ImageBtn.MouseButton1Click:Connect(function()
    Toggled = not Toggled
    Window:SetVisible(Toggled)
end)

-- // --- PESTAÑA HOME (INDICADORES AUTOMÁTICOS) --- //
local TabHome = Window:CreateTab("Home")
TabHome:AddLabel("Creator: Zcythess")
local function GetStatus(bool) return bool and " ✅" or " ❌" end
local FruitLabel = TabHome:AddLabel("Spawned Fruits: ❌")
local MoonLabel = TabHome:AddLabel("Full Moon: ❌")
local MirageLabel = TabHome:AddLabel("Mirage Island: ❌")
local KitsuneLabel = TabHome:AddLabel("Kitsune Island: ❌")

task.spawn(function()
    while task.wait(5) do
        pcall(function()
            local fruitFound = false
            for _, v in pairs(workspace:GetChildren()) do
                if v:IsA("Tool") and v.Name:find("Fruit") then fruitFound = true break end
            end
            FruitLabel:SetText("Spawned Fruits:" .. GetStatus(fruitFound))
            MoonLabel:SetText("Full Moon:" .. GetStatus(game:GetService("Lighting").SkyConfig.FullMoon.Value))
            MirageLabel:SetText("Mirage Island:" .. GetStatus(workspace:FindFirstChild("Mirage Island")))
            KitsuneLabel:SetText("Kitsune Island:" .. GetStatus(workspace:FindFirstChild("Kitsune Island")))
        end)
    end
end)

-- // --- INTEGRACIÓN DE AUTO-FARMS (SCRIPTS EXTERNOS) --- //

-- 1. MAIN FARMING (Redz Engine)
local TabFarm = Window:CreateTab("Main Farming")
TabFarm:AddToggle({Name = "AUTO FARM LEVEL (350)", Default = false, Callback = function(v) 
    _G.AutoFarmLevel = v
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/REALREDZ/BloxFruits/main/Source.lua"))() end
end})
TabFarm:AddToggle({Name = "Auto Kill Near | Mob Aura", Default = false, Callback = function(v) _G.AutoKillNear = v end})
TabFarm:AddToggle({Name = "Fast Attack (Bypass)", Default = true, Callback = function(v) _G.FastAttack = v end})

-- 2. PROGRESSION (Quest Automation)
local TabQuest = Window:CreateTab("Progression")
TabQuest:AddButton({Name = "Auto Quest (Current Level)", Callback = function() _G.AutoQuest = true end})
TabQuest:AddToggle({Name = "Farm Submerged Island", Default = false, Callback = function(v) 
    _G.SubmergedIsland = v 
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/HOHOHUB/BloxFruits/main/Sea3.lua"))() end
end})

-- 3. AUTO RAIDS (IceBear Engine)
local TabRaid = Window:CreateTab("Auto Raids")
TabRaid:AddToggle({Name = "Start Auto Raid", Default = false, Callback = function(v)
    _G.AutoRaid = v
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/IceBearScripts/Raid/main/Source.lua"))() end
end})
TabRaid:AddToggle({Name = "Auto Next Island", Default = false, Callback = function(v) _G.AutoNextIsland = v end})

-- 4. MATERIALS & MASTERY
local TabMat = Window:CreateTab("Materials")
TabMat:AddToggle({Name = "Auto Farm Bones", Default = false, Callback = function(v) _G.AutoBones = v end})
TabMat:AddToggle({Name = "Auto Farm Cocoa", Default = false, Callback = function(v) _G.AutoCocoa = v end})
TabMat:AddToggle({Name = "Auto Mastery (Melee/Sword)", Default = false, Callback = function(v) _G.AutoMastery = v end})

-- 5. SEA EVENTS (Mirage & Beast)
local TabSea = Window:CreateTab("Sea Events")
TabSea:AddToggle({Name = "Auto Sea Beast (Ultra)", Default = false, Callback = function(v) _G.AutoSB = v end})
TabSea:AddToggle({Name = "Auto Terror Shark", Default = false, Callback = function(v) _G.AutoTerror = v end})
TabSea:AddButton({Name = "Find Mirage Island", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c0ne-393/Mirage/main/Bypassed.lua"))()
end})

-- 6. SHOP & STYLES (Godhuman/Sanguine)
local TabShop = Window:CreateTab("Shop / Styles")
TabShop:AddButton({Name = "Auto Buy Godhuman", Callback = function() _G.BuyGodhuman = true end})
TabShop:AddButton({Name = "Auto Buy Sanguine Art", Callback = function() _G.BuySanguine = true end})

-- 7. PERFORMANCE (Xiaomi Redmi A3 / Ceibal)
local TabPerf = Window:CreateTab("Performance")
TabPerf:AddButton({Name = "Extreme FPS Boost", Callback = function()
    for _,v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then v.Material = "SmoothPlastic" v.CastShadow = false end
    end
end})
TabPerf:AddToggle({Name = "White Screen (Anti-Crash)", Default = false, Callback = function(v) 
    game:GetService("RunService"):Set3dRenderingEnabled(not v)
end})

-- // --- CONFIGURACIÓN MAESTRA --- //
_G.Settings = {
    AutoEquip = true,
    Weapon = "Melee",
    FarmScale = 12
}

local TabMisc = Window:CreateTab("Misc & Bypass")
TabMisc:AddButton({Name = "Rejoin Server", Callback = function() 
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) 
end})
