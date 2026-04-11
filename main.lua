-- [[ PURPLE X HUB ]]
-- Base: Quantum Onyx Project
-- Optimización: Xiaomi Redmi A3 / Ceibal

local function InyectarPurpleX()
    local success, content = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/Games/BloxFruits.lua")
    end)

    if success then
        -- Reemplazo de marca en tiempo real
        local ModifiedScript = content:gsub("Quantum Onyx", "Purple X Hub")
        ModifiedScript = ModifiedScript:gsub("Quantum Project", "Purple X Project")
        
        loadstring(ModifiedScript)()
    else
        -- Respaldo por si falla la modificación
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/Games/BloxFruits.lua"))()
    end
end

task.spawn(InyectarPurpleX)
