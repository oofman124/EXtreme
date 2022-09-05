--EXtreme V1
--An open source project
--MIT licence

----------------------
-- Gui to Lua
-- Version: 3.2

-- Instances:

local EXtreme = Instance.new("ScreenGui")
local cmdbar = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local logo = Instance.new("TextLabel")
local player = game.Players.LocalPlayer
local character = player.Character

--Properties:

EXtreme.Name = "EXtreme"
EXtreme.Parent = player:WaitForChild("PlayerGui")

cmdbar.Name = "cmdbar"
cmdbar.Parent = EXtreme
cmdbar.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
cmdbar.Position = UDim2.new(0.198470145, 0, 0.968856454, 0)
cmdbar.Size = UDim2.new(0, 868, 0, 25)
cmdbar.Font = Enum.Font.SourceSans
cmdbar.PlaceholderText = "Command Bar"
cmdbar.Text = ""
cmdbar.TextColor3 = Color3.fromRGB(0, 0, 0)
cmdbar.TextSize = 14.000
cmdbar.TextXAlignment = Enum.TextXAlignment.Left

UICorner.Parent = cmdbar

logo.Name = "logo"
logo.Parent = EXtreme
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.Position = UDim2.new(0.644046903, 0, 0.951923072, 0)
logo.Size = UDim2.new(0, 200, 0, 14)
logo.Font = Enum.Font.SourceSans
logo.Text = "EXtreme V1"
logo.TextColor3 = Color3.fromRGB(255, 0, 0)
logo.TextSize = 14.000
