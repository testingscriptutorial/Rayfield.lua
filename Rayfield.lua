
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


Rayfield:LoadConfiguration()

local MainWindow = Rayfield:CreateWindow({
   Name = "Tota Hub",
   Icon = nil,
   LoadingTitle = "Loading . . .",
   LoadingSubtitle = "by luvsformeii",
   ShowText = "Tota Hub",
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, 

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Tota hub",
      FileName = "Tota Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true,
   KeySettings = {
      Title = "Tota hub | Key system",
      Subtitle = "Key System",
      Note = "Key:1234",
      FileName = "Key system",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"1234"}
   }
})


local MainTab = MainWindow:CreateTab("Useful script") 


local Button = MainTab:CreateButton({
   Name = "Universal Vspeed changer(Mobile)",
   Callback = function()
      loadstring(game:HttpGet("https://protected-roblox-scripts.onrender.com/a570696f44faad573d3173ad68b5dd5e"))()
   end,
})


local SecondButton = MainTab:CreateButton({
   Name = "Keyboard Gui",
   Callback = function()
       loadstring(game:HttpGet(('https://pastefy.app/Ujm4HWxh/raw'),true))()
   end,
})


local ThirdButton = MainTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})


local OtherTab = MainWindow:CreateTab("Other Hub")


local FourthButton = OtherTab:CreateButton({
   Name = "Solara Hub",
   Callback = function()
   
loadstring(game:HttpGet("https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/Solara%20Hub.lua"))()
   end,
})


local AimbotTab = MainWindow:CreateTab("Aimbot&Esp")


local FifthButton = AimbotTab:CreateButton({
   Name = "Volcano Aimbot",
   Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/qtZt0Nzb"))()
   end,
})


local MiscTab = MainWindow:CreateTab("Misc")


local Slider = MiscTab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 100},
   Increment = 1,
   Suffix = " Speed",
   CurrentValue = 16, -- 16 is the default WalkSpeed
   Flag = "Walkspeed value",
   Callback = function(Value)
      local player = game.Players.LocalPlayer
      if player and player.Character and player.Character:FindFirstChild("Humanoid") then
         player.Character.Humanoid.WalkSpeed = Value
      end
   end,
})
