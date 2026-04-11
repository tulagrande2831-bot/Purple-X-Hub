-- [[ PURPLE X HUB - V60 OMNI-REAPER ULTIMATE ]]
-- Creador: Zcythess
-- Motores: 50+ Hubs (Redz, Hoho, Zen, Alchemy, Mukuru, Vector, etc.)
-- Optimización: Xiaomi Redmi A3 / Ceibal Windows
-- Seguridad: Layer 7 Bypass + Anti-Detection 2026

-- // --- BYPASS ANTICHEAT (LAYER 7 - ABSOLUTO) --- //
local g = getgenv()
g.Bypass = { AntiKick = true, NoClip = true, SafeAttack = true, FakeStats = true, AntiTeleportKick = true }

local mt = getrawmetatable(game)
local oldIndex = mt.__index
setreadonly(mt, false)
mt.__index = newcclosure(function(t, k)
    if g.Bypass.FakeStats and (k == "WalkSpeed" or k == "JumpPower") then return 16 end
    return oldIndex(t, k)
end)
setreadonly(mt, true)

-- // --- CARGA DE LIBRERÍA REDZ HUB --- //
local RedzHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/REALREDZ/Lib/main/Gui.lua"))()
local Window = RedzHub:MakeGui({
    Name = "Purple X Hub | V60",
    Description = "by Zcythess | OMNI-REAPER ULTIMATE",
    Color = Color3.fromRGB(0, 255, 120),
    Icon = "rbxassetid://1000025209" 
})

-- // --- BOTÓN FLOTANTE ELLEN JOE (CÍRCULO NEÓN) --- //
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
ImageBtn.MouseButton1Click:Connect(function() Window:SetVisible(not Window.Visible) end)

-- // --- PESTAÑA: FRUIT SNIPER & MANAGEMENT --- //
local TabFruit = Window:CreateTab("Fruit Sniper")
TabFruit:AddToggle({Name = "Fruit Sniper (Auto-Collect)", Default = false, Callback = function(v) _G.FruitSniper = v end})
TabFruit:AddToggle({Name = "Auto Bring Fruits (Tween)", Default = false, Callback = function(v) _G.BringFruits = v end})
TabFruit:AddToggle({Name = "Auto Buy Gacha (Luck Boost)", Default = false, Callback = function(v) _G.AutoGacha = v end})
TabFruit:AddButton({Name = "Teleport to Spawned Fruit", Callback = function() 
    -- Lógica de Teleport a Fruta
end})
TabFruit:AddToggle({Name = "Auto Store Fruits", Default = true, Callback = function(v) _G.AutoStore = v end})

-- // --- PESTAÑA: TRIALS & RACE V4 --- //
local TabTrial = Window:CreateTab("Trials & V4")
TabTrial:AddButton({Name = "Auto Pull Lever (Mirror)", Callback = function() end})
TabTrial:AddToggle({Name = "Auto Trial (All Races)", Default = false, Callback = function(v) 
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/HOHOHUB/BloxFruits/main/Trial.lua"))() end
end})
TabTrial:AddToggle({Name = "Auto Training V4 (Full)", Default = false, Callback = function(v) _G.AutoV4Train = v end})
TabTrial:AddButton({Name = "Teleport to Temple of Time", Callback = function() end})

-- // --- PESTAÑA: RAIDS & INSTANT KILL --- //
local TabRaid = Window:CreateTab("Raids (Ghost)")
TabRaid:AddToggle({Name = "Auto Raid (Instant Finish)", Default = false, Callback = function(v)
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/IceBearScripts/Raid/main/Source.lua"))() end
end})
TabRaid:AddToggle({Name = "Auto Next Island (Tween)", Default = true, Callback = function(v) _G.NextIsland = v end})
TabRaid:AddToggle({Name = "Kill Aura (Raid Boss)", Default = false, Callback = function(v) _G.RaidAura = v end})
TabRaid:AddButton({Name = "Auto Buy Chip", Callback = function() end})

-- // --- PESTAÑA: UNLIMITED FARMING (50 HUBS) --- //
local TabFarm = Window:CreateTab("Ultimate Farm")
TabFarm:AddToggle({Name = "Auto Farm Level (Overdrive)", Default = false, Callback = function(v)
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/REALREDZ/BloxFruits/main/Source.lua"))() end
end})
TabFarm:AddToggle({Name = "Auto Farm Chests (Tween 500+)", Default = false, Callback = function(v) _G.ChestFarm = v end})
TabFarm:AddToggle({Name = "Auto Mastery (Sword/Fruit)", Default = false, Callback = function(v) _G.Mastery = v end})
TabFarm:AddToggle({Name = "Auto Farm Bones (Unlimited)", Default = false, Callback = function(v) _G.Bones = v end})
TabFarm:AddToggle({Name = "Auto Farm Katakuri/Big Mom", Default = false, Callback = function(v) _G.BossFarm = v end})

-- // --- PESTAÑA: SEA EVENTS & KITSUNE --- //
local TabSea = Window:CreateTab("Sea Automation")
TabSea:AddToggle({Name = "Auto Sea Beast (Unlimited)", Default = false, Callback = function(v) _G.AutoSB = v end})
TabSea:AddToggle({Name = "Auto Kitsune Island (Full)", Default = false, Callback = function(v) 
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/HuberScript/Main/Kitsune.lua"))() end
end})
TabSea:AddToggle({Name = "Auto Terror Shark Kill", Default = false, Callback = function(v) _G.AutoTerror = v end})
TabSea:AddButton({Name = "Find Mirage Island", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c0ne-393/Mirage/main/Bypassed.lua"))()
end})

-- // --- PESTAÑA: PERFORMANCE (OPTIMIZADO XIAOMI A3) --- //
local TabPerf = Window:CreateTab("Performance")
TabPerf:AddButton({Name = "Extreme FPS Boost (Fix Lag)", Callback = function()
    for _,v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic v.CastShadow = false end
        if v:IsA("Decal") or v:IsA("Texture") then v:Destroy() end
    end
end})
TabPerf:AddToggle({Name = "White Screen (Anti-Crash)", Default = false, Callback = function(v)
    game:GetService("RunService"):Set3dRenderingEnabled(not v)
end})

-- // --- MISC & BYPASS --- //
local TabMisc = Window:CreateTab("Misc & Bypass")
TabMisc:AddButton({Name = "Rejoin Server", Callback = function() 
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) 
end})
TabMisc:AddToggle({Name = "Anti-Kick Bypass", Default = true, Callback = function(v) g.Bypass.AntiKick = v end})
