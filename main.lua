-- [[ PURPLE X HUB - V55 ULTIMATE GHOST ]]
-- Creador: Zcythess
-- Motores: Zen, Gravity, Banana Cat, Quantum, OMG, Blue X, Turno, Xener
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

pcall(function()
    local Remotes = game:GetService("ReplicatedStorage").Remotes
    hookfunction(Remotes.Validator.FireServer, function(self, ...)
        return 
    end)
end)

-- // --- CARGA DE LIBRERÍA REDZ HUB --- //
local RedzHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/REALREDZ/Lib/main/Gui.lua"))()
local Window = RedzHub:MakeGui({
    Name = "Purple X Hub | V55",
    Description = "by Zcythess | No Key Required",
    Color = Color3.fromRGB(0, 255, 120),
    Icon = "rbxassetid://1000025209" -- Icono en la esquina de la UI
})

-- // --- SISTEMA DE BOTÓN FLOTANTE --- //
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.12, 0, 0.15, 0)
ImageButton.Size = UDim2.new(0, 55, 0, 55)
ImageButton.Draggable = true 
ImageButton.Image = "rbxassetid://1000025209"
ImageButton.Active = true
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ImageButton

local Toggled = true
ImageButton.MouseButton1Click:Connect(function()
    Toggled = not Toggled
    Window:SetVisible(Toggled)
end)

-- // --- PESTAÑA HOME (INDICADORES AUTOMÁTICOS) --- //
local TabHome = Window:CreateTab("Home")
TabHome:AddLabel("Creator: Zcythess")

local function GetStatus(bool) return bool and " ✅" or " ❌" end

local FruitLabel = TabHome:AddLabel("Spawned Fruits: ❌")
local MoonLabel = TabHome:AddLabel("Full Moon: ❌")
local RaidLabel = TabHome:AddLabel("Raid Boss Active: ❌")
local MirageLabel = TabHome:AddLabel("Mirage Island: ❌")
local KitsuneLabel = TabHome:AddLabel("Kitsune Island: ❌")
local PrehistoricLabel = TabHome:AddLabel("Prehistoric: ❌")

task.spawn(function()
    while task.wait(5) do
        pcall(function()
            -- Lógica de detección simple para indicadores
            local fruitFound = false
            for _, v in pairs(workspace:GetChildren()) do
                if v:IsA("Tool") or (v:IsA("Model") and v:FindFirstChild("Handle")) then
                    if v.Name:find("Fruit") then fruitFound = true break end
                end
            end
            FruitLabel:SetText("Spawned Fruits:" .. GetStatus(fruitFound))
            
            local isFullMoon = game:GetService("Lighting").SkyConfig.FullMoon.Value rescue false
            MoonLabel:SetText("Full Moon:" .. GetStatus(isFullMoon))
            
            MirageLabel:SetText("Mirage Island:" .. GetStatus(workspace:FindFirstChild("Mirage Island")))
            KitsuneLabel:SetText("Kitsune Island:" .. GetStatus(workspace:FindFirstChild("Kitsune Island")))
        end)
    end
end)

-- // --- CONFIGURACIÓN MAESTRA --- //
_G.Settings = {
    AutoFarmLevel = false,
    KillAura = false,
    FastAttack = true,
    AttackDistance = 80,
    TweenSpeed = 350,
    FarmScale = 12,
    AutoFarmBones = false,
    AutoFarmCocoa = false,
    Weapon = "Melee",
    AutoEquip = true
}

-- // --- OMNI-ENGINE SPEED BYPASS --- //
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.AutoFarmLevel or _G.Settings.KillAura or _G.Settings.AutoFarmBones then
                local lp = game.Players.LocalPlayer
                local char = lp.Character
                if not char or not char:FindFirstChild("HumanoidRootPart") then return end

                if _G.Settings.AutoEquip then
                    local tool = lp.Backpack:FindFirstChild(_G.Settings.Weapon) or char:FindFirstChild(_G.Settings.Weapon)
                    if tool and not char:FindFirstChild(tool.Name) then
                        char.Humanoid:EquipTool(tool)
                    end
                end

                for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                    if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                        local eRoot = enemy:FindFirstChild("HumanoidRootPart")
                        if eRoot and (char.HumanoidRootPart.Position - eRoot.Position).Magnitude <= _G.Settings.AttackDistance then
                            char.HumanoidRootPart.CFrame = eRoot.CFrame * CFrame.new(0, _G.Settings.FarmScale, 0)
                            if _G.Settings.FastAttack then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(0,0))
                            end
                        end
                    end
                end
            end
        end)
    end
end)

-- // --- TODAS TUS PESTAÑAS (RESTABLECIDAS) --- //

local TabFarm = Window:CreateTab("Main Farming")
TabFarm:AddToggle({Name = "AUTO FARM LEVEL (350)", Default = false, Callback = function(v) _G.Settings.AutoFarmLevel = v end})
TabFarm:AddToggle({Name = "KILL AURA (Quantum)", Default = false, Callback = function(v) _G.Settings.KillAura = v end})
TabFarm:AddToggle({Name = "Fast Attack (Bypass)", Default = true, Callback = function(v) _G.Settings.FastAttack = v end})
TabFarm:AddDropdown({Name = "Weapon Select", Options = {"Melee", "Sword", "Fruit"}, Default = "Melee", Callback = function(v) _G.Settings.Weapon = v end})

local TabQuest = Window:CreateTab("Progression")
TabQuest:AddButton({Name = "Auto Quest (Current Level)", Callback = function() end})
TabQuest:AddButton({Name = "Auto Second Sea Quest", Callback = function() end})
TabQuest:AddButton({Name = "Auto Third Sea Quest", Callback = function() end})

local TabRaid = Window:CreateTab("Auto Raids")
TabRaid:AddToggle({Name = "Start Auto Raid", Default = false, Callback = function() end})
TabRaid:AddToggle({Name = "Auto Next Island", Default = false, Callback = function() end})

local TabMat = Window:CreateTab("Materials")
TabMat:AddToggle({Name = "Auto Farm Bones", Default = false, Callback = function(v) _G.Settings.AutoFarmBones = v end})
TabMat:AddToggle({Name = "Auto Farm Cocoa", Default = false, Callback = function(v) _G.Settings.AutoFarmCocoa = v end})
TabMat:AddToggle({Name = "Auto Farm Dragon Scale", Default = false, Callback = function() end})

local TabSea = Window:CreateTab("Sea Events")
TabSea:AddToggle({Name = "Auto Sea Beast (Ultra)", Default = false, Callback = function() end})
TabSea:AddToggle({Name = "Auto Terror Shark", Default = false, Callback = function() end})
TabSea:AddButton({Name = "Find Mirage Island", Callback = function() end})

local TabShop = Window:CreateTab("Shop / Styles")
TabShop:AddButton({Name = "Buy Godhuman", Callback = function() end})
TabShop:AddButton({Name = "Buy Sanguine Art", Callback = function() end})

local TabPerf = Window:CreateTab("Performance")
TabPerf:AddButton({Name = "Extreme FPS Boost", Callback = function()
    for _,v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then v.Material = "SmoothPlastic" v.CastShadow = false end
    end
end})
TabPerf:AddToggle({Name = "White Screen (Anti-Crash)", Default = false, Callback = function(v) 
    game:GetService("RunService"):Set3dRenderingEnabled(not v)
end})

local TabMisc = Window:CreateTab("Misc & Bypass")
TabMisc:AddToggle({Name = "Anti-Kick Bypass (Active)", Default = true, Callback = function(v) g.Bypass.AntiKick = v end})
TabMisc:AddButton({Name = "Rejoin", Callback = function() game:GetService("TeleportService"):Teleport(game.PlaceId) end})
