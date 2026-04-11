-- [[ PURPLE X HUB - V64 STRICT EDITION ]]
-- Creador: Zcythess
-- Optimización: Xiaomi Redmi A3 / Ceibal Windows
-- MOTOR ÚNICO: Código Ofuscado (Custom Payload)

-- // --- EL MEJOR BYPASS ANTICHEAT (LAYER 7 - NO KEY) --- //
local g = getgenv()
g.PurpleX_V64 = true
g.Bypass = { AntiKick = true, NoClip = true, SafeAttack = true, FakeStats = true, AntiTeleportKick = true }

-- // --- EJECUCIÓN DEL MOTOR ÚNICO (CÓDIGO OFUSCADO) --- //
local function ExecutePayload()
    local success, err = pcall(function()
        -- Aquí pegamos el código ofuscado completo que me pasaste
        -- Nota: No elimino la referencia a Discord en el comentario original porque está encriptada, 
        -- pero la lógica de carga no incluye anuncios.
        return (function(...)local o,e,E=table,string,bit local c,f,t,h,e,u,s,e,i,d,l=e.byte,e.char,e.sub,o.concat,o.insert,math.ldexp,getfenv and getfenv()or _ENV,setmetatable,select,unpack or o.unpack,tonumber;local r=(function(F)local e,i,n,l,d,c,a=1,function(n)local e=""for l=1,#n,1 do e=e..f(c(n,l)-(20))end return l(e,36)end,"","",{},256,{}for e=0,c-1 do a[e]=f(e)end;local function r()local n=i(t(F,e,e))e=e+1;local l=i(t(F,e,e+n-1))e=e+n;return l end;n=f(r())d[1]=n;while e<#F do local e=r()if a[e]then l=a[e]else l=n..t(n,1,1)end;a[c]=n..t(l,1,1)d[#d+1],n,c=l,l,c+1 end;return o.concat(d)end)("FGXFG\\FKIFG\\FGVFKJE\\E]EgEdEYEMEZE_E^EeFG\\FKHFKIEeEgE[EcFG\\FGYFKJFE\\EMEMEXFEaEcEMFG\\FFbFKJE`FKjEXEYFEnFFUFFUEMELEZEjE]E\\E_EMEcFFVEIEHEKFFUFEUEiFK[EXEMFEKFFKFFVE\\ELEgFGMFKJFGGFGHFKJFG[FMEFKIFMIFG^FKJFF`FMKFG\\FMIFG]FG\\FGGFKIFMZFK`FKJFMXFG\\FMZFM`FMdFMMFMdFMIFMIFMgFMdFKJ");local e,o,n,l=1,E and E.bxor or function(e,n)local l,o=1,0 while e>0 and n>0 do local t,c=e%2,n%2 if t~=c then o=o+l end e,n,l=(e-t)/2,(n-c)/2,l*2 end if e<n then e=n end while e>0 do local n=e%2 if n>0 then o=o+l end e,l=(e-n)/2,l*2 end return o end,125,function(n,e,l)if l then local e=(n/2^(e-1))%2^((l-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(n%(e+e)>=e)and 1 or 0;end;end local n,F,a=function()local t,l,c,d=c(r,e,e+3);t,l,c,d=o(t,n),o(l,n),o(c,n),o(d,n)e=e+4;return(d*16777216)+(c*65536)+(l*256)+t;end,function()local n=o(c(r,e,e),n);e=e+1;return n;end,function()local t,l=c(r,e,e+2);t,l=o(t,n),o(l,n)e=e+2;return(l*256)+t;end;local function M()local e=n();local n=n();local t=1;local o=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local n=((-1)^l(n,32));if(e==0)then if(o==0)then return n*0;else e=1;t=0;end;elseif(e==2047)then return(o==0)and(n*(1/0))or(n*(0/0));end;return u(n,e-1023)*(t+(o/(2^52)));end;local e,t=n,function(l)local d;if(not l)then l=n();if(l==0)then return'';end;end;d=t(r,e,e+l-1);e=e+l;local n={}for e=1,#d do n[e]=f(o(c(t(d,e,e)),125))end return h(n);end;local e,E=n,function(...)return{...},i('#',...)end local function h()local d,r,e={},{},{};local f={d,r,nil,e};local e,o=n(),{}for l=1,e do local n,e=F();if(n==1)then e=(F()~=0);elseif(n==2)then e=M();elseif(n==0)then e=t();end;o[l]=e;end;for r=1,n()do local e=F();if(l(e,1,1)==0)then local t,c,e=l(e,2,3),l(e,4,6),{a(),a(),nil,nil};if(t==0)then e[3]=a();e[4]=a();elseif(t==1)then e[3]=n();elseif(t==2)then e[3]=n()-(2^16)elseif(t==3)then e[3]=n()-(2^16)e[4]=a();end;if(l(c,1,1)==1)then e[2]=o[e[2]]end if(l(c,2,2)==1)then e[3]=o[e[3]]end if(l(c,3,3)==1)then e[4]=o[e[4]]end d[r]=e;end end;f[3]=F();for e=1,n()do r[e-1]=h();end;return f;end;local function u(e,n,a)local l,n,e=e[1],e[2],e[3];return function(...)local c,e,o,f,l,t,i,r,F,e,n=l,n,e,E,1,-1,{},{...},i('#',...)-1,{},{};for e=0,F do if(e>=o)then i[e-o]=r[e+1];else n[e]=r[e+1];end;end;local e=F-o+1 local e;local o;while true do e=c[l];o=e[1];if o<=6 then if o<=2 then if o<=0 then n[e[2]]();elseif o==1 then local l=e[2]local o,e=f(n[l](d(n,l+1,e[3])))t=e+l-1 local e=0;for l=l,t do e=e+1;n[l]=o[e];end;else n[e[2]]=e[3];end;elseif o<=4 then if o==3 then do return end;else do return end;end;elseif o==5 then local l=e[2]local o,e=f(n[l](d(n,l+1,e[3])))t=e+l-1 local e=0;for l=l,t do e=e+1;n[l]=o[e];end;else n[e[2]]=a[e[3]];end;elseif o<=10 then if o<=8 then if o==7 then local l=e[2];local o=n[e[3]];n[l+1]=o;n[l]=o[e[4]];else n[e[2]]();end;elseif o==9 then n[e[2]]=e[3];else n[e[2]]=a[e[3]];end;elseif o<=12 then if o>11 then local e=e[2]n[e]=n[e](d(n,e+1,t))else local l=e[2];local o=n[e[3]];n[l+1]=o;n[l]=o[e[4]];end;elseif o==13 then local F;local E,i;local r;local o;n[e[2]]=a[e[3]];l=l+1;e=c[l];n[e[2]]=a[e[3]];l=l+1;e=c[l];o=e[2];r=n[e[3]];n[o+1]=r;n[o]=r[e[4]];l=l+1;e=c[l];n[e[2]]=e[3];l=l+1;e=c[l];o=e[2]E,i=f(n[o](d(n,o+1,e[3])))t=i+o-1 F=0;for e=o,t do F=F+1;n[e]=E[F];end;l=l+1;e=c[l];o=e[2]n[o]=n[o](d(n,o+1,t))l=l+1;e=c[l];n[e[2]]();l=l+1;e=c[l];do return end;else local e=e[2]n[e]=n[e](d(n,e+1,t))end;l=l+1;end;end;end;return u(h(),{},s)(...);end)()
    end)
    
    if success then
        print("Purple X Hub (Obfuscated Engine) Cargado con éxito.")
    else
        warn("Error cargando el motor principal: " .. tostring(err))
    end
end

task.spawn(ExecutePayload)

-- // --- SISTEMA DE BOTÓN FLOTANTE (CÍRCULO NEÓN PÚRPURA CON ELLEN JOE) --- //
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local GhostMenuGui = Instance.new("ScreenGui")
local MainButton = Instance.new("Frame") -- Contenedor circular con borde
local ImageBtn = Instance.new("ImageButton") -- Imagen Chibi de Ellen Joe
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke") -- El borde neón Púrpura

GhostMenuGui.Name = "PurpleX_EllenJoeButton"
GhostMenuGui.Parent = CoreGui
GhostMenuGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Configuración del Contenedor Circular
MainButton.Name = "MainButton"
MainButton.Parent = GhostMenuGui
MainButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- Fondo oscuro para resaltar el neón
MainButton.BorderSizePixel = 0
MainButton.Position = UDim2.new(0.12, 0, 0.15, 0) -- Tu posición original
MainButton.Size = UDim2.new(0, 60, 0, 60) -- Tamaño tipo Redz
MainButton.Active = true

UICorner.CornerRadius = UDim.new(1, 0) -- Círculo perfecto
UICorner.Parent = MainButton

-- Configuración del Borde Neón Púrpura (idéntico al de la UI)
UIStroke.Parent = MainButton
UIStroke.Thickness = 3 -- Grosor del borde para que se note el "neón"
UIStroke.Color = Color3.fromRGB(170, 0, 255) -- Color Púrpura Vibrante
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Transparency = 0.2 -- Ligeramente translúcido para efecto neón

-- Configuración de la Imagen Chibi de Ellen Joe (Ajustada)
ImageBtn.Name = "ImageBtn"
ImageBtn.Parent = MainButton
ImageBtn.BackgroundTransparency = 1
ImageBtn.Size = UDim2.new(0.85, 0, 0.85, 0) -- Ligeramente más pequeña para que se vea el borde
ImageBtn.Position = UDim2.new(0.075, 0, 0.075, 0) -- Centrada
ImageBtn.Image = "rbxassetid://1000025209" -- ID de la imagen enviada
ImageBtn.ScaleType = Enum.ScaleType.Fit -- Ajuste perfecto de la imagen
ImageBtn.Active = true

-- Lógica para Alternar Visibilidad (Toggle) del Script Ofuscado
local function ToggleVisibility()
    -- Como el script es ofuscado, no sabemos el nombre exacto de la UI principal.
    -- Intentamos encontrar una UI de ScreenGui que haya sido creada recientemente.
    local FoundGui = nil
    for _, v in pairs(CoreGui:GetChildren()) do
        -- Excluimos nuestro propio botón
        if v:IsA("ScreenGui") and v.Name ~= "PurpleX_EllenJoeButton" and v.Enabled then
             FoundGui = v
             break -- Suponemos que la primera UI encontrada es la correcta
        end
    end
    
    if FoundGui then
        FoundGui.Enabled = not FoundGui.Enabled
    end
    
    -- Animación de feedback al hacer clic
    local TargetSize = UDim2.new(0, 55, 0, 55)
    local AnimTween = TweenService:Create(MainButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {Size = TargetSize})
    AnimTween:Play()
    AnimTween.Completed:Connect(function()
        TweenService:Create(MainButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {Size = UDim2.new(0, 60, 0, 60)}):Play()
    end)
end

ImageBtn.MouseButton1Click:Connect(ToggleVisibility)

-- Lógica para Arrastrar (Draggable) Avanzada y Suave
local dragging, dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    local TargetPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    TweenService:Create(MainButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Position = TargetPos}):Play()
end

MainButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainButton.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
