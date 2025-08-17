
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


local AnotherButton = MainTab:CreateButton({
   Name = "WASD GUI",
   Callback = function()
   
loadstring(game:HttpGet('https://raw.githubusercontent.com/testingscriptutorial/Rayfield.lua/refs/heads/main/WASD_Gui'))()
   end,   
})


local AnotherButton = MainTab:CreateButton({
   Name = "Speed Booster",
   Callback = function()

loadstring(Game:HttpGet('https://raw.githubusercontent.com/testingscriptutorial/Rayfield.lua/refs/heads/main/speed%20boost’))()
   end,
})


local AnotherButton =
MainTab:CreateButton({
   Name = "Fantastic Fly",
   Callback = function()
   

local UserInputService = game:GetService("UserInputService")
local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
if isMobile then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/MobileFly.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/FlyR15.lua"))()
end
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


local player = game.Players.LocalPlayer
local MiscTab = MainWindow:CreateTab("Misc")

local Slider = MiscTab:CreateSlider({
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


-- Fly globals
getgenv().Flying = false
getgenv().FlySpeed = 2
local flyDirection = Vector3.zero

-- Fly Speed Slider
MiscTab:CreateSlider({
   Name = "Fly Speed",
   Range = {1, 10},
   Increment = 1,
   Suffix = "x",
   CurrentValue = 2,
   Callback = function(Value)
      getgenv().FlySpeed = Value
   end,
})

-- Fly Toggle
MiscTab:CreateToggle({
   Name = "Toggle Fly (Doesnt work)",
   CurrentValue = false,
   Callback = function(Toggled)
      local Character = player.Character or player.CharacterAdded:Wait()
      local HRP = Character:WaitForChild("HumanoidRootPart")
      getgenv().Flying = Toggled
      gui.Enabled = Toggled

      if Toggled then
         if not HRP:FindFirstChild("BodyVelocity") then
            local bv = Instance.new("BodyVelocity", HRP)
            bv.Name = "BodyVelocity"
            bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            bv.Velocity = Vector3.zero
         end
      else
         local bv = HRP:FindFirstChild("BodyVelocity")
         if bv then bv:Destroy() end
         inputVector = Vector2.zero
         vertical = 0
         knob.Position = UDim2.new(0.5, 0, 0.5, 0)
      end
   end,
})

-- === Joystick GUI ===
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "MobileFlyJoystick"
gui.ResetOnSpawn = false
gui.Enabled = false

-- Joystick base
local base = Instance.new("Frame", gui)
base.Name = "JoystickBase"
base.AnchorPoint = Vector2.new(0.5, 0.5)
base.Size = UDim2.new(0, 150, 0, 150)
base.Position = UDim2.new(0, 120, 1, -180)
base.BackgroundTransparency = 1
base.BorderSizePixel = 0
local baseCorner = Instance.new("UICorner", base)
baseCorner.CornerRadius = UDim.new(1, 0)

-- Joystick knob
local knob = Instance.new("Frame", base)
knob.Name = "JoystickKnob"
knob.AnchorPoint = Vector2.new(0.5, 0.5)
knob.Size = UDim2.new(0, 60, 0, 60)
knob.Position = UDim2.new(0.5, 0, 0.5, 0)
knob.BackgroundTransparency = 1
knob.BorderSizePixel = 0
local knobCorner = Instance.new("UICorner", knob)
knobCorner.CornerRadius = UDim.new(1, 0)

local radius = 60
local dragging = false
inputVector = Vector2.zero

local function updateKnob(inputPos)
   local rel = Vector2.new(inputPos.X - base.AbsolutePosition.X - base.AbsoluteSize.X / 2,
                           inputPos.Y - base.AbsolutePosition.Y - base.AbsoluteSize.Y / 2)
   if rel.Magnitude > radius then
      rel = rel.Unit * radius
   end
   knob.Position = UDim2.new(0.5, rel.X, 0.5, rel.Y)
   inputVector = rel / radius
end

base.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.Touch then
      dragging = true
      updateKnob(input.Position)
   end
end)

base.InputChanged:Connect(function(input)
   if dragging and input.UserInputType == Enum.UserInputType.Touch then
      updateKnob(input.Position)
   end
end)

base.InputEnded:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.Touch then
      dragging = false
      knob.Position = UDim2.new(0.5, 0, 0.5, 0)
      inputVector = Vector2.zero
   end
end)

-- Vertical buttons
vertical = 0

local upBtn = Instance.new("TextButton", gui)
upBtn.Text = "⬆"
upBtn.Size = UDim2.new(0, 40, 0, 40)
upBtn.Position = UDim2.new(1, -100, 1, -180)
upBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
upBtn.TextColor3 = Color3.new(1, 1, 1)
upBtn.BackgroundTransparency = 0.2
upBtn.BorderSizePixel = 0

local downBtn = Instance.new("TextButton", gui)
downBtn.Text = "⬇"
downBtn.Size = UDim2.new(0, 40, 0, 40)
downBtn.Position = UDim2.new(1, -100, 1, -120)
downBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
downBtn.TextColor3 = Color3.new(1, 1, 1)
downBtn.BackgroundTransparency = 0.2
downBtn.BorderSizePixel = 0

upBtn.MouseButton1Down:Connect(function() vertical = 1 end)
upBtn.MouseButton1Up:Connect(function() vertical = 0 end)
downBtn.MouseButton1Down:Connect(function() vertical = -1 end)
downBtn.MouseButton1Up:Connect(function() vertical = 0 end)

-- Movement loop
game:GetService("RunService").RenderStepped:Connect(function()
   if getgenv().Flying and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
      local HRP = player.Character.HumanoidRootPart
      local bv = HRP:FindFirstChild("BodyVelocity")
      if bv then
         local cam = workspace.CurrentCamera.CFrame
         local moveDir = cam.RightVector * inputVector.X + cam.LookVector * -inputVector.Y
         local vertDir = Vector3.new(0, vertical, 0)
         local velocity = (moveDir + vertDir).Unit * getgenv().FlySpeed * 10
         if velocity ~= velocity then velocity = Vector3.zero end
         bv.Velocity = velocity
      end
   end
end)
