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
local commands = {
	"re", "delgui", "tptool", "rejoin", "lesslag", "toolmouse"
}

local mouse = player:GetMouse()


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


--func:


function command()
	local command = cmdbar.Text
	for i=1,#commands do
		if command == commands[i] then
			local getfen = getfenv()
			getfen[commands[i]]()
		end
	end
end

function delgui()
	print("Goodbye!")
	EXtreme:Destroy()
	script:Destroy()
end

function re()
	print("respawn")
	character.Head:Destroy()
	
end

function tptool()
	print("tptool")
	local backpack = player:FindFirstChild("Backpack")
	local tool = Instance.new("Tool", backpack)
	tool.RequiresHandle = false
	
	tool.Activated:Connect(function()
		print("tp")
		local pos = mouse.Hit.Position
		character:MoveTo(pos)
	end)
	
end

function rejoin()
	local ts = game:GetService("TeleportService")

	local p = player

	ts:Teleport(game.PlaceId, p)
end

function lesslag()
	for i,v in ipairs(workspace:GetChildren()) do
		if v:IsA("BasePart") then
			v.Material = Enum.Material.Plastic
		end
	end
end

function toolmouse()
	for i,v in ipairs(character:GetChildren()) do
		if v:IsA("Tool") then
			while wait() do
				if v == nil then return end
				v.Grip = CFrame.new(v:WaitForChild("Handle").Position, mouse.Hit.Position).Rotation
			end
		end
	end
	
end
--event

cmdbar.InputEnded:Connect(command)
