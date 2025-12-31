-- David Hub | Blox Fruits
-- 100% Mobile | Estilo Hacker

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "David Hub | Blox Fruits",
   LoadingTitle = "David Hub",
   LoadingSubtitle = "by David",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "DavidHub",
      FileName = "BloxFruits"
   },
   Discord = {
      Enabled = false
   },
   KeySystem = false
})

local MainTab = Window:CreateTab("⚔️ Main", 4483362458)
local FarmTab = Window:CreateTab("🌾 Farm", 4483362458)
local MiscTab = Window:CreateTab("⚙️ Misc", 4483362458)

MainTab:CreateButton({
   Name = "Auto Haki",
   Callback = function()
      print("Auto Haki ligado")
   end
})

MainTab:CreateButton({
   Name = "Auto Attack",
   Callback = function()
      print("Auto Attack ligado")
   end
})

FarmTab:CreateToggle({
   Name = "Auto Farm Level",
   CurrentValue = false,
   Callback = function(Value)
      print("Auto Farm:", Value)
   end
})

MiscTab:CreateButton({
   Name = "Fechar Menu",
   Callback = function()
      Rayfield:Destroy()
   end
})
