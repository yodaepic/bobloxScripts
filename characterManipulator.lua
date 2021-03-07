local char = Instance.new("ScreenGui") -- UI
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Header = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Container1 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Naked = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local RemoveHeadMesh = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local RemoveAccessories = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local RemoveFace = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Container2 = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local RemoveLegs = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local RemoveArms = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local RemoveAnims = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local DoubleWS = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Container3 = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local DoubleJP = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local CommitDie = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")

--Properties:

char.Name = "char"
char.Parent = game:GetService('CoreGui')
char.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = char
MainFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
MainFrame.Position = UDim2.new(0.0122061484, 0, 0.57325381, 0)
MainFrame.Size = UDim2.new(0, 643, 0, 241)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.Parent = MainFrame

Header.Name = "Header"
Header.Parent = MainFrame
Header.BackgroundColor3 = Color3.fromRGB(15, 180, 70)
Header.Size = UDim2.new(0, 643, 0, 40)
Header.Font = Enum.Font.Ubuntu
Header.Text = "Character"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextScaled = true
Header.TextSize = 36.000
Header.TextWrapped = true

UICorner_2.Parent = Header

Container1.Name = "Container1"
Container1.Parent = MainFrame
Container1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container1.BackgroundTransparency = 1.000
Container1.Position = UDim2.new(0.0139968898, 0, 0.209743902, 0)
Container1.Size = UDim2.new(0, 626, 0, 61)

UIListLayout.Parent = Container1
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.Padding = UDim.new(0, 28)

Naked.Name = "Naked"
Naked.Parent = Container1
Naked.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Naked.Size = UDim2.new(0, 135, 0, 50)
Naked.Font = Enum.Font.Ubuntu
Naked.Text = "Remove all clothes"
Naked.TextColor3 = Color3.fromRGB(255, 255, 255)
Naked.TextScaled = true
Naked.TextSize = 14.000
Naked.TextWrapped = true
Naked.MouseButton1Click:Connect(function()
    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Pants') then
        game:GetService('Players').LocalPlayer.Character.Pants:Destroy()
        if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Shirt') then
            game:GetService('Players').LocalPlayer.Character.Shirt:Destroy()
        end
    else
        return
    end
end)
UICorner_3.Parent = Naked

RemoveHeadMesh.Name = "RemoveHeadMesh"
RemoveHeadMesh.Parent = Container1
RemoveHeadMesh.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RemoveHeadMesh.Position = UDim2.new(0.22523962, 0, -0.69590795, 0)
RemoveHeadMesh.Size = UDim2.new(0, 135, 0, 50)
RemoveHeadMesh.Font = Enum.Font.Ubuntu
RemoveHeadMesh.Text = "Remove the head's mesh"
RemoveHeadMesh.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveHeadMesh.TextScaled = true
RemoveHeadMesh.TextSize = 14.000
RemoveHeadMesh.TextWrapped = true
RemoveHeadMesh.MouseButton1Click:Connect(function()
    if game:GetService('Players').LocalPlayer.Character.Head:FindFirstChild('Mesh') then
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('Head').Mesh:Destroy()
    else
        return
    end
end)
UICorner_4.Parent = RemoveHeadMesh

RemoveAccessories.Name = "RemoveAccessories"
RemoveAccessories.Parent = Container1
RemoveAccessories.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RemoveAccessories.Position = UDim2.new(0, 0, 0.160256416, 0)
RemoveAccessories.Size = UDim2.new(0, 135, 0, 50)
RemoveAccessories.Font = Enum.Font.Ubuntu
RemoveAccessories.Text = "Remove accessories"
RemoveAccessories.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveAccessories.TextScaled = true
RemoveAccessories.TextSize = 14.000
RemoveAccessories.TextWrapped = true
RemoveAccessories.MouseButton1Click:Connect(function()
    for i, v in pairs(game:GetService('Players').LocalPlayer.Character:GetChildren()) do
        wait()
        if v.ClassName == 'Accessory' then
            v:Destroy()
        end
    end
end)
UICorner_5.Parent = RemoveAccessories

RemoveFace.Name = "RemoveFace"
RemoveFace.Parent = Container1
RemoveFace.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RemoveFace.Position = UDim2.new(0, 0, 0.160256416, 0)
RemoveFace.Size = UDim2.new(0, 135, 0, 50)
RemoveFace.Font = Enum.Font.Ubuntu
RemoveFace.Text = "Remove face"
RemoveFace.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveFace.TextScaled = true
RemoveFace.TextSize = 14.000
RemoveFace.TextWrapped = true
RemoveFace.MouseButton1Click:Connect(function()
    if game:GetService('Players').LocalPlayer.Character.Head:FindFirstChild('face') then
        game:GetService('Players').LocalPlayer.Character:FindFirstChild('Head').face:Destroy()
    else
        return
    end
end)
UICorner_6.Parent = RemoveFace

Container2.Name = "Container2"
Container2.Parent = MainFrame
Container2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container2.BackgroundTransparency = 1.000
Container2.Position = UDim2.new(0.0139968898, 0, 0.477390647, 0)
Container2.Size = UDim2.new(0, 626, 0, 59)

UIListLayout_2.Parent = Container2
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.Padding = UDim.new(0, 28)

RemoveLegs.Name = "RemoveLegs"
RemoveLegs.Parent = Container2
RemoveLegs.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RemoveLegs.Position = UDim2.new(1.17418349, 0, 0.427301884, 0)
RemoveLegs.Size = UDim2.new(0, 135, 0, 50)
RemoveLegs.Font = Enum.Font.Ubuntu
RemoveLegs.Text = "Remove legs"
RemoveLegs.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveLegs.TextScaled = true
RemoveLegs.TextSize = 14.000
RemoveLegs.TextWrapped = true
RemoveLegs.MouseButton1Click:Connect(function()
    for i, v in pairs(game:GetService('Players').LocalPlayer.Character:GetChildren()) do
        wait()
        if v.Name == 'Left Leg' or v.Name == 'Right Leg' or v.Name == 'LeftLowerLeg' or v.Name == 'LeftUpperLeg' or v.Name == 'LeftFoot' or v.Name == 'RightFoot' or v.Name == 'RightLowerLeg' or v.Name == 'RightUpperLeg' then
            v:Destroy()
        end
    end
end)
UICorner_7.Parent = RemoveLegs

RemoveArms.Name = "RemoveArms"
RemoveArms.Parent = Container2
RemoveArms.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RemoveArms.Position = UDim2.new(1.17418349, 0, 0.427301884, 0)
RemoveArms.Size = UDim2.new(0, 135, 0, 50)
RemoveArms.Font = Enum.Font.Ubuntu
RemoveArms.Text = "Remove arms"
RemoveArms.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveArms.TextScaled = true
RemoveArms.TextSize = 14.000
RemoveArms.TextWrapped = true
RemoveArms.MouseButton1Click:Connect(function()
    for i, v in pairs(game:GetService('Players').LocalPlayer.Character:GetChildren()) do
        wait()
        if v.Name == 'Left Arm' or v.Name == 'Right Arm' or v.Name == 'LeftLowerArm' or v.Name == 'LeftUpperArm' or v.Name == 'RightHand' or v.Name == 'LeftHand' or v.Name == 'RightLowerArm' or v.Name == 'RightUpperArm' then
            v:Destroy()
        end
    end
end)
UICorner_8.Parent = RemoveArms

RemoveAnims.Name = "RemoveAnims"
RemoveAnims.Parent = Container2
RemoveAnims.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RemoveAnims.Position = UDim2.new(1.17418349, 0, 0.427301884, 0)
RemoveAnims.Size = UDim2.new(0, 135, 0, 50)
RemoveAnims.Font = Enum.Font.Ubuntu
RemoveAnims.Text = "Remove animations"
RemoveAnims.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveAnims.TextScaled = true
RemoveAnims.TextSize = 14.000
RemoveAnims.TextWrapped = true
RemoveAnims.MouseButton1Click:Connect(function()
    if game:GetService('Players').LocalPlayer.Character.Humanoid:FindFirstChild('Animator') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Animate') then
        game:GetService('Players').LocalPlayer.Character.Humanoid:FindFirstChild('Animator'):Destroy()
        game:GetService('Players').LocalPlayer.Character.Animate:Destroy()
    else
        return
    end
end)
UICorner_9.Parent = RemoveAnims

DoubleWS.Name = "DoubleWS"
DoubleWS.Parent = Container2
DoubleWS.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
DoubleWS.Position = UDim2.new(1.17418349, 0, 0.427301884, 0)
DoubleWS.Size = UDim2.new(0, 135, 0, 50)
DoubleWS.Font = Enum.Font.Ubuntu
DoubleWS.Text = "Double walkspeed"
DoubleWS.TextColor3 = Color3.fromRGB(255, 255, 255)
DoubleWS.TextScaled = true
DoubleWS.TextSize = 14.000
DoubleWS.TextWrapped = true
DoubleWS.MouseButton1Click:Connect(function()
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed * 2
end)
UICorner_10.Parent = DoubleWS

Container3.Name = "Container3"
Container3.Parent = MainFrame
Container3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container3.BackgroundTransparency = 1.000
Container3.Position = UDim2.new(0.0139968898, 0, 0.747654319, 0)
Container3.Size = UDim2.new(0, 626, 0, 53)

UIListLayout_3.Parent = Container3
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.Padding = UDim.new(0, 28)

DoubleJP.Name = "DoubleJP"
DoubleJP.Parent = Container3
DoubleJP.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
DoubleJP.Position = UDim2.new(1.17418349, 0, 0.427301884, 0)
DoubleJP.Size = UDim2.new(0, 135, 0, 50)
DoubleJP.Font = Enum.Font.Ubuntu
DoubleJP.Text = "Double jumppower"
DoubleJP.TextColor3 = Color3.fromRGB(255, 255, 255)
DoubleJP.TextScaled = true
DoubleJP.TextSize = 14.000
DoubleJP.TextWrapped = true
DoubleJP.MouseButton1Click:Connect(function()
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower * 2
end)
UICorner_11.Parent = DoubleJP

CommitDie.Name = "CommitDie"
CommitDie.Parent = Container3
CommitDie.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
CommitDie.Position = UDim2.new(1.17418349, 0, 0.427301884, 0)
CommitDie.Size = UDim2.new(0, 135, 0, 50)
CommitDie.Font = Enum.Font.Ubuntu
CommitDie.Text = "Reset character"
CommitDie.TextColor3 = Color3.fromRGB(255, 255, 255)
CommitDie.TextScaled = true
CommitDie.TextSize = 14.000
CommitDie.TextWrapped = true
CommitDie.MouseButton1Click:Connect(function()
    game:GetService('Players').LocalPlayer.Character.Humanoid.Health = 0
end)
UICorner_12.Parent = CommitDie
