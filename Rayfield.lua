
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create Window
local MainWindow = Rayfield:CreateWindow({
   Name = "Tota Hub",
   LoadingTitle = "Loading . . .",
   LoadingSubtitle = "by luvsformeii",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "TotaHub",
      FileName = "TotaConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = false
   },
   KeySystem = true,
   KeySettings = {
      Title = "Tota hub | Key system",
      Subtitle = "Key System",
      Note = "Key: 1234",
      FileName = "Key system",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"1234"}
   }
})

-- Create Tabs
local MainTab = MainWindow:CreateTab("Useful script")
local OtherTab = MainWindow:CreateTab("Other Hub")
local AimbotTab = MainWindow:CreateTab("Aimbot&Esp")
local MiscTab = MainWindow:CreateTab("Misc")

-- Main Tab Buttons
MainTab:CreateButton({
   Name = "Universal Vspeed changer (Mobile)",
   Callback = function()
      loadstring(game:HttpGet("https://protected-roblox-scripts.onrender.com/a570696f44faad573d3173ad68b5dd5e"))()
   end,
})

MainTab:CreateButton({
   Name = "Keyboard Gui",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/Ujm4HWxh/raw", true))()
   end,
})

MainTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

MainTab:CreateButton({
   Name = "WASD Mobile GUI",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/testingscriptutorial/Rayfield.lua/refs/heads/main/WASD_Gui"))()
   end,
})

MainTab:CreateButton({
   Name = "Speed Boost Script",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/testingscriptutorial/Rayfield.lua/refs/heads/main/speed%20boost"))()
   end,
})

-- Other Tab
OtherTab:CreateButton({
   Name = "Solara Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/Solara%20Hub.lua"))()
   end,
})

-- Aimbot & ESP Tab
AimbotTab:CreateButton({
   Name = "Volcano Aimbot",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/qtZt0Nzb"))()
   end,
})

-- Misc Tab Slider
MiscTab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Walkspeed value",
   Callback = function(Value)
      local player = game.Players.LocalPlayer
      if player and player.Character and player.Character:FindFirstChild("Humanoid") then
         player.Character.Humanoid.WalkSpeed = Value
      end
   end,
})

