--[[ 
    David Hub | Blox Fruits
    100% Mobile | Hacker Style
    Criado por David
]]

-- Carregar Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Criar Janela
local Window = Rayfield:CreateWindow({
    Name = "🟢 David Hub | Blox Fruits",
    LoadingTitle = "David Hub",
    LoadingSubtitle = "Mobile Hacker",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "DavidHub",
        FileName = "BloxFruits"
    },
    KeySystem = false
})

--------------------------------------------------
-- TABS
--------------------------------------------------
local Main = Window:CreateTab("🏠 Main", 4483362458)
local Player = Window:CreateTab("🧍 Player", 4483362458)
local Farm = Window:CreateTab("🌾 Auto Farm", 4483362458)
local Combat = Window:CreateTab("⚔️ Combat", 4483362458)
local Teleport = Window:CreateTab("🌀 Teleport", 4483362458)
local Visual = Window:CreateTab("👁️ ESP", 4483362458)
local Extra = Window:CreateTab("⚙️ Extra", 4483362458)

--------------------------------------------------
-- MAIN
--------------------------------------------------
Main:CreateButton({
    Name = "▶ Executar Script Base",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua",
            true
        ))()
    end
})

Main:CreateButton({
    Name = "❌ Fechar Menu",
    Callback = function()
        Rayfield:Destroy()
    end
})

--------------------------------------------------
-- PLAYER
--------------------------------------------------
Player:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 300},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(v)
        local hum = game.Players.LocalPlayer.Character
            and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.WalkSpeed = v
        end
    end
})

Player:CreateSlider({
    Name = "JumpPower",
    Range = {50, 300},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(v)
        local hum = game.Players.LocalPlayer.Character
            and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.JumpPower = v
        end
    end
})

--------------------------------------------------
-- AUTO FARM (estrutura pronta)
--------------------------------------------------
for i = 1, 40 do
    Farm:CreateToggle({
        Name = "Auto Farm Option " .. i,
        CurrentValue = false,
        Callback = function(v)
            -- colocar funções depois
        end
    })
end

--------------------------------------------------
-- COMBAT
--------------------------------------------------
for i = 1, 25 do
    Combat:CreateToggle({
        Name = "Combat Option " .. i,
        CurrentValue = false,
        Callback = function(v)
        end
    })
end

--------------------------------------------------
-- TELEPORT
--------------------------------------------------
for i = 1, 20 do
    Teleport:CreateButton({
        Name = "Teleport Lugar " .. i,
        Callback = function()
        end
    })
end

--------------------------------------------------
-- ESP / VISUAL
--------------------------------------------------
for i = 1, 10 do
    Visual:CreateToggle({
        Name = "ESP Option " .. i,
        CurrentValue = false,
        Callback = function(v)
        end
    })
end

--------------------------------------------------
-- EXTRA
--------------------------------------------------
Extra:CreateToggle({
    Name = "Anti AFK",
    CurrentValue = false,
    Callback = function(v)
        if v then
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                task.wait(1)
                vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)
        end
    end
})
