repeat
    wait()
until game:GetService("Players").LocalPlayer ~= nil

if not game:GetService("Players").LocalPlayer.Character then
    game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
end

--/ Variables

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Work = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local commands = {}


local Doge = {
    Cmds = {},
    Events = {},
    Debounces = {CmdCooldown = false}, 
    CommandKey = "BackSlash",
    Prefix = "#"
}
CommandKey = Doge.CommandKey

local Settings = {
    Prefix = "#",
    Version = "1.0.0"
}

for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "Doge_AdminGui" then
        v:Destroy()
    end
end
-- / Gui

local Doge_AdminGui = Instance.new("ScreenGui")
local CommandBar = Instance.new("TextBox")
local CommandBarOuter = Instance.new("ImageLabel")
local Notficframe = Instance.new("ImageLabel")
local Notificationtext = Instance.new("TextLabel")
local MainLogo = Instance.new("ImageLabel")
local LogoText = Instance.new("TextLabel")

--Properties:

Doge_AdminGui.Name = "Doge_AdminGui"
Doge_AdminGui.Parent = game.CoreGui



CommandBarOuter.Name = "CommandBarOuter"
CommandBarOuter.Parent = Doge_AdminGui
CommandBarOuter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandBarOuter.BackgroundTransparency = 1.000
CommandBarOuter.Position = UDim2.new(.40, 0, 0.80, 0)
CommandBarOuter.Size = UDim2.new(0, 284, 0, 68)
CommandBarOuter.ImageColor3 = Color3.new(139,0,0)
CommandBarOuter.Image = "rbxassetid://3570695787"
CommandBarOuter.ScaleType = Enum.ScaleType.Slice
CommandBarOuter.SliceCenter = Rect.new(100, 100, 100, 100)
CommandBarOuter.SliceScale = 0.120
CommandBarOuter.Visible = false  

CommandBar.Name = "CommandBar"
CommandBar.Parent = Doge_AdminGui
CommandBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandBar.BackgroundTransparency = 1
CommandBar.Position = UDim2.new(.40, 0, 0.81, 0)
CommandBar.Size = UDim2.new(0, 270, 0, 50)
CommandBar.Visible = false
CommandBar.Active = true
CommandBar.TextColor3 = Color3.new(0,0,0)
CommandBar.TextScaled = true
CommandBar.PlaceholderText = "Type a command to execute it"
CommandBar.TextSize = "9"


Notficframe.Name = "Notficframe"
Notficframe.Parent = Doge_AdminGui
Notficframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notficframe.BackgroundTransparency = 1.000
Notficframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
Notficframe.Position = UDim2.new(0.3, 0, -0.5, 0)
Notficframe.Size = UDim2.new(0, 543, 0, 47)
Notficframe.Image = "rbxassetid://3570695787"
Notficframe.ImageColor3 = Color3.fromRGB(139, 0, 0)
Notficframe.ScaleType = Enum.ScaleType.Slice
Notficframe.SliceCenter = Rect.new(100, 100, 100, 100)
Notficframe.SliceScale = 0.120


Notificationtext.Name = "Notificationtext"
Notificationtext.Parent = Notficframe
Notificationtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notificationtext.BackgroundTransparency = 1.000
Notificationtext.Position = UDim2.new(0, 0, -0.016595751, 0)
Notificationtext.Size = UDim2.new(0, 543, 0, 47)
Notificationtext.Font = Enum.Font.SourceSans
Notificationtext.TextColor3 = Color3.fromRGB(0, 0, 0)
Notificationtext.TextScaled = true
Notificationtext.TextSize = 14.000
Notificationtext.TextWrapped = true


MainLogo.Name = "MainLogo"
MainLogo.Parent = Doge_AdminGui
MainLogo.AnchorPoint = Vector2.new(0.5, 0.5)
MainLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainLogo.BackgroundTransparency = 1.000
MainLogo.LayoutOrder = 2
MainLogo.Position = UDim2.new(0.5, 0, 0.99, 0)
MainLogo.Size = UDim2.new(0.126000002, 0, 0.224999994, 0)
MainLogo.Visible = false
MainLogo.Image = "rbxassetid://6136750973"

LogoText.Name = "LogoText"
LogoText.Parent = MainLogo
LogoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LogoText.Position = UDim2.new(0.1, 0, 0.99, 0)
LogoText.Size = UDim2.new(0.85, 0, 0.30, 0)
LogoText.BackgroundTransparency = 1
LogoText.TextScaled = true
LogoText.Text = "Doge Admin"
LogoText.TextColor3 = Color3.new(255,255,255)

MainLogo.Visible = true
game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
game:GetService("TweenService"):Create(LogoText, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.1, 0, 0.9, 0)}):Play()
wait(2)
game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.99, 0)}):Play()
game:GetService("TweenService"):Create(LogoText, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.1, 0, 0.99, 0)}):Play()
wait(1)
MainLogo:Destroy()

-- / Functions

Doge.Events.InputBegan = game:GetService("UserInputService").InputBegan:Connect(function(Key)
    if Key.KeyCode.Name == Doge.CommandKey then
        if Doge.Debounces.CmdCooldown == false then
            Doge.Debounces.CmdCooldown = true
            CommandBar.Visible = true
            CommandBarOuter.Visible = true
            game:GetService("TweenService"):Create(CommandBarOuter, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(.40, 0, 0.85, 0)}):Play()
            game:GetService("TweenService"):Create(CommandBar, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(.40, 0, 0.86, 0)}):Play()
            wait(0.25)
            CommandBar:CaptureFocus()
            wait(0.25)
            Doge.Debounces.CmdCooldown = false
        end
    end
end)

CommandBar.FocusLost:Connect(function(EnterPressed)
    spawn(function()
        if Doge.Debounces.CmdCooldown == false then
            if EnterPressed then
            Doge.Debounces.CmdCooldown = true

            message = string.lower(CommandBar.Text)


local splitString = message:split(" ")

local slashCommand = splitString[1]



local cmdName = splitString[1]

if commands[cmdName] then

        local args = {}

        for i = 2, #splitString, 1 do
            table.insert(args,splitString[i])
        end

        if args[2] ~= nil or args[2] == " " then

          commands[cmdName](args[1],args[2])
        else
                local TargetName = splitString[2]
        
    commands[cmdName](TargetName)
        end



end

            CommandBar.Text = ""
            game:GetService("TweenService"):Create(CommandBarOuter, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(.40, 0, 0.99, 0)}):Play()
            game:GetService("TweenService"):Create(CommandBar, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(.40, 0, 0.99, 0)}):Play()
            wait(0.25)
            CommandBarOuter.Visible = false
            CommandBar.Visible = false
            Doge.Debounces.CmdCooldown = false
end
end
end)
end)

local Players = game:GetService("Players")
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end
 
local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

function notfiy(message, possibletimer)
    spawn(function()
        for i, v in pairs(Doge_AdminGui:GetChildren()) do
            if v.Name == "-NewNotification" then
                spawn(function()
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0.3, 0, -0.5, 0)}):Play()
                    wait(0.25)
                    v:Destroy()
                end)
            end
        end

        local Notification = Notficframe:Clone()
        Notification.Name = "-NewNotification"
        Notification.Parent = Doge_AdminGui
        Notification.Visible = true 
        Notification.Notificationtext.Text = tostring(message)
        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.3, 0, 0, 0)}):Play()
        wait(possibletimer)
        game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = UDim2.new(0.3, 0, -0.5, 0)}):Play()
        wait(0.25)
        Notification:Destroy()
    end)
end




game:GetService("RunService").Heartbeat:Connect(function()
    LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
    pcall(function() sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= LocalPlayer then
            LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
            pcall(function() settings().Physics.AllowSleep = false ; sethiddenproperty(LocalPlayer, "SimulationRadius", math.pow(math.huge, math.huge) * math.huge) end)
            LocalPlayer.ReplicationFocus = Workspace
        end
    end
end)

commands.bring = function(Target)
Target = FindPlayer(Target)
Target.Character:SetPrimaryPartCFrame(LocalPlayer.Character.HumanoidRootPart.CFrame)
end
commands.claim = function(Target)
Target = FindPlayer(Target)
	if Target then
print(Target.Name)
		local mes = Instance.new("Message", workspace)
            local CurrentCFrame2 = LocalPlayer.Character.HumanoidRootPart.CFrame
            mes.Text = "Preparing for faster claim bla bla"
            for i,v in pairs(LocalPlayer.Character:GetDescendants()) do
            v:Destroy()
            end
            repeat
            wait()
            until LocalPlayer.Character:FindFirstChild'HumanoidRootPart' and LocalPlayer.Character:FindFirstChild'Head' and LocalPlayer.Character:FindFirstChild'Humanoid'
            mes:Destroy()
            LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentCFrame2
            Player = Target
			local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
			if LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then 
				LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
			end
			Instance.new("Humanoid").Parent = LocalPlayer.Character

			Tool.Parent = LocalPlayer.Character
			if Tool:FindFirstChild("Handle") and Player.Character.PrimaryPart ~= nil then
				workspace.FallenPartsDestroyHeight = 0/1/0
								local CurrentCFrame = Player.Character.HumanoidRootPart.CFrame
				repeat
					LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CurrentCFrame + Vector3.new(0, 100000, 0)
					Player.Character:SetPrimaryPartCFrame(LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,2,0))
					wait()
				until Tool.Parent == Player.Character

				for i = 1, 10 do
					LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame
				end
                wait()
                for i = 1, 10 do
					LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame - Vector3.new(0, math.huge, 0.)
				end
                wait()
                	for i = 1, 10 do
					LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame
				end



				wait(.2)


                LocalPlayer.Character:BreakJoints()

				if not Player.Character:FindFirstChild("-Claimed") then
					local Claimed = Instance.new("ObjectValue")
					Claimed.Name = "-Claimed"
					Claimed.Parent = Player.Character
				end


			end
			else
			notfiy("not find player")
		end

end



commands.tp = function(target1,target2)
target1 = FindPlayer(target1)
target2 = FindPlayer(target2)
target1.Character.HumanoidRootPart.CFrame = target2.Character.HumanoidRootPart.CFrame
end
LocalPlayer.Chatted:Connect(function(msg)
message = string.lower(msg)


local splitString = message:split(" ")

local slashCommand = splitString[1]

local cmd = slashCommand:split(Settings.Prefix)

local cmdName = cmd[2]

if commands[cmdName] then

        local args = {}

        for i = 2, #splitString, 1 do
            table.insert(args,splitString[i])
        end

        if args[2] ~= nil or args[2] == " " then

          commands[cmdName](args[1],args[2])
        else
                local TargetName = splitString[2]
        
    commands[cmdName](TargetName)
        end



end

end)
