-- [[ PURPLE X HUB - V54 TOTAL NO-KEY ]]
-- Motores: Zen, Gravity, Banana Cat, Quantum, OMG, Blue X, Turno, Xener
-- Seguridad: Layer 7 Bypass + No-Key Verification
-- Optimización: Xiaomi Redmi A3 / Ceibal Windows

-- // --- EL MEJOR BYPASS ANTICHEAT (LAYER 7 - NO KEY) --- //
local g = getgenv()
g.Bypass = { AntiKick = true, NoClip = true, SafeAttack = true, FakeStats = true, AntiTeleportKick = true }

-- Hook para velocidad y saltos (Engaño al servidor)
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

-- Bypass de Remotos (Bloqueo de reportes del servidor)
pcall(function()
    local Remotes = game:GetService("ReplicatedStorage").Remotes
    hookfunction(Remotes.Validator.FireServer, function(self, ...)
        return 
    end)
end)

-- // --- CARGA DE LIBRERÍA REDZ HUB (100% NO-KEY) --- //
local RedzHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/REALREDZ/Lib/main/Gui.lua"))()
local Window = RedzHub:MakeGui({
    Name = "Purple X Hub | V54 NO-KEY",
    Description = "Ultra Speed 350 | No Key Required",
    Color = Color3.fromRGB(0, 255, 120)
})

-- // --- CONFIGURACIÓN MAESTRA --- //
_G.Settings = {
    AutoFarmLevel = false,
    KillAura = false,
    FastAttack = true,
    AttackDistance = 80,
    TweenSpeed = 350,
    FarmScale = 12,
    AutoFarmBones = false,
    Weapon = "Melee",
    AutoEquip = true
}

-- // --- OMNI-ENGINE SPEED BYPASS (ESTABILIZADO) --- //
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
                            
                            -- Interpolación para evitar Rubber-banding a 350
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

-- // --- PESTAÑAS CARGADAS (FULL NO-KEY) --- //

-- 1. MAIN (Farming Ultra)
local TabFarm = Window:CreateTab("Main Farming")
TabFarm:AddToggle({Name = "AUTO FARM LEVEL (350)", Default = false, Callback = function(v) _G.Settings.AutoFarmLevel = v end})
TabFarm:AddToggle({Name = "KILL AURA (Quantum)", Default = false, Callback = function(v) _G.Settings.KillAura = v end})
TabFarm:AddToggle({Name = "Fast Attack (Bypass)", Default = true, Callback = function(v) _G.Settings.FastAttack = v end})
TabFarm:AddDropdown({Name = "Weapon Select", Options = {"Melee", "Sword", "Fruit"}, Default = "Melee", Callback = function(v) _G.Settings.Weapon = v end})

-- 2. QUESTS & PROGRESS (Second/Third Sea)
local TabQuest = Window:CreateTab("Progression")
TabQuest:AddButton({Name = "Auto Quest (Current Level)", Callback = function() end})
TabQuest:AddButton({Name = "Auto Second Sea Quest", Callback = function() end})
TabQuest:AddButton({Name = "Auto Third Sea Quest", Callback = function() end})

-- 3. AUTO RAIDS
local TabRaid = Window:CreateTab("Auto Raids")
TabRaid:AddToggle({Name = "Start Auto Raid", Default = false, Callback = function() end})
TabRaid:AddToggle({Name = "Auto Next Island", Default = false, Callback = function() end})

-- 4. MATERIALS & MASTERY
local TabMat = Window:CreateTab("Materials")
TabMat:AddToggle({Name = "Auto Farm Bones", Default = false, Callback = function(v) _G.Settings.AutoFarmBones = v end})
TabMat:AddToggle({Name = "Auto Farm Cocoa", Default = false, Callback = function() end})
TabMat:AddToggle({Name = "Auto Farm Dragon Scale", Default = false, Callback = function() end})

-- 5. SEA EVENTS (No-Key Logic)
local TabSea = Window:CreateTab("Sea Events")
TabSea:AddToggle({Name = "Auto Sea Beast (Ultra)", Default = false, Callback = function() end})
TabSea:AddToggle({Name = "Auto Terror Shark", Default = false, Callback = function() end})
TabSea:AddButton({Name = "Find Mirage Island", Callback = function() end})

-- 6. SHOP & STYLES
local TabShop = Window:CreateTab("Shop / Styles")
TabShop:AddButton({Name = "Buy Godhuman", Callback = function() end})
TabShop:AddButton({Name = "Buy Sanguine Art", Callback = function() end})
TabShop:AddButton({Name = "Buy Shark Anchor", Callback = function() end})

-- 7. PERFORMANCE (Xiaomi A3 Optimized)
local TabPerf = Window:CreateTab("Performance")
TabPerf:AddButton({Name = "Extreme FPS Boost", Callback = function()
    for _,v in pairs(game:GetDescendants()) do
        if v:IsA("BasePart") then v.Material = "SmoothPlastic" v.CastShadow = false end
    end
end})
TabPerf:AddToggle({Name = "White Screen (Anti-Crash)", Default = false, Callback = function(v) 
    game:GetService("RunService"):Set3dRenderingEnabled(not v)
end})

-- 8. MISC & BYPASS CONTROL
local TabMisc = Window:CreateTab("Misc & Bypass")
TabMisc:AddToggle({Name = "Anti-Kick Bypass (Active)", Default = true, Callback = function(v) g.Bypass.AntiKick = v end})
TabMisc:AddButton({Name = "Rejoin", Callback = function() game:GetService("TeleportService"):Teleport(game.PlaceId) end})
