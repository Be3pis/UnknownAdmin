    -- All credits to IceGear creators and countscifimovielol function from achromatic fe  
    local isagain = nil
    if isfile and readfile and writefile then
        if isfile("check.ua") then
            isagain = " again"
        else
            isagain = ""
            writefile("check.ua", "")
        end
    end
    -- \Variables
    local wrk = game:GetService("Workspace")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local CoreGui = game:GetService("CoreGui")
    local Character = LocalPlayer.Character
    local name = LocalPlayer.Name
    local plrs = game:GetService("Players")
    local banned = {"a"}
    local blacklisted = {"No One"}
    _G.Loopbring = false
    _G.Looptp = false
    _G.Hold = false
    _G.Bang = false
    _G.Gun = false
    _G.dmode = false


    local Unknown = {
        Cmds = {},
        Events = {},
        Debounces = {CmdCooldown = false},
        CommandKey = "BackSlash",
        Prefix = "?",
    }
    table.insert(blacklisted,"")
    local Settings = {
        Prefix = "?",
        Version = "3.0.0"
    }

    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name == "Unknown_AdminGui" then
            v:Destroy()
        end
    end


    for i, v in pairs(game:GetService("Lighting"):GetChildren()) do
        if v.Name == "BlueColorCorrection" or v.Name == "CmdBlurEffect" then
            v:Destroy()
        end
    end


    local Unknown_AdminGui = Instance.new("ScreenGui")
    local Intro = Instance.new("Folder")
    local Punished = {""}
    local LeftFrameThing = Instance.new("Frame")
    local LoadingFrame = Instance.new("Frame")
    local LoadingThing = Instance.new("Frame")
    local RightFrameThing = Instance.new("Frame")
    local LoadingFrame_2 = Instance.new("Frame")
    local LoadingThing_2 = Instance.new("Frame")
    local MainLogo = Instance.new("ImageLabel")
    local MainLogo2 = Instance.new("ImageLabel")
    local MiddleLogoThing = Instance.new("ImageLabel")
    local AdminNameLabel = Instance.new("TextLabel")
    local BlueColorCorrection = Instance.new("ColorCorrectionEffect")
    for i,v in pairs(blacklisted) do
    if v == LocalPlayer.Name then
    LocalPlayer:Kick("Blacklisted")
    end
    end
    for i,v in pairs(banned) do
    if v == LocalPlayer.Name then
    LocalPlayer:Kick("banned")
    end
    end
    local ExampleLabel = Instance.new("TextLabel")
    local CmdList = Instance.new("ScrollingFrame")
    local CmdListUIListLayout = Instance.new("UIListLayout")
    local CmdBarFrame = Instance.new("Frame")
    local CmdBarDesign = Instance.new("ImageLabel")
    local CmdBar = Instance.new("TextBox")
    local NotificationFrame = Instance.new("TextLabel")
    local CmdBlurEffect = Instance.new("BlurEffect")

    local Main = Instance.new("Folder")


    Unknown_AdminGui.Name = "Unknown_AdminGui"
    Unknown_AdminGui.Parent = game:GetService("CoreGui")

    Intro.Name = "Intro"
    Intro.Parent = Unknown_AdminGui

    LeftFrameThing.Name = "LeftFrameThing"
    LeftFrameThing.Parent = Intro
    LeftFrameThing.AnchorPoint = Vector2.new(1, 0.5)
    LeftFrameThing.BackgroundColor3 = Color3.fromRGB(69, 70, 72)
    LeftFrameThing.LayoutOrder = 0
    LeftFrameThing.Position = UDim2.new(-0.00100000005, 0, 0.5, 0)
    LeftFrameThing.Size = UDim2.new(0.5, 0, 0.25, 0)

    RightFrameThing.Name = "RightFrameThing"
    RightFrameThing.Parent = Intro
    RightFrameThing.AnchorPoint = Vector2.new(0, 0.5)
    RightFrameThing.BackgroundColor3 = Color3.fromRGB(69, 70, 72)
    RightFrameThing.LayoutOrder = 0
    RightFrameThing.Position = UDim2.new(1.00100005, 0, 0.5, 0)
    RightFrameThing.Size = UDim2.new(0.5, 0, 0.25, 0)

    LoadingFrame.Name = "LoadingFrame"
    LoadingFrame.Parent = LeftFrameThing
    LoadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    LoadingFrame.BackgroundColor3 = Color3.fromRGB(62, 63, 65)
    LoadingFrame.LayoutOrder = 1
    LoadingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    LoadingFrame.Size = UDim2.new(0.100000001, 0, 0.850000024, 0)

    LoadingThing.Name = "LoadingThing"
    LoadingThing.Parent = LoadingFrame
    LoadingThing.AnchorPoint = Vector2.new(0.5, 1)
    LoadingThing.BackgroundColor3 = Color3.fromRGB(89, 130, 82)
    LoadingThing.BorderSizePixel = 0
    LoadingThing.LayoutOrder = 1
    LoadingThing.Position = UDim2.new(0.5, 0, 1, 0)
    LoadingThing.Size = UDim2.new(1, 0, 0, 0)

    LoadingFrame_2.Name = "LoadingFrame"
    LoadingFrame_2.Parent = RightFrameThing
    LoadingFrame_2.AnchorPoint = Vector2.new(0.5, 0.5)
    LoadingFrame_2.BackgroundColor3 = Color3.fromRGB(62, 63, 65)
    LoadingFrame_2.LayoutOrder = 1
    LoadingFrame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    LoadingFrame_2.Size = UDim2.new(0.100000001, 0, 0.850000024, 0)

    LoadingThing_2.Name = "LoadingThing"
    LoadingThing_2.Parent = LoadingFrame_2
    LoadingThing_2.AnchorPoint = Vector2.new(0.5, 1)
    LoadingThing_2.BackgroundColor3 = Color3.fromRGB(89, 130, 82)
    LoadingThing_2.BorderSizePixel = 0
    LoadingThing_2.LayoutOrder = 1
    LoadingThing_2.Position = UDim2.new(0.5, 0, 1, 0)
    LoadingThing_2.Size = UDim2.new(1, 0, 0, 0)
    for i,v in pairs(Punished) do
    if v == LocalPlayer.Name then
    LocalPlayer:Kick("Punished")
    end
    end

    MiddleLogoThing.Name = "MiddleLogoThing"
    MiddleLogoThing.Parent = Intro
    MiddleLogoThing.AnchorPoint = Vector2.new(0.5, 0.5)
    MiddleLogoThing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MiddleLogoThing.BackgroundTransparency = 1.000
    MiddleLogoThing.LayoutOrder = 1
    MiddleLogoThing.Position = UDim2.new(0.5, 0, 0.5, 0)
    MiddleLogoThing.Size = UDim2.new(0.126000002, 0, 0.224999994, 0)
    MiddleLogoThing.Visible = false
    MiddleLogoThing.Image = "rbxassetid://3570695787"
    MiddleLogoThing.ImageColor3 = Color3.fromRGB(53, 53, 53)
    MiddleLogoThing.ImageTransparency = 1.000
    MiddleLogoThing.ScaleType = Enum.ScaleType.Fit
    MiddleLogoThing.SliceCenter = Rect.new(100, 100, 100, 100)
    MiddleLogoThing.SliceScale = 0.120

    MainLogo.Name = "MainLogo"
    MainLogo.Parent = Intro
    MainLogo.AnchorPoint = Vector2.new(0.5, 0.5)
    MainLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainLogo.BackgroundTransparency = 1.000
    MainLogo.LayoutOrder = 2
    MainLogo.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainLogo.Size = UDim2.new(0.126000002, 0, 0.224999994, 0)
    MainLogo.Visible = false
    MainLogo.Image = "rbxassetid://6136750973"
    MainLogo.ImageColor3 = Color3.fromRGB(0, 0, 0)
    MainLogo.ImageTransparency = 1.000
    MainLogo.ScaleType = Enum.ScaleType.Fit
    MainLogo.SliceCenter = Rect.new(100, 100, 100, 100)
    MainLogo.SliceScale = 0.120

    MainLogo2.Name = "MainLogo2"
    MainLogo2.Parent = MainLogo
    MainLogo2.AnchorPoint = Vector2.new(0.5, 0.5)
    MainLogo2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainLogo2.BackgroundTransparency = 1.000
    MainLogo2.LayoutOrder = 4
    MainLogo2.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainLogo2.Size = UDim2.new(0.99000001, 0, 0.99000001, 0)
    MainLogo2.Image = "rbxassetid://6136750973"
    MainLogo2.ImageColor3 = Color3.fromRGB(89, 85, 73)
    MainLogo2.ImageTransparency = 1.000
    MainLogo2.ScaleType = Enum.ScaleType.Fit
    MainLogo2.SliceCenter = Rect.new(100, 100, 100, 100)
    MainLogo2.SliceScale = 0.120

    AdminNameLabel.Name = "AdminNameLabel"
    AdminNameLabel.Parent = Intro
    AdminNameLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    AdminNameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AdminNameLabel.BackgroundTransparency = 1.000
    AdminNameLabel.BorderSizePixel = 0
    AdminNameLabel.Position = UDim2.new(0.5, 0, 0.725000024, 0)
    AdminNameLabel.Size = UDim2.new(0.600000024, 0, 0.075000003, 0)
    AdminNameLabel.Visible = false
    AdminNameLabel.Font = Enum.Font.SourceSans
    AdminNameLabel.Text = "Krima"
    AdminNameLabel.TextColor3 = Color3.fromRGB(200, 197, 166)
    AdminNameLabel.TextScaled = true
    AdminNameLabel.TextSize = 14.000
    AdminNameLabel.TextStrokeTransparency = 0.800
    AdminNameLabel.TextWrapped = true

    BlueColorCorrection.Name = "BlueColorCorrection"
    BlueColorCorrection.Parent = game:GetService("Lighting")
    BlueColorCorrection.Brightness = 0
    BlueColorCorrection.Contrast = 0
    BlueColorCorrection.Enabled = true
    BlueColorCorrection.Saturation = 0
    BlueColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)


    Main.Name = "Main"
    Main.Parent = Unknown_AdminGui

    CmdList.Name = "-CmdList"
    CmdList.Parent = Main
    CmdList.Active = true
    CmdList.Visible = false
    CmdList.AnchorPoint = Vector2.new(0.5, 0)
    CmdList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CmdList.BackgroundTransparency = 1.000
    CmdList.BorderSizePixel = 0
    CmdList.Position = UDim2.new(0.5, 0, 0.574999988, 0)
    CmdList.Size = UDim2.new(0.200000003, 0, 0.300000012, 0)
    CmdList.CanvasSize = UDim2.new(0, 0, 0, 0)

    ExampleLabel.Name = "ExampleLabel"
    ExampleLabel.Parent = CmdList
    ExampleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExampleLabel.BackgroundTransparency = 1.000
    ExampleLabel.BorderSizePixel = 0
    ExampleLabel.Size = UDim2.new(1, 0, 0.174999997, 0)
    ExampleLabel.Visible = false
    ExampleLabel.Font = Enum.Font.SourceSans
    ExampleLabel.TextColor3 = Color3.fromRGB(222, 222, 222)
    ExampleLabel.TextSize = 14.000
    ExampleLabel.TextStrokeTransparency = 1 -- 0.9
    ExampleLabel.TextTransparency = 1 -- 0


    CmdListUIListLayout.Name = "CmdListUIListLayout"
    CmdListUIListLayout.Parent = CmdList
    CmdListUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    CmdBarFrame.Name = "CmdBarFrame"
    CmdBarFrame.Parent = Main
    CmdBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    CmdBarFrame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
    CmdBarFrame.BackgroundTransparency = 0.500
    CmdBarFrame.BorderSizePixel = 0
    CmdBarFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    CmdBarFrame.Size = UDim2.new(1, 0, 0, 0) -- UDim2.new(1, 0, 0.100000001, 0)

    CmdBarDesign.Name = "CmdBarDesign"
    CmdBarDesign.Parent = CmdBarFrame
    CmdBarDesign.AnchorPoint = Vector2.new(0.5, 0.5)
    CmdBarDesign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CmdBarDesign.BackgroundTransparency = 1.000
    CmdBarDesign.BorderSizePixel = 0
    CmdBarDesign.Position = UDim2.new(0.5, 0, 0.5, 0)
    CmdBarDesign.Size = UDim2.new(0.25, 0, 0.75, 0)
    CmdBarDesign.Image = "rbxassetid://3570695787"
    CmdBarDesign.ImageColor3 = Color3.fromRGB(53, 53, 53)
    CmdBarDesign.ImageTransparency = 1 -- 0.750
    CmdBarDesign.ScaleType = Enum.ScaleType.Slice
    CmdBarDesign.SliceCenter = Rect.new(100, 100, 100, 100)
    CmdBarDesign.SliceScale = 0.120

    CmdBar.Name = "CmdBar"
    CmdBar.Parent = CmdBarDesign
    CmdBar.AnchorPoint = Vector2.new(0.5, 0.5)
    CmdBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CmdBar.BackgroundTransparency = 1.000
    CmdBar.BorderSizePixel = 0
    CmdBar.Position = UDim2.new(0.5, 0, 0.5, 0)
    CmdBar.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
    CmdBar.Font = Enum.Font.SourceSans
    CmdBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
    CmdBar.PlaceholderText = "Type command here, enter to execute"
    CmdBar.Text = ""
    CmdBar.TextColor3 = Color3.fromRGB(231, 231, 231)
    CmdBar.TextTransparency = 1 -- 0
    CmdBar.TextSize = 17.000

    NotificationFrame.Name = "NotificationFrame"
    NotificationFrame.Parent = ScreenGui
    NotificationFrame.AnchorPoint = Vector2.new(0.5, 0)
    NotificationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotificationFrame.BackgroundTransparency = 1.000
    NotificationFrame.BorderSizePixel = 0
    NotificationFrame.Position = UDim2.new(0.5, 0, -0.5, 0) -- UDim2.new(0.5, 0, 0.0250000004, 0)
    NotificationFrame.Size = UDim2.new(0.5, 0, 0, 20)
    NotificationFrame.Visible = false
    NotificationFrame.Font = Enum.Font.SourceSans
    NotificationFrame.Text = ""
    NotificationFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotificationFrame.TextSize = 20.000
    NotificationFrame.TextStrokeTransparency = 0.800
    NotificationFrame.TextWrapped = true
    NotificationFrame.TextYAlignment = Enum.TextYAlignment.Top

    CmdBlurEffect.Name = "CmdBlurEffect"
    CmdBlurEffect.Parent = game:GetService("Lighting")
    CmdBlurEffect.Enabled = true
    CmdBlurEffect.Size = 0 -- 10

    --/Functions
    local CountSCIFIMOVIELOL = 1
    function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
        local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
        AlignPos.ApplyAtCenterOfMass = true;
        AlignPos.MaxForce = 10000--67752;
        AlignPos.MaxVelocity = math.huge/9e110;
        AlignPos.ReactionForceEnabled = false;
        AlignPos.Responsiveness = 200;
        AlignPos.RigidityEnabled = false;
        local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
        AlignOri.MaxAngularVelocity = math.huge/9e110;
        AlignOri.MaxTorque = 5772000
        AlignOri.PrimaryAxisOnly = false;
        AlignOri.ReactionTorqueEnabled = false;
        AlignOri.Responsiveness = 200;
        AlignOri.RigidityEnabled = false;
        local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
        local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
        AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
        AttachmentA.Position = Position or Vector3.new(0,0,0)
        AlignPos.Attachment1 = AttachmentA;
        AlignPos.Attachment0 = AttachmentB;
        AlignOri.Attachment1 = AttachmentA;
        AlignOri.Attachment0 = AttachmentB;
        CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
        return {AlignPos,AlignOri,AttachmentA,AttachmentB}
    end


    function Unknown.Notify(message, possibletimer)
        spawn(function()
            for i, v in pairs(Main:GetChildren()) do
                if v.Name == "-NewNotification" then
                    spawn(function()
                        game:GetService("TweenService"):Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1, TextStrokeTransparency = 1, Position = UDim2.new(0.5, 0, -0.5, 0)}):Play()
                        wait(0.25)
                        v:Destroy()
                    end)
                end
            end

            local Notification = NotificationFrame:Clone()
            Notification.Name = "-NewNotification"
            Notification.Parent = Main
            Notification.Visible = true 
            Notification.Text = tostring(message)
            game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {TextTransparency = 0, TextStrokeTransparency = 0.8, Position = UDim2.new(0.5, 0, 0.0250000004, 0)}):Play()

            local NotificationRemove = false
            local Timer = 1

            if typeof(possibletimer) == "table" and typeof(possibletimer[1]) == "number" and typeof(possibletimer[2]) == "number" and typeof(possibletimer[3]) == "number" then
                spawn(function()

                    for i = possibletimer[1], possibletimer[2], -possibletimer[3] do
                        Timer = i

                        if NotificationRemove == false and Timer > 0 then
                            wait(possibletimer[3])
                        else
                            break
                        end
                    end
                    if NotificationRemove == false then
                        NotificationRemove = true 
                    end
                end)
            end

            repeat
                if typeof(possibletimer) == "table" and typeof(possibletimer[1]) == "number" and typeof(possibletimer[2]) == "number" and typeof(possibletimer[3]) == "number" then
                    Notification.Text = tostring(message) .. "\n(" .. Timer .. ")"
                else
                    Notification.Text = tostring(message)
                end
                Notification.Size = UDim2.new(0.5, 0, 9e9, 0)
                Notification.Size = UDim2.new(0.5, 0, Notification.TextBounds.Y, 0)

                wait()
            until NotificationRemove == true or Unknown_AdminGui.Parent ~= game:GetService("CoreGui") or Timer <= 0

            game:GetService("TweenService"):Create(Notification, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1, TextStrokeTransparency = 1, Position = UDim2.new(0.5, 0, -0.5, 0)}):Play()
            wait(0.25)
            Notification:Destroy()
        end)
    end

    function Unknown.UpdateCmdList(cmdguiobject, cmdlistsettings)
        if cmdguiobject.Name == "-CmdList" and cmdguiobject.ClassName == "ScrollingFrame" then

            for i, v in pairs(cmdguiobject:GetChildren()) do
                if v:IsA("GuiObject") and v.Visible == true then
                    v:Destroy()
                end
            end


            if typeof(cmdlistsettings) == "table" and cmdlistsettings[1] ~= nil and cmdlistsettings[1].ClassName == "TextBox" then
                if cmdlistsettings[2] == "alphabetical" then

                    cmdguiobject.CanvasSize = UDim2.new(0, 0, 0, 0)

                    for i, v in pairs(Unknown.Cmds) do
                        if v[1] ~= nil and string.find(string.lower(v[1]), string.lower(string.split(cmdlistsettings[1].Text, " ")[1])) then

                            local Cmd = ExampleLabel:Clone()
                            Cmd.Name = v[1] .. "_Cmd"
                            Cmd.Visible = true
                            Cmd.Parent = cmdguiobject
                            game:GetService("TweenService"):Create(Cmd, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0, TextStrokeTransparency = 0.9}):Play()
                            if v[4] ~= nil then
                                Cmd.Text = v[1] .. " [" .. v[4] .. "]"
                            else
                                Cmd.Text = v[1]
                            end

                            local GetTextSizeY = game:GetService("TextService"):GetTextSize(Cmd.Text, Cmd.TextSize, Cmd.Font, Cmd.AbsoluteSize).Y
                            Cmd.Size = UDim2.new(0.949999988, 0, 0, GetTextSizeY + 10)

                            cmdguiobject.CanvasSize = UDim2.new(cmdguiobject.CanvasSize.X.Scale, cmdguiobject.CanvasSize.X.Offset, 0, cmdguiobject.CanvasSize.Y.Offset + Cmd.TextBounds.Y + 15)

                        end
                    end

                elseif cmdlistsettings[2] == "none" then

                    cmdguiobject.CanvasSize = UDim2.new(0, 0, 0, 0)

                    for i, v in pairs(Unknown.Cmds) do
                        if v[1] ~= nil and string.find(string.lower(v[1]), string.lower(string.split(cmdlistsettings[1].Text, " ")[1])) then

                            local Cmd = ExampleLabel:Clone()
                            Cmd.Name = v[1] .. "_Cmd"
                            Cmd.Visible = true
                            Cmd.Parent = cmdguiobject
                            game:GetService("TweenService"):Create(Cmd, TweenInfo.new(035, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0, TextStrokeTransparency = 0.9}):Play()
                            if v[4] ~= nil then
                                Cmd.Text = v[1] .. " [" .. v[4] .. "]"
                            else
                                Cmd.Text = v[1]
                            end

                            local GetTextSizeY = game:GetService("TextService"):GetTextSize(Cmd.Text, Cmd.TextSize, Cmd.Font, Cmd.AbsoluteSize).Y
                            Cmd.Size = UDim2.new(0.949999988, 0, 0, GetTextSizeY + 10)

                            cmdguiobject.CanvasSize = UDim2.new(cmdguiobject.CanvasSize.X.Scale, cmdguiobject.CanvasSize.X.Offset, 0, cmdguiobject.CanvasSize.Y.Offset + Cmd.TextBounds.Y + 15)

                        end
                    end

                    cmdguiobject.CanvasSize = UDim2.new(cmdguiobject.CanvasSize.X.Scale, cmdguiobject.CanvasSize.X.Offset, 0, cmdguiobject.CanvasSize.Y.Offset + 15)

                end
            end

        end
    end
    local plrs = game:GetService("Players")
    function Unknown.GetShortenedPlrFromName(name)
        name = string.lower(tostring(name))


        if not game:GetService("Players"):FindFirstChild("random") and name == "random"then
            local chosen = plrs:GetChildren()[math.random(1, #plrs:GetChildren())]
            Unknown.Notify("Chosen player: "..chosen.Name)
                return {chosen}	
        end

        if not game:GetService("Players"):FindFirstChild("me") and name == "me" or game:GetService("Players"):FindFirstChild("me") and game:GetService("Players"):FindFirstChild("me").ClassName ~= "Player" and name == "me" then
            return {LocalPlayer}
        end
        if not game:GetService("Players"):FindFirstChild("all") and name == "all" or game:GetService("Players"):FindFirstChild("all") and game:GetService("Players"):FindFirstChild("all").ClassName ~= "Player" and name == "all" then
            return game:GetService("Players"):GetPlayers()
        end
        if not game:GetService("Players"):FindFirstChild("others") and name == "others" or game:GetService("Players"):FindFirstChild("others") and game:GetService("Players"):FindFirstChild("others").ClassName ~= "Player" and name == "others" then
            name = game:GetService("Players"):GetPlayers()
            for i, v in pairs(name) do
                if v == LocalPlayer then
                    table.remove(name, i)
                end
            end
            return name
        end

        for i, v in pairs(game.Players:GetPlayers()) do
            if string.lower(string.sub(v.Name, 1, #name)) == name then
                return {v}
            end
        end

        return nil
    end


    function Unknown.AddCommand(cmdname, description, mainfunction, cmdargs)
        for i, v in pairs(Unknown.Cmds) do
            if v[1] ~= nil and string.lower(v[1]) == string.lower(cmdname) then
                return nil
            end
        end

        if typeof(mainfunction) == "function" then
            if cmdargs then
                table.insert(Unknown.Cmds, {cmdname, description, mainfunction, cmdargs})
            else
                table.insert(Unknown.Cmds, {cmdname, description, mainfunction})
            end
        else
            return nil
        end
    end

    --/ Scripting: Intro

    game:GetService("TweenService"):Create(LeftFrameThing, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position = UDim2.new(1, 0, 0.5, 0)}):Play()
    game:GetService("TweenService"):Create(RightFrameThing, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position = UDim2.new(0, 0, 0.5, 0)}):Play()
    wait(0.5)

    MiddleLogoThing.Visible = true
    game:GetService("TweenService"):Create(MiddleLogoThing, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
    wait(0.35 / 2)
    MainLogo.Visible = true
    MainLogo2.Visible = true
    game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
    game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Rotation = 180}):Play()
    game:GetService("TweenService"):Create(MainLogo2, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
    wait(0.35)


    game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 360}):Play()

    game:GetService("TweenService"):Create(BlueColorCorrection, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TintColor = Color3.fromRGB(207, 241, 255)}):Play()
    game:GetService("TweenService"):Create(LoadingThing, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(1, 0, 1, 0)}):Play()
    game:GetService("TweenService"):Create(LoadingThing_2, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(1, 0, 1, 0)}):Play()

    AdminNameLabel.Visible = true
        AdminNameLabel.Text = ("Unknown Admin | "..Settings.Version)
    game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rotation = 360 + 180}):Play()
    wait(0.5)
    game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Rotation = 360 * 2 + 180}):Play()
    wait(0.5)

    game:GetService("TweenService"):Create(LeftFrameThing, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Position = UDim2.new(-0.001, 0, 0.5, 0)}):Play()
    game:GetService("TweenService"):Create(RightFrameThing, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Position = UDim2.new(1.001, 0, 0.5, 0)}):Play()
    wait(0.35 / 2)

    game:GetService("TweenService"):Create(MiddleLogoThing, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()

    game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(0.45, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
    game:GetService("TweenService"):Create(MainLogo, TweenInfo.new(0.45, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Rotation = 45}):Play()
    game:GetService("TweenService"):Create(MainLogo2, TweenInfo.new(0.45, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
    game:GetService("TweenService"):Create(BlueColorCorrection, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TintColor = Color3.fromRGB(255, 255, 255)}):Play()
    wait(0.5)
    Intro:Destroy()
    BlueColorCorrection:Destroy()


    if not (typeof(Unknown.CommandKey) == "string" and Enum.KeyCode[Unknown .CommandKey]) then
        print("Error in Unknown Admin command key, key has been set to back slash.")
        Unknown.CommandKey = "BackSlash"
    end

    Unknown.Debounces.CmdCooldown = false

    Unknown.Events.InputBegan = game:GetService("UserInputService").InputBegan:Connect(function(Key)
        if Key.KeyCode.Name == Unknown.CommandKey then
            if Unknown.Debounces.CmdCooldown == false then
                Unknown.Debounces.CmdCooldown = true
                game:GetService("TweenService"):Create(CmdBarFrame, TweenInfo.new(0.5, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0.100000001, 0)}):Play()
                wait(0.25)
                CmdBar:CaptureFocus()
                CmdList.Visible = true
                game:GetService("TweenService"):Create(CmdBarDesign, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0.75}):Play()
                game:GetService("TweenService"):Create(CmdBar, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
                wait(0.25)

                Unknown.Debounces.CmdCooldown = false
            end
        end
    end)

    CmdBar:GetPropertyChangedSignal("Text"):Connect(function()
        Unknown.UpdateCmdList(CmdList, {CmdBar, "alphabetical"})
    end)

    CmdBar.FocusLost:Connect(function(EnterPressed)
        spawn(function()
            if Unknown.Debounces.CmdCooldown == false then
                if EnterPressed then

                    Unknown.Debounces.CmdCooldown = true

                    local getcmd = string.split(string.lower(CmdBar.Text), " ")[1]
                    local getargs = string.split(string.lower(CmdBar.Text), " ")

                    if string.sub(getcmd, 1, #Unknown.Prefix) == Unknown.Prefix then
                        getcmd = string.sub(getcmd, #Settings.Prefix + 1, #getcmd)
                    end

                    for i, v in pairs(string.split(string.lower(CmdBar.Text), ",")) do
                        if i ~= 1 then
                            table.insert(getargs, v)
                        end
                    end
                    for i, v in pairs(string.split(string.lower(CmdBar.Text), ", ")) do
                        if i ~= 1 then
                            table.insert(getargs, v)
                        end
                    end

                    table.remove(getargs, 1)

                    for i, v in pairs(Unknown.Cmds) do
                        if v[1] ~= nil and string.find(v[1], "/") then
                            for i2, v2 in pairs( string.split(v[1], "/") ) do

                                v2 = string.lower(v2)
                                if getcmd == v2 then
                                    if v[4] ~= nil then
                                        spawn(function()
                                            v[3](unpack(getargs))
                                        end)
                                    else
                                        spawn(function()
                                            v[3]()
                                        end) 
                                    end
                                    break
                                end

                            end
                        elseif v[1] ~= nil then
                            v[1] = string.lower(v[1])
                            if getcmd == v[1] then
                                if v[4] ~= nil then
                                    spawn(function()
                                        v[3](unpack(getargs))
                                    end)
                                else
                                    spawn(function()
                                        v[3]() 
                                    end)
                                end
                                break
                            end
                        end
                    end

                end

                game:GetService("TweenService"):Create(CmdBlurEffect, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 0}):Play()
                game:GetService("TweenService"):Create(CmdBarFrame, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Size = UDim2.new(1, 0, 0.0, 0)}):Play()
                CmdBar:ReleaseFocus()
                CmdList.Visible = false
                game:GetService("TweenService"):Create(CmdBarDesign, TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
                game:GetService("TweenService"):Create(CmdBar, TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
                wait(0.25)
                CmdBar.Text = ""
                Unknown.Debounces.CmdCooldown = false
            end
        end)
    end)

    LocalPlayer.Chatted:Connect(function(msg)
        spawn(function()
            if Unknown.Debounces.CmdCooldown == false and string.sub(msg, 1, #Settings.Prefix) == Settings.Prefix then

                Unknown.Debounces.CmdCooldown = true

                local getcmd = string.split(string.lower(msg), " ")[1]
                local getargs = string.split(string.lower(msg), " ")

                if string.sub(getcmd, 1, #Unknown.Prefix) == Unknown.Prefix then
                    getcmd = string.sub(getcmd, #Settings.Prefix + 1, #getcmd)
                end

                for i, v in pairs(string.split(string.lower(msg), ",")) do
                    if i ~= 1 then
                        table.insert(getargs, v)
                    end
                end
                for i, v in pairs(string.split(string.lower(msg), ", ")) do
                    if i ~= 1 then
                        table.insert(getargs, v)
                    end
                end

                table.remove(getargs, 1)

                for i, v in pairs(Unknown.Cmds) do
                    if v[1] ~= nil and string.find(v[1], "/") then
                        for i2, v2 in pairs( string.split(v[1], "/") ) do

                            v2 = string.lower(v2)
                            if getcmd == v2 then
                                if v[4] ~= nil then
                                    spawn(function()
                                        v[3](unpack(getargs))
                                    end)
                                else
                                    spawn(function()
                                        v[3]() 
                                    end)
                                end
                                break
                            end

                        end
                    elseif v[1] ~= nil then
                        v[1] = string.lower(v[1])
                        if getcmd == v[1] then
                            if v[4] ~= nil then
                                spawn(function()
                                    v[3](unpack(getargs))
                                end)
                            else
                                spawn(function()
                                    v[3]() 
                                end)
                            end
                            break
                        end
                    end
                end

                game:GetService("TweenService"):Create(CmdBlurEffect, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 0}):Play()
                game:GetService("TweenService"):Create(CmdBarFrame, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Size = UDim2.new(1, 0, 0.0, 0)}):Play()
                CmdBar:ReleaseFocus()
                CmdList.Visible = false
                game:GetService("TweenService"):Create(CmdBarDesign, TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
                game:GetService("TweenService"):Create(CmdBar, TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
                wait(0.25)
                CmdBar.Text = ""
                Unknown.Debounces.CmdCooldown = false
            end
        end)
    end)


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

    if isagain == nil then
        Unknown.Notify("Welcome  to Unknown admin. \nPrefix is:"  .. Unknown.Prefix, {10, 1, 1})
    else
        Unknown.Notify("Welcome "..isagain.." to Unknown admin. \nPrefix is:"  .. Unknown.Prefix, {10, 1, 1})
    end

    Unknown.AddCommand("Prefix", "Changes the prefix", function(prefix)
        if typeof(prefix) == "string" and #prefix <= 3 then
            Unknown.Notify("Prefix was succesfully changed to: " .. prefix, {5, 1, 1})
        elseif #prefix > 3 then
            Unknown.Notify("Prefix cannot be longer than 3 characters", {5, 1, 1})
        end
    end, "prefix")

    Unknown.AddCommand("Runline", "Runs a 1-line of script (a.k.a. the first argument)", function(scriptline)
        local worked, geterror = pcall(function()
            loadstring(tostring(scriptline))()
        end)

        if geterror then
            Unknown.Notify("Error in script (runline command): " .. geterror, {10, 1, 1})
        end
    end, "script")

    function Unknown.GetHatsInWorkspace()
        local amount = 0

        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v.ClassName == "Accessory" or v.ClassName == "Hat" then
                if v:FindFirstChild("Handle") and v.Handle.Anchored == false and not game.Players:GetPlayerFromCharacter(v.Parent) then
                    amount = amount + 1
                elseif v:FindFirstChild("Handle") and v.Handle.Anchored == false and game.Players:GetPlayerFromCharacter(v.Parent) == game.PlayeRA.LocalPlayer then
                    amount = amount + 1
                end
            end
        end

        return amount
    end

    Unknown.AddCommand("Clearhats", "Clears all the hats in the workspace", function()
        for i, v in pairs(game.PlayeRA.LocalPlayer.Character:GetChildren()) do
            if v.ClassName == "Accessory" or v.ClassName == "Hat" then
                v:Destroy()
            end
        end


        repeat
            for i, v in pairs(game.Workspace:GetDescendants()) do
                if v.ClassName == "Accessory" or v.ClassName == "Hat" then
                    if v:FindFirstChild("Handle") and v.Handle.Anchored == false and not game.Players:GetPlayerFromCharacter(v.Parent) then
                        repeat
                            v.Handle.CFrame = game.PlayeRA.LocalPlayer.Character.HumanoidRootPart.CFrame
                            wait()
                        until v.Parent == game.PlayeRA.LocalPlayer.Character or v.Parent == nil
                        v:Destroy()
                    elseif v:FindFirstChild("Handle") and v.Handle.Anchored == false and game.Players:GetPlayerFromCharacter(v.Parent) == game.PlayeRA.LocalPlayer then
                        v:Destroy()
                    end
                end
            end
            wait()
        until Unknown.GetHatsInWorkspace() <= 0
    end)
    Unknown.AddCommand("respawn/re", "Respawns", function()
        local msg = Instance.new("Message", workspace)
        msg.Text = "Respawning..."
        oldpos = LocalPlayer.Character.HumanoidRootPart.CFrame
        if LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character:FindFirstChild("Humanoid"):Destroy()
        end
        for i,v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") then
                v:Destroy()
            end
        end
        repeat 
            wait()
        until LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos

        wait()
        repeat
            wait()
        until LocalPlayer.Character:FindFirstChildOfClass("Part")
        msg:Destroy()
    end)
    Unknown.AddCommand("tweenbring/tb", "Tweenbrings", function(player)
    if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                local ts = game:GetService("TweenService")
                local Info = TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
                local CFrametotp = { CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame }
                 ts:Create(Player.Character.HumanoidRootPart, Info, CFrametotp):Play()

    end
    else
    Unknown.Notify("Could not find the player you are searching for.")
    end


    end,"player")


    Unknown.AddCommand("tweentp/ttp", "ttp", function(player1, player2)
        if Unknown.GetShortenedPlrFromName(player1) ~= nil and Unknown.GetShortenedPlrFromName(player2) ~= nil then
            local Player1
            local Player2

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player1)) do
                Player1 = v
                for i2, v2 in pairs(Unknown.GetShortenedPlrFromName(player2)) do
                    Player2 = v2
                     local ts = game:GetService("TweenService")
                local Info = TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out)
                local CFrametotp = { CFrame = Player2.Character.HumanoidRootPart.CFrame }
                 ts:Create(Player1.Character.HumanoidRootPart, Info, CFrametotp):Play()
                    
    end
    end
    end

    end,"player1 player2")



    Unknown.AddCommand("checknet/netcheck", "Notifies you about who is using networkownership", function()
        local CheckIfWorks = pcall(function()
            gethiddenproperty(LocalPlayer, "SimulationRadius")
        end)

        local Plrs = {}
        local Msg = ""

        if CheckIfWorks then
            for i, v in pairs(game.Players:GetPlayers()) do
                if gethiddenproperty(v, "SimulationRadius") >= 5000 then
                    table.insert(Plrs, v.Name)
                end
            end

            if #Plrs <= 0 then
                Msg = "Network check ran: No players have been found using networkownership."
            elseif #Plrs == 1 then
                Msg = "Network check ran, the player using network: " .. Plrs[1]
            elseif #Plrs > 1 then
                Msg = "Network check ran, the players using network: "
                for i, v in pairs(Plrs) do
                    Msg = Msg .. v .. ", "
                end
                Msg = string.sub(Msg, 1, #Msg - 2)
            end

            return Unknown.Notify(Msg, {10, 1, 1})
        else
            return Unknown.Notify("Error: exploit doesn't support gethiddenproperty/sethiddenproperty?", {10, 1, 1})
        end
    end)


    Unknown.AddCommand("uncontrol", "Uncontrols a controlled player", function()
        game.Players[name].Character = workspace[name]
        workspace.CurrentCamera.CameraSubject = workspace[name].Humanoid
    end)


    Unknown.AddCommand("Disable", "Disables a player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                for _,x in pairs(Player.Character:GetChildren()) do
                    if x:IsA("Part") then
                        x.Anchored = true                              
                    end
                end
            end
        end
    end, "player(s)")

    Unknown.AddCommand("Enable", "Enables a disabled player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                for _,x in pairs(Player.Character:GetChildren()) do
                    if x:IsA("Part") then
                        x.Anchored = false                              
                    end
                end
            end
        end
    end, "player(s)")

    Unknown.AddCommand("View", "Views a player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
            end
        end
    end, "player(s)")

    Unknown.AddCommand("unview", "Views your own character", function()
        if workspace.CurrentCamera.CameraSubject ~= game.Players.LocalPlayer.Character.Humanoid then
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
        else
            Unknown.Notify("Please view a victim before using this command!")
        end
    end)

    Unknown.AddCommand("tp", "Teleports first player argument (player1/players) to second player argument (player2)", function(player1, player2)
        if Unknown.GetShortenedPlrFromName(player1) ~= nil and Unknown.GetShortenedPlrFromName(player2) ~= nil then
            local Player1
            local Player2

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player1)) do
                Player1 = v
                for i2, v2 in pairs(Unknown.GetShortenedPlrFromName(player2)) do
                    Player2 = v2
                    if not (Player1 and Player1.Character) or not (Player2 and Player2.Character) then
                        return Unknown.Notify("Error in tp command", "Player does not have character/is not loaded in", {5, 1, 1})
                    elseif not (Player1.Character:FindFirstChild("HumanoidRootPart") or Player1.Character.PrimaryPart) or not (Player2.Character:FindFirstChild("HumanoidRootPart") or Player2.Character.PrimaryPart) then
                        return Unknown.Notify("Error in tp command", "Player cannot be teleported", {5, 1, 1})
                    end

                    if Player1.Character:FindFirstChild("HumanoidRootPart") and Player2.Character:FindFirstChild("HumanoidRootPart") then
                        Player1.Character.HumanoidRootPart.CFrame = Player2.Character.HumanoidRootPart.CFrame
                    elseif Player1.Character.PrimaryPart and Player2.Character.PrimaryPart then
                        Player1.Character:SetPrimaryPartCFrame(Player2.Character.PrimaryPart.CFrame)
                    end
                end

            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player 1, player 2")

    Unknown.AddCommand("goto/to", "Teleports to player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not (LocalPlayer and LocalPlayer.Character) or not (Player and Player.Character) then
                    return Unknown.Notify("Error in goto/to command", "Player or LocalPlayer does not have character/is not loaded in", {5, 1, 1})
                elseif not (LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or LocalPlayer.Character.PrimaryPart) or not (Player.Character:FindFirstChild("HumanoidRootPart") or Player.Character.PrimaryPart) then
                    return Unknown.Notify("Error in goto/to command", "Player or LocalPlayer cannot be teleported", {5, 1, 1})
                end

                if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("HumanoidRootPart") then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
                elseif LocalPlayer.Character.PrimaryPart and Player.Character.PrimaryPart then
                    LocalPlayer.Character:SetPrimaryPartCFrame(Player.Character.PrimaryPart.CFrame)
                end
            end
        else
            Unknown.Notify("Could not find player", "Such player does not exist in the server (or username was spelt wrong?)", {5, 1, 1})
        end
    end, "player")


    Unknown.AddCommand("Febring", "Brings player without claiming", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not Player.Character:FindFirstChild("-Claimed") then
                    game.Players.LocalPlayer.Character.Humanoid:Destroy()
                    Instance.new("Humanoid", game.Players.LocalPlayer.Character)
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                    tool.Parent = game.Players.LocalPlayer.Character
                    repeat
                        wait()
                        Player.Character.HumanoidRootPart.CFrame = tool.Handle.CFrame
                    until tool.Parent == Player.Character
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        v:Destroy()
                    end
                else
                    Unknown.Notify("Player is already claimed")
                end
            end
        else
            Unknown.Notify("Could not find player", "Such player does not exist in the server (or username was spelt wrong?)", {5, 1, 1})
        end
    end, "player")

    Unknown.AddCommand("Fekill", "kills player without claiming", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not Player.Character:FindFirstChild("-Claimed") then
                    game.Players.LocalPlayer.Character.Humanoid:Destroy()
                    Instance.new("Humanoid", game.Players.LocalPlayer.Character)
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                    tool.Parent = game.Players.LocalPlayer.Character
                    repeat
                        wait()
                        Player.Character.HumanoidRootPart.CFrame = tool.Handle.CFrame
                    until tool.Parent == Player.Character
                    wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
                    wait(.1)
                else
                    Unknown.Notify("Player is already claimed")
                end
            end
        else
            Unknown.Notify("Could not find player", "Such player does not exist in the server (or username was spelt wrong?)", {5, 1, 1})
        end
    end, "player")

    Unknown.AddCommand("bring", "Brings player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not (LocalPlayer and LocalPlayer.Character) or not (Player and Player.Character) then
                    return Unknown.Notify("Error in bring command", "Player or LocalPlayer does not have character/is not loaded in", {5, 1, 1})
                elseif not (LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or LocalPlayer.Character.PrimaryPart) or not (Player.Character:FindFirstChild("HumanoidRootPart") or Player.Character.PrimaryPart) then
                    return Unknown.Notify("Error in bring command", "Player or LocalPlayer cannot be teleported", {5, 1, 1})
                end

                if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("HumanoidRootPart") then
                    Player.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                elseif LocalPlayer.Character.PrimaryPart and Player.Character.PrimaryPart then
                    Player.Character:SetPrimaryPartCFrame(LocalPlayer.Character.PrimaryPart.CFrame)
                end
            end
        else
            Unknown.Notify("Could not find player", "Such player does not exist in the server (or username was spelt wrong?)", {5, 1, 1})
        end
    end, "player")





    Unknown.AddCommand("walkspeed/speed/ws", "Sets walkspeed of player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, speed)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            print(tonumber(speed))
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not (Player and Player.Character) then
                    return Unknown.Notify("Error in walkspeed/speed/ws command", "Player does not have character/is not loaded in", {5, 1, 1})
                elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                    return Unknown.Notify("Error in walkspeed/speed/ws command", "Player does not have a humanoid", {5, 1, 1})
                end

                if Player.Character:FindFirstChildOfClass("Humanoid") and typeof(tonumber(speed)) == "number" then
                    Player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = tonumber(speed)
                elseif typeof(tonumber(speed)) ~= "number" then
                    Unknown.Notify("Incorrect speed number", "speed value entered is not a number/could not be turned into a number", {5, 1, 1})
                end
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s), speed")

    Unknown.AddCommand("loopbring/lb", "Loop brings the player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                _G.Loopbring = true
            

                lplayer = LocalPlayer
                loopbr = Player.Character.Humanoid.Died:Connect(function()
                _G.Loopbring = false
                loopbr:disconnect()
                end)
                loop = game:GetService("RunService").Heartbeat:Connect(function(step)
                if _G.Loopbring then
                Player.Character:SetPrimaryPartCFrame(LocalPlayer.Character.HumanoidRootPart.CFrame* CFrame.new(4.4,1,0))
                else
                loop:disconnect()
                end 
                end)
            end
        end
    end,"player(s)")

    Unknown.AddCommand("unloopbring/unlb", "stops loobringing all players the player", function()
        _G.Loopbring = false
    end)

    Unknown.AddCommand("looptp/lt", "Loop brings the player", function(player,player2)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                    if Unknown.GetShortenedPlrFromName(player2) ~= nil then
            local Player2
            for i, c in pairs(Unknown.GetShortenedPlrFromName(player2)) do
                Player2 = c
                _G.Looptp = true
            

                lplayer = LocalPlayer
                loopbr = Player.Character.Humanoid.Died:Connect(function()
                _G.Looptp = true
                loopbr:disconnect()
                end)
                loop = game:GetService("RunService").Heartbeat:Connect(function(step)
                if _G.Looptp then
                Player.Character:SetPrimaryPartCFrame(Player2.Character.HumanoidRootPart.CFrame* CFrame.new(4.4,1,0))
                else
                loop:disconnect()
                end 
                end)
            end
            end
            end
        end
    end,"player1, player2")

    Unknown.AddCommand("unlooptp/unlt", "stops loobringing all players the player", function()
        _G.Looptp = false
    end)

    Unknown.AddCommand("jumppower/jp", "Sets jumppower of player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, power)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not (Player and Player.Character) then
                    return Unknown.Notify("Error in jumppower/jp command", "Player does not have character/is not loaded in", {5, 1, 1})
                elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                    return Unknown.Notify("Error in jumppower/jp command", "Player does not have a humanoid", {5, 1, 1})
                end

                if Player.Character:FindFirstChildOfClass("Humanoid") and typeof(tonumber(power)) == "number" then
                    Player.Character:FindFirstChildOfClass("Humanoid").JumpPower = tonumber(power)
                elseif typeof(tonumber(power)) ~= "number" then
                    Unknown.Notify("Incorrect jumppower number", "jumppower value entered is not a number/could not be turned into a number", {5, 1, 1})
                end
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s), power")


    Unknown.AddCommand("hipheight/hh", "Sets hipheight of player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, height)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not (Player and Player.Character) then
                    return Unknown.Notify("Error in hipheight/hh command", "Player does not have character/is not loaded in", {5, 1, 1})
                elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                    return Unknown.Notify("Error in hipheight/hh command", "Player does not have a humanoid", {5, 1, 1})
                end

                if Player.Character:FindFirstChildOfClass("Humanoid") and typeof(tonumber(height)) == "number" then
                    Player.Character:FindFirstChildOfClass("Humanoid").HipHeight = tonumber(height)
                elseif typeof(tonumber(height)) ~= "number" then
                    Unknown.Notify("Incorrect hipheight number", "hipheight value entered is not a number/could not be turned into a number", {5, 1, 1})
                end
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s), height")


    Unknown.AddCommand("noclip", "Noclips player until disabled/player dies, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not (Player and Player.Character) then
                    return Unknown.Notify("Error in noclip command", "Player does not have character/is not loaded in", {5, 1, 1})
                elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                    return Unknown.Notify("Error in noclip command", "Player does not have a humanoid", {5, 1, 1})
                end

                if Player.Character:FindFirstChild("-Noclipped") then
                    Player.Character:FindFirstChild("-Noclipped"):Destroy()
                end

                local Noclipped = Instance.new("ObjectValue")
                Noclipped.Name = "-Noclipped"
                Noclipped.Parent = Player.Character

                local LoopTillEnd
                LoopTillEnd = game:GetService("RunService").Stepped:Connect(function()
                    if Player and Player.Character and Player.Character:FindFirstChild("-Noclipped") then
                        for i2, v2 in pairs(Player.Character:GetDescendants()) do
                            if v2:IsA("BasePart") then
                                v2.CanCollide = false
                            end
                        end
                    else
                        LoopTillEnd:Disconnect()
                    end
                end)
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s)")

    Unknown.AddCommand("clip", "Disables player noclip if player is noclipped with noclip command, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if Player and Player.Character and Player.Character:FindFirstChild("-Noclipped") then
                    Player.Character:FindFirstChild("-Noclipped"):Destroy()
                end
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s)")

    Unknown.AddCommand("changestate", "Changes player's humanoid state until disabled/player dies, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player, numberstate)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if not (Player and Player.Character) then
                    return Unknown.Notify("Error in changestate command", "Player does not have character/is not loaded in", {5, 1, 1})
                elseif not Player.Character:FindFirstChildOfClass("Humanoid") then
                    return Unknown.Notify("Error in changestate command", "Player does not have a humanoid", {5, 1, 1})
                end

                if typeof(tonumber(numberstate)) ~= "number" then
                    return Unknown.Notify("Error in changestate command", "number state is not a number/could not be turned into a number", {5, 1, 1})
                end

                if Player.Character:FindFirstChild("-Statechanging") then
                    Player.Character:FindFirstChild("-Statechanging"):Destroy()
                end

                local Noclipped = Instance.new("ObjectValue")
                Noclipped.Name = "-Statechanging"
                Noclipped.Parent = Player.Character

                local LoopTillEnd
                LoopTillEnd = game:GetService("RunService").Stepped:Connect(function()
                    if Player and Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character:FindFirstChild("-Statechanging") then
                        for i2, v2 in pairs(Player.Character:GetDescendants()) do
                            if v2.ClassName == "Humanoid" then
                                v2:ChangeState(tonumber(numberstate))
                            end
                        end
                    else
                        LoopTillEnd:Disconnect()
                    end
                end)
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s), numberstate")

    Unknown.AddCommand("unchangestate", "Disables player changestate if player is statechanged with changestate command, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if Player and Player.Character and Player.Character:FindFirstChild("-Statechanging") then
                    Player.Character:FindFirstChild("-Statechanging"):Destroy()
                end
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s)")

    Unknown.AddCommand("fling"," flinmsg", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player

            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                local bodyForce = Instance.new("BodyForce")
                bodyForce.Force = Vector3.new(math.random(1,10000),math.random(1,25000),math.random(1,10000))
                bodyForce.Parent = Player.Character.HumanoidRootPart
                wait()

                Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait()
                Player.Character.Humanoid.Sit = true
            end
        end
    end,"player(s)")

    Unknown.AddCommand("kill", "Kills player, ONLY REPLICATES on other players IF player is/players are claimed with claim command (localplayer doesn't need to be claimed).", function(player)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                if Player and Player.Character and Player.Character then
                    Player.Character:BreakJoints()
                end
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s)")

    Unknown.AddCommand("control", "controls player using claim", function(player)   
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                LocalPlayer.Character = Player.Character
                workspace.CurrentCamera.CameraSubject = Player.Character.Humanoid
                a = Player.Character.Humanoid.Died:Connect(function()
                LocalPlayer.Character = workspace[name]
                workspace.CurrentCamera.CameraSubject = workspace[name].Humanoid
                a:disconnect()
                end)
            end
        else
            Unknown.Notify("Could not find player(s)", "Could not find player(s). perhaps username was/usernames were spelt wrong?", {5, 1, 1})
        end
    end, "player(s)")


    Unknown.AddCommand("fclaim", "Claims player with networkownership.", function(player)  
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v 
                Unknown.Notify("Hold On...")


            if true then
                if LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
                   print("got past")
                    
                
                        if true then
                             local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")

                            a = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Name = "1"
                            local newHum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Clone()
                            newHum.Parent = LocalPlayer.Character
                            newHum.Name = "Humanoid"
                            wait()
                                                    if a then 
                                a:Destroy()
                            end
                            Tool.Parent = LocalPlayer.Character
                            if Tool:FindFirstChild("Handle") then
                                local CurrentCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                               local CurrentCFrame2 = LocalPlayer.Character.HumanoidRootPart.CFrame
                               LocalPlayer.Character.PrimaryPart = LocalPlayer.Character.HumanoidRootPart
                                repeat
                                   Player.Character.HumanoidRootPart.CFrame = (CFrame.new(Vector3.new(0,1000000,0)))
                                    LocalPlayer.Character.HumanoidRootPart.CFrame = (Player.Character.HumanoidRootPart.CFrame) 
                                    game:GetService("RunService").Heartbeat:Wait()
                                until Tool.Parent == Player.Character
                                    
                                    LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame2
                                workspace.FallenPartsDestroyHeight = 0/1/0
                                                                                    for i = 1,5  do
                                                                   LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(0,math.huge,0)))
                                end    
                                wait(.1)
                                    for i = 1,5  do
                                    LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame2
                                    end
                            Wait(.2)
                                        
                                
                                if not Player.Character:FindFirstChild("-Claimed") then
                                    local Claimed = Instance.new("ObjectValue")
                                    Claimed.Name = "-Claimed"
                                    Claimed.Parent = Player.Character
                                end
                                LocalPlayer.Character:BreakJoints()
                                LocalPlayer.Character:WaitForChild'HumanoidRootPart':Destroy()
                                repeat wait() until LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame
                                repeat
                                    wait()
                                until LocalPlayer.Character.HumanoidRootPart and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Torso") and LocalPlayer.Character.Torso:FindFirstChild("Neck")
                 
    end
    end
    end
    end
    end
    end
    end, "player(s)")


    Unknown.AddCommand("claim", "Claims player with networkownership.", function(player)  
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v 
                Unknown.Notify("Hold On...")
                 local CurrentCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                 for i,v in pairs(LocalPlayer.Character:GetChildren()) do v:Destroy() end
                repeat wait() until LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Head")
            wait()
            for g = 1,2,1 do
            LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentCFrame
            end
            

            if true then
                if LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool") then
                   print("got past")
                    
                
                        if true then
                             local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")

                            a = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Name = "1"
                            local newHum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Clone()
                            newHum.Parent = LocalPlayer.Character
                            newHum.Name = "Humanoid"
                            wait()
                                                    if a then 
                                a:Destroy()
                            end
                            Tool.Parent = LocalPlayer.Character
                            if Tool:FindFirstChild("Handle") then
                                local CurrentCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                               local CurrentCFrame2 = LocalPlayer.Character.HumanoidRootPart.CFrame
                               LocalPlayer.Character.PrimaryPart = LocalPlayer.Character.HumanoidRootPart
                                repeat
                                    Player.Character.HumanoidRootPart.CFrame = Tool.Handle.CFrame
                                    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,math.random,0)
                                    game:GetService("RunService").Heartbeat:Wait()
                                until Tool.Parent == Player.Character
                                    
                                    LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame2
                                workspace.FallenPartsDestroyHeight = 0/1/0
                                                                                    for i = 1,5  do
                                                                   LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Vector3.new(0,math.huge,0)))
                                end    
                                wait(.1)
                                    for i = 1,5  do
                                    LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame2
                                    end
                            Wait(.2)
                                        
                                
                                if not Player.Character:FindFirstChild("-Claimed") then
                                    local Claimed = Instance.new("ObjectValue")
                                    Claimed.Name = "-Claimed"
                                    Claimed.Parent = Player.Character
                                end
                                LocalPlayer.Character:BreakJoints()
                                LocalPlayer.Character:WaitForChild'HumanoidRootPart':Destroy()
                                repeat wait() until LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            LocalPlayer.Character:WaitForChild'HumanoidRootPart'.CFrame = CurrentCFrame
                                repeat
                                    wait()
                                until LocalPlayer.Character.HumanoidRootPart and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Torso") and LocalPlayer.Character.Torso:FindFirstChild("Neck")
                 
    end
    end
    end
    end
    end
    end
    end, "player(s)")


 




    Unknown.AddCommand("Blockhats/bhats", "block", function()
    for i,v in pairs(LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") then
    if v.Handle:FindFirstChildOfClass("Mesh") then
    v.Handle:FindFirstChildOfClass("Mesh"):Remove()
    end
    if v.Handle:FindFirstChildOfClass("SpecialMesh") then
    v.Handle:FindFirstChildOfClass("SpecialMesh"):Remove()
    end
    end
    end
    end)

    Unknown.AddCommand("EquipTools/et", "equip all", function()
    for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    v.Parent = LocalPlayer.Character
    end
    end
    end)

    Unknown.AddCommand("UnequipTools/unet", "equip all", function()

    LocalPlayer.Character.Humanoid:UnequipTools()
    end)

    Unknown.AddCommand("rejoin/rj", "ok", function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
    end)

    Unknown.AddCommand("anticlaim", "haha", function()
    if LocalPlayer.Character:FindFirstChild("Right Arm") then
    LocalPlayer.Character:FindFirstChild("Right Arm"):Destroy()
    end
    end)

    Unknown.AddCommand("Blockhead/bhead", "ok", function()
    v = LocalPlayer.Character.Head
    if v:FindFirstChildOfClass("Mesh") then
    v:FindFirstChildOfClass("Mesh"):Remove()
    end
    if v:FindFirstChildOfClass("SpecialMesh") then
    v:FindFirstChildOfClass("SpecialMesh"):Remove()
    end
    end)

    Unknown.AddCommand("hold", "holds", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                local tool = Instance.new("Tool", LocalPlayer.Backpack)
                tool.Name = "Hold?"
                local part = Instance.new("Part")
                part.Parent = tool
                part.Name = "Handle"
                part.Anchored = false
                part.CanCollide = false
                part.Transparency = 1
                wait()
                tool.Parent = LocalPlayer.Character
                _G.Hold = true
                loop = game:GetService("RunService").Stepped:Connect(function()
                    if _G.Hold == true then
                        for i,v in pairs(LocalPlayer.Character:GetChildren()) do
                            if v:IsA("Part") then
                                v.CanCollide = false
                            end
                        end
                        Player.Character.HumanoidRootPart.CFrame = part.CFrame
                    else
                        loop:disconnect()
                    end
                end)
            end
        end
    end,"player(s)")

    Unknown.AddCommand("unhold", "unholds?", function()
        _G.Hold = false
        if LocalPlayer.Character:FindFirstChild("Hold?") then
            LocalPlayer.Character:FindFirstChild("Hold?"):Destroy()
        end
    end)

    Unknown.AddCommand("whitelist", "whitlists", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                local A_1 = "/w "..Player.Name.." [Unknown Admin]: "..LocalPlayer.Name.." has whitelisted you into our admin and the prefix is ?"
                local A_2 = "All"
                local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                Event:FireServer(A_1, A_2)

                Player.Chatted:Connect(function(msg)
                    spawn(function()
                        if Unknown.Debounces.CmdCooldown == false and string.sub(msg, 1, #Settings.Prefix) == Settings.Prefix then

                            Unknown.Debounces.CmdCooldown = true

                            local getcmd = string.split(string.lower(msg), " ")[1]
                            local getargs = string.split(string.lower(msg), " ")

                            if string.sub(getcmd, 1, #Unknown.Prefix) == Unknown.Prefix then
                                getcmd = string.sub(getcmd, #Settings.Prefix + 1, #getcmd)
                            end

                            for i, v in pairs(string.split(string.lower(msg), ",")) do
                                if i ~= 1 then
                                    table.insert(getargs, v)
                                end
                            end
                            for i, v in pairs(string.split(string.lower(msg), ", ")) do
                                if i ~= 1 then
                                    table.insert(getargs, v)
                                end
                            end

                            table.remove(getargs, 1)

                            for i, v in pairs(Unknown.Cmds) do
                                if v[1] ~= nil and string.find(v[1], "/") then
                                    for i2, v2 in pairs( string.split(v[1], "/") ) do

                                        v2 = string.lower(v2)
                                        if getcmd == v2 then
                                            if v[4] ~= nil then
                                                spawn(function()
                                                    v[3](unpack(getargs))
                                                end)
                                            else
                                                spawn(function()
                                                    v[3]() 
                                                end)
                                            end
                                            break
                                        end

                                    end
                                elseif v[1] ~= nil then
                                    v[1] = string.lower(v[1])
                                    if getcmd == v[1] then
                                        if v[4] ~= nil then
                                            spawn(function()
                                                v[3](unpack(getargs))
                                            end)
                                        else
                                            spawn(function()
                                                v[3]() 
                                            end)
                                        end
                                        break
                                    end
                                end
                            end

                            game:GetService("TweenService"):Create(CmdBlurEffect, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = 0}):Play()
                            game:GetService("TweenService"):Create(CmdBarFrame, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Size = UDim2.new(1, 0, 0.0, 0)}):Play()
                            CmdBar:ReleaseFocus()
                            CmdList.Visible = false
                            game:GetService("TweenService"):Create(CmdBarDesign, TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
                            game:GetService("TweenService"):Create(CmdBar, TweenInfo.new(0.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
                            wait(0.25)
                            CmdBar.Text = ""
                            Unknown.Debounces.CmdCooldown = false
                        end
                    end)
                end)

            end
        end
    end,"player(s)")
    Unknown.AddCommand("Bang", "do not ask about it", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                _G.Bang = true
                localpl = game.Players.LocalPlayer            
                localpl = game.Players.LocalPlayer
                bangAnim = Instance.new("Animation", localpl.Character)
                bangAnim.AnimationId = "rbxassetid://148840371"
                bang = localpl.Character.Humanoid:LoadAnimation(bangAnim)
                bang:Play(.1, 1, 1)
                bang:AdjustSpeed(5)
                for i,v in pairs(localpl.Character:GetDescendants()) do
                    if v:IsA("Clothing") then
                        v:Destroy()
                    end
                end

                local localplayer = game:GetService("Players").LocalPlayer
                a = game:GetService("RunService").Stepped:Connect(function()
                    wait()
                    if _G.Bang == true then
                        Player.Character.HumanoidRootPart.CFrame = localpl.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-1.5)
                    else
                        bang.Looped = false
                        bang:Stop()
                        a:disconnect()
                    end
                end)

            end
        end
    end,"player(s)")

    Unknown.AddCommand("unbang", "bruh", function()
        _G.Bang = false
    end)

    Unknown.AddCommand("Grab", "Loads FE grab knife remake", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                local KnifeAccessory

        if LocalPlayer.Character:FindFirstChild("-Running") then
            return Unknown.Notify("Command: " .. LocalPlayer["-Running"].Value .. " is already running.", {7, 1, 1})
        elseif not LocalPlayer.Character:FindFirstChildOfClass("Accessory") then
            return Unknown.Notify("You need at least 1 hat or preferably accessory: https://www.roblox.com/catalog/4684948729/Kawaii-Knife", {7, 1, 1})
        else

            if LocalPlayer.Character:FindFirstChild("YandereKnife") and LocalPlayer.Character["YandereKnife"].ClassName == "Accessory" then
                KnifeAccessory = LocalPlayer.Character["YandereKnife"]
            else
                KnifeAccessory = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
            end

            local Running = Instance.new("StringValue")
            Running.Parent = LocalPlayer.Character
            Running.Name = "-Running"
            Running.Value = "Grab Knife"




            local LeftArm = LocalPlayer.Character["Left Arm"]:Clone()
            LeftArm.Parent = LocalPlayer.Character
            LeftArm.Name = "LeftArm"
            LeftArm.Transparency = 1
            LeftArm:ClearAllChildren()

            local RightArm = LocalPlayer.Character["Right Arm"]:Clone()
            RightArm.Parent = LocalPlayer.Character
            RightArm.Name = "RightArm"
            RightArm.Transparency = 1
            RightArm:ClearAllChildren()

            local Stuff = {
                Events = {}, 
                Debounces = {Button1DownDebounce = false}, 
                PlrHeld = nil, 
                Mode = 1 -- 1 = kill, 2 = throw, 3 = let go, 4 = suicide
            }

            if LocalPlayer.Character:FindFirstChild("-GrabKnife") then
                LocalPlayer.Character:FindFirstChild("-GrabKnife"):Destroy()
            end
            if LocalPlayer.Character:FindFirstChild("GrabKnifeLA") then
                LocalPlayer.Character:FindFirstChild("GrabKnifeLA"):Destroy()
            end
            if LocalPlayer.Character:FindFirstChild("GrabKnifeRA") then
                LocalPlayer.Character:FindFirstChild("GrabKnifeRA"):Destroy()
            end



            local LA
            local RA

            local RS = LocalPlayer.Character.Torso["Right Shoulder"]:Clone()
            LocalPlayer.Character.Torso["Right Shoulder"]:Destroy()

            RS.Parent = LocalPlayer.Character.Torso
            RS.Part0 = RS.Parent
            RS.Part1 = RightArm

            local Attach0 = Instance.new("Attachment")
            Attach0.Parent = LocalPlayer.Character["Right Arm"]
            local Attach1 = Instance.new("Attachment")
            Attach1.Parent = RightArm

            local Pos = Instance.new("AlignPosition")
            Pos.Parent = LocalPlayer.Character.Torso
            Pos.RigidityEnabled = true
            Pos.Attachment0, Pos.Attachment1 = Attach0, Attach1

            local Rot = Instance.new("AlignOrientation")
            Rot.Parent = LocalPlayer.Character.Torso
            Rot.RigidityEnabled = true
            Rot.Attachment0, Rot.Attachment1 = Attach0, Attach1

            local LS = LocalPlayer.Character.Torso["Left Shoulder"]:Clone()
            LocalPlayer.Character.Torso["Left Shoulder"]:Destroy()

            LS.Parent = LocalPlayer.Character.Torso
            LS.Part0 = LS.Parent
            LS.Part1 = LeftArm

            local Attach0 = Instance.new("Attachment")
            Attach0.Parent = LocalPlayer.Character["Left Arm"]
            local Attach1 = Instance.new("Attachment")
            Attach1.Parent = LeftArm

            local Pos = Instance.new("AlignPosition")
            Pos.Parent = LocalPlayer.Character.Torso
            Pos.RigidityEnabled = true
            Pos.Attachment0, Pos.Attachment1 = Attach0, Attach1

            local Rot = Instance.new("AlignOrientation")
            Rot.Parent = LocalPlayer.Character.Torso
            Rot.RigidityEnabled = true
            Rot.Attachment0, Rot.Attachment1 = Attach0, Attach1


            local Knife = Instance.new("Part")
            Knife.Name = "-GrabKnife"
            Knife.Parent = LocalPlayer.Character
            Knife.Size = Vector3.new(0.25, 2, 0.25)
            Knife.Transparency = 1
            Knife.CanCollide = false

            local KnifeWeld = Instance.new("Weld")
            KnifeWeld.Parent = Knife
            KnifeWeld.Part0 = LeftArm
            KnifeWeld.Part1 = Knife
            KnifeWeld.C0 = CFrame.new(Vector3.new(0.2, -0.85, 0)) * CFrame.Angles(math.rad(0), math.rad(00), math.rad(0))
            KnifeWeld.C1 = CFrame.new(Vector3.new(0, 0.75, -0.125)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

            KnifeAccessory.Handle.AccessoryWeld:Destroy()
            local Attach0 = Instance.new("Attachment")
            Attach0.Parent = KnifeAccessory.Handle
            Attach0.CFrame = CFrame.new(Vector3.new(-0.5, 0, -0.5)) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(-90))
            local Attach1 = Instance.new("Attachment")
            Attach1.Parent = Knife

            local Pos = Instance.new("AlignPosition")
            Pos.Parent = Knife
            Pos.RigidityEnabled = true
            Pos.Attachment0, Pos.Attachment1 = Attach0, Attach1

            local Rot = Instance.new("AlignOrientation")
            Rot.Parent = Knife
            Rot.RigidityEnabled = true
            Rot.Attachment0, Rot.Attachment1 = Attach0, Attach1
            
                    LA = Instance.new("Weld")
                    LA.Name = "GrabKnifeLA"
                    LA.Parent = LocalPlayer.Character
                    LA.Part0 = LocalPlayer.Character.Torso
                    LA.Part1 = LeftArm
                    LA.C0 = CFrame.new(Vector3.new(-1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(-10))
                    LA.C1 = CFrame.new(Vector3.new(0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

                    RA = Instance.new("Weld")
                    RA.Name = "GrabKnifeRA"
                    RA.Parent = LocalPlayer.Character
                    RA.Part0 = LocalPlayer.Character.Torso
                    RA.Part1 = RightArm
                    RA.C0 = CFrame.new(Vector3.new(1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(-10), math.rad(10))
                    RA.C1 = CFrame.new(Vector3.new(-0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                                    game:GetService("TweenService"):Create(LA, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), { C0 = CFrame.new(Vector3.new(-1, 0.75, 0)) * CFrame.Angles(math.rad(80), math.rad(-90), math.rad(-10)) }):Play()
                    game:GetService("TweenService"):Create(RA, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), { C0 = CFrame.new(Vector3.new(1, 0.75, 0)) * CFrame.Angles(math.rad(70), math.rad(40), math.rad(10)) }):Play()
                    Player.Character.Humanoid.WalkSpeed = 0
                    Player.Character.Humanoid.JumpPower = 0
             
                    grabdelay = false
                    killdelay = false
                    grabkill = LocalPlayer:GetMouse().Button1Down:Connect(function()
                    if not killdelay then
                    Player.Character:BreakJoints()
                    LA.C0 = CFrame.new(Vector3.new(-1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(-10))
                    LA.C1 = CFrame.new(Vector3.new(0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                    RA.C0 = CFrame.new(Vector3.new(1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(-10), math.rad(10))
                    RA.C1 = CFrame.new(Vector3.new(-0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                    grabdelay = false
                    killdelay = false
                    grabloop:disconnect()
                    grabkill:disconnect()
                    Player.Character["-Grabbed"]:Destroy()
                    end
                    end)
                    Instance.new("ObjectValue",Player.Character).Name = "-Grabbed"
                    grabloop = game:GetService("RunService").Heartbeat:Connect(function()
                    if not grabdelay then
                    LoopTillEnd = game:GetService("RunService").Stepped:Connect(function()
                    if Player and Player.Character and Player.Character:FindFirstChild("-Grabbed") then
                        for i2, v2 in pairs(Player.Character:GetDescendants()) do
                            if v2:IsA("BasePart") then
                                v2.CanCollide = false
                            end
                        end
                    else
                        LoopTillEnd:Disconnect()
                    end
                end)
            if not Player.Character:FindFirstChild("-Grabbed") then
                                LA.C0 = CFrame.new(Vector3.new(-1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(10), math.rad(-10))
                    LA.C1 = CFrame.new(Vector3.new(0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                    RA.C0 = CFrame.new(Vector3.new(1, 1, 0)) * CFrame.Angles(math.rad(10), math.rad(-10), math.rad(10))
                    RA.C1 = CFrame.new(Vector3.new(-0.5, 1, 0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
                    grabdelay = false
                    killdelay = false
                    grabloop:disconnect()
                    grabkill:disconnect()				
            end
                    Player.Character:SetPrimaryPartCFrame(LocalPlayer.Character.PrimaryPart.CFrame + LocalPlayer.Character.PrimaryPart.CFrame.LookVector * LocalPlayer.Character.PrimaryPart.Size.Z * LocalPlayer.Character.PrimaryPart.Size.Z)
                    end
                    end)

            end
            end			
        end
    end,"player(s)")

    Unknown.AddCommand("dmode", "Yes.", function(player)
        local chara = game.Players.LocalPlayer.Character
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
            end
            SCIFIMOVIELOL(chara["Right Arm"], chara.HumanoidRootPart, Vector3.new(1.5, 1, 0), Vector3.new(60, 180, 180))
            chara:FindFirstChild("Pal Hair").Handle["AccessoryWeld"]:Destroy()chara:FindFirstChild("LavanderHair").Handle["AccessoryWeld"]:Destroy();chara:FindFirstChild("Pink Hair").Handle["AccessoryWeld"]:Destroy();chara.Torso["Right Shoulder"]:Destroy()
            chara:FindFirstChild("Pal Hair").Handle["Mesh"]:Destroy()chara:FindFirstChild("LavanderHair").Handle["Mesh"]:Destroy();chara:FindFirstChild("Pink Hair").Handle["Mesh"]:Destroy()
            wait(0.2)
            SCIFIMOVIELOL(chara:FindFirstChild("Pal Hair").Handle, chara["Right Arm"], Vector3.new(0, -1, 0), Vector3.new(0, 90, 0))
            SCIFIMOVIELOL(chara:FindFirstChild("LavanderHair").Handle, chara["Right Arm"], Vector3.new(0, -2, 0), Vector3.new(90, 0, 0))
            SCIFIMOVIELOL(chara:FindFirstChild("Pink Hair").Handle, chara["Right Arm"], Vector3.new(0, -4, 0), Vector3.new(90, 0, 0))
            _G.dmode = true
            local weld1 = Instance.new("Weld", Player.Character.HumanoidRootPart)
            Char = Player.Character
            local part11 = Instance.new("Part", workspace)
            lplayer = LocalPlayer
            part11.Anchored = true
            part11.CanCollide = false
            part11.Transparency = 1
            Char.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame * CFrame.new(1.5, 3.9, -3)
            weld1.Part1 = Char.HumanoidRootPart
            SCIFIMOVIELOL(Player.Character.HumanoidRootPart, chara.HumanoidRootPart, Vector3.new(1.5, 3.9, -3), Vector3.new(0, 0, 0))
            while wait() do
                if _G.dmode then
                    Char.HumanoidRootPart.CFrame = chara.HumanoidRootPart.CFrame * CFrame.new(1.5, 3.9, -3)

                else
                    weld1:Destroy()
                    part11:Destroy()
                    chara.Humanoid.Health = 0
                    break
                end
            end
        end

    end,"player(s)")
    Unknown.AddCommand("undmode", "Undmode yes.", function()
        _G.dmode = false
    end)


    Unknown.AddCommand("Freefall/ff", "FreeFalls a player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
            end
            Player.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 20000, 0)
        end
    end,"player(s)")

    Unknown.AddCommand("fling", "Flings a player", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
            end
            local fall = Instance.new("BodyForce", Player.Character.HumanoidRootPart)
            fall.Force = Player.Character.HumanoidRootPart.CFrame + Vector3.new(1000, -1000, 1000)
            wait(10)
            fall:Destroy()
        end
    end,"player(s)")

    Unknown.AddCommand("loopjump/lj", "loopjumps a plr", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                _G.Loopjum = true
                while wait() do
                    if _G.Loopjum then
                        Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        repeat
                            wait()
                        until Player.Character.Humanoid:GetState() == Enum.HumanoidStateType.Landed
                    else
                        Player.Character.Humanoid.Jump = false
                        break
                    end
                end
            end
        end
    end,"player(s)")

    Unknown.AddCommand("Unloopjump/unlj", "Unloopjumps", function()
        _G.Loopjum = false
    end)

    Unknown.AddCommand("Jump", "Makes a player j u m p", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.3)
            end
        end
    end,"player(s)")

    Unknown.AddCommand("sit", "Makes a player s i t", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                Player.Character.Humanoid.Sit = true
                wait(0.3)
            end
        end
    end,"player(s)")

    Unknown.AddCommand("stun", "Makes a player s t u n", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                Player.Character.Humanoid.PlatformStand = true
                wait(0.3)
            end
        end
    end,"player(s)")

    Unknown.AddCommand("unstun", "Makes a player u n s t u n", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
                Player.Character.Humanoid.PlatformStand = false
                wait(0.3)
            end
        end
    end,"player(s)")

    Unknown.AddCommand("drophats/dh",  "Drop", function()
    for i,v in pairs(LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") then
    v.Parent = workspace
    end
    end
    end)

    Unknown.AddCommand("droptools/dt","Drop", function()
    for i,v in pairs(LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then
    v.Parent = workspace
    end
    end
    for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    LocalPlayer.Character.Humanoid:EquipTool(v)
    v.Parent = workspace
    end
    end
    end)



    Unknown.AddCommand("gun", "grabs a player with a gun", function(player)
        if Unknown.GetShortenedPlrFromName(player) ~= nil then
            local Player
            for i, v in pairs(Unknown.GetShortenedPlrFromName(player)) do
                Player = v
            end
            local pler = game.Players.LocalPlayer
            if pler.Character:FindFirstChild("LavanderHair") and pler.Character:FindFirstChild("Pal Hair") then
                pler.Character:FindFirstChild("LavanderHair").Handle:FindFirstChild("Mesh"):Destroy();pler.Character:FindFirstChild("Pal Hair").Handle:FindFirstChild("Mesh"):Destroy();pler.Character.Torso:FindFirstChild("Left Shoulder"):Destroy();pler.Character.Torso:FindFirstChild("Right Shoulder"):Destroy();pler.Character:FindFirstChild("LavanderHair").Handle:FindFirstChild("AccessoryWeld"):Destroy();pler.Character:FindFirstChild("Pal Hair").Handle:FindFirstChild("AccessoryWeld"):Destroy();
                local lh = pler.Character:FindFirstChild("LavanderHair")
                local ph = pler.Character:FindFirstChild("Pal Hair")
                local rarm = pler.Character:FindFirstChild("Right Arm")
                local larm = pler.Character:FindFirstChild("Left Arm")
                local hrt = pler.Character.HumanoidRootPart
                SCIFIMOVIELOL(lh.Handle, hrt, Vector3.new(3, 1.5, -1), Vector3.new(90, 90, 0))
                SCIFIMOVIELOL(ph.Handle, hrt, Vector3.new(2, 2, -1), Vector3.new(0, -270, 0))
                SCIFIMOVIELOL(larm, hrt, Vector3.new(-1.5, 0.6, 0), Vector3.new(90, 0, 0))
                SCIFIMOVIELOL(rarm, hrt, Vector3.new(1.5, 1, 0), Vector3.new(45, 0, -270))
                if Player.Character:FindFirstChild("-Noclipped") then
                    Player.Character:FindFirstChild("-Noclipped"):Destroy()
                end

                local Noclipped = Instance.new("ObjectValue")
                Noclipped.Name = "-Noclipped"
                Noclipped.Parent = Player.Character

                mousedown = LocalPlayer:GetMouse().Button1Down:Connect(function()
                if _G.Gun then
                Player.Character:BreakJoints()
                wait(2)
                _G.Gun = false
                LocalPlayer.Character:BreakJoints()
                end
                end)
            
                local LoopTillEnd
                LoopTillEnd = game:GetService("RunService").Stepped:Connect(function()
                    if Player and Player.Character and Player.Character:FindFirstChild("-Noclipped") then
                        for i2, v2 in pairs(Player.Character:GetDescendants()) do
                            if v2:IsA("BasePart") then
                                v2.CanCollide = false
                            end
                        end
                    else
                        LoopTillEnd:Disconnect()
                    end
                end)

    _G.Gun = true
    while wait() do
    if _G.Gun then
    Player.Character.HumanoidRootPart.CFrame = pler.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -1.2)
    else
    mousedown:disconnect()
    LocalPlayer.Character:BreakJoints()
    break
    end
    end
            end
            
        end
    end,"player(s)")

    Unknown.AddCommand("Ungun", "resets gun", function()
    _G.Gun = false
    end)



    Unknown.AddCommand("chatlogs", "chat logs", function()
    for i,v in pairs(game.Players:GetPlayers()) do
    v.Chatted:Connect(function(msg)
    function logs(height,text,player)

    -- Instances:

    -- Gui to Lua
    -- Version: 3.2

    -- Instances:

    local Logs = Instance.new("ScreenGui")
    local ChatLogs = Instance.new("ImageLabel")
    local Player = Instance.new("TextLabel")
    local Text = Instance.new("TextLabel")
    local ChatLogs_2 = Instance.new("TextLabel")

    --Properties:

    Logs.Name = "Logs"
    Logs.Parent = game:GetService("CoreGui")

    ChatLogs.Name = "ChatLogs"
    ChatLogs.Parent = Logs
    ChatLogs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ChatLogs.BackgroundTransparency = 1.000
    ChatLogs.Position = UDim2.new(0, 10, 0.0489999987, height)
    ChatLogs.Size = UDim2.new(0, 300, 0, 70)
    ChatLogs.Image = "rbxassetid://3570695787"
    ChatLogs.ScaleType = Enum.ScaleType.Slice
    ChatLogs.SliceCenter = Rect.new(100, 100, 100, 100)
    ChatLogs.SliceScale = 0.120

    Player.Name = "Player"
    Player.Parent = ChatLogs
    Player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Player.BackgroundTransparency = 1.000
    Player.Position = UDim2.new(0.143333346, 0, 0.290000021, 0)
    Player.Size = UDim2.new(0, 200, 0, 20)
    Player.Font = Enum.Font.SourceSans
    Player.Text = player
    Player.TextColor3 = Color3.fromRGB(0, 0, 0)
    Player.TextScaled = true
    Player.TextSize = 14.000
    Player.TextWrapped = true

    Text.Name = "Text"
    Text.Parent = ChatLogs
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.Position = UDim2.new(0.176666662, 0, 0.48999998, 0)
    Text.Size = UDim2.new(0, 180, 0, 25)
    Text.Font = Enum.Font.SourceSans
    Text.Text = text
    Text.TextColor3 = Color3.fromRGB(0, 0, 0)
    Text.TextScaled = true
    Text.TextSize = 14.000
    Text.TextWrapped = true

    ChatLogs_2.Name = "ChatLogs"
    ChatLogs_2.Parent = ChatLogs
    ChatLogs_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ChatLogs_2.BackgroundTransparency = 1.000
    ChatLogs_2.Position = UDim2.new(0.143333331, 0, 0, 0)
    ChatLogs_2.Size = UDim2.new(0, 200, 0, 29)
    ChatLogs_2.Font = Enum.Font.SourceSans
    ChatLogs_2.Text = "Chat Logs"
    ChatLogs_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    ChatLogs_2.TextScaled = true
    ChatLogs_2.TextSize = 14.000
    ChatLogs_2.TextWrapped = true
    wait(4)
    ChatLogs:Destroy()
    end

    logs(570,msg,v.Name)
    end)
    end
    end)

    -- updating cmdlist

    Unknown.UpdateCmdList(CmdList, {CmdBar, "alphabetical"})

    -- Disconnecting all the events along with the functions if gui is re-executed:

    repeat
        wait()
    until Unknown_AdminGui.Parent ~= game:GetService("CoreGui")

    for i, v in pairs(Unknown.Events) do
        pcall(function()
            v:Disconnect()
        end)
    end

    Unknown = nil
        
