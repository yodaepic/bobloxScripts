local destructionSimulator = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Header = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Container = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local rocketCool = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local bombCool = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local autoSell = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local Container_2 = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local tpToShop = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local walkspeedx2 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local jpx2 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
getgenv().autoSellEnabled = false

-- Functions:
local function rocketCooldown()
    if game:GetService('Players').Backpack:FindFirstChild('Launcher') then
        local rocketLauncherModule = require(game:GetService('Players').Backpack:WaitForChild('Launcher', 1).Stats)
        rocketLauncherModule['Cooldown'] = 0
    else
        warn('--------------------\nPlease unequip the tool you are trying to modify\n--------------------')
    end
end
local function bombCooldown()
    if game:GetService('Players').Backpack:FindFirstChild('Bomb') then
        local bombModule = require(game:GetService('Players').Backpack:WaitForChild('Bomb', 1).Stats)
        bombModule['Cooldown'] = 0
    else
        warn('--------------------\nPlease unequip the tool you are trying to modify\n--------------------')
    end
end
local function autosell()
    if getgenv().autoSellEnabled == false then
        getgenv().autoSellEnabled = true
        autoSell.Text = 'Auto sell: on'
        while true do
            wait(.1)
            if getgenv().enabled == true then
                game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
            end
        end
    else
        getgenv().autoSellEnabled = false
        autoSell.Text = 'Auto sell: off'
    end
end
local function tptoshop()
    local humanoidRootPart = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
    humanoidRootPart.CFrame = CFrame.new(-35.4998627, 2.5499289, -417.999847, 0, 1, 0, 1, 0, 0, 0, 0, -1)
end
local function doubleWS()
    local player = game:GetService('Players').LocalPlayer
    player.Character.Humanoid.WalkSpeed = player.Character.Humanoid.WalkSpeed * 2
end
local function doubleJP()
    local player = game:GetService('Players').LocalPlayer
    player.Character.Humanoid.JumpPower = player.Character.Humanoid.JumpPower * 2
end
--Properties:

destructionSimulator.Name = "destructionSimulator"
destructionSimulator.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
destructionSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = destructionSimulator
Background.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Background.Position = UDim2.new(0.0750915781, 0, 0.507559419, 0)
Background.Size = UDim2.new(0.347794116, 0, 0.129589632, 0)
Background.Draggable = true

Header.Name = "Header"
Header.Parent = Background
Header.BackgroundColor3 = Color3.fromRGB(29, 0, 255)
Header.Size = UDim2.new(1, 0, 0.25, 0)
Header.Font = Enum.Font.Ubuntu
Header.Text = "Destruction Simulator"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 22.000
Header.TextWrapped = true
UICorner.Parent = Header

Container.Name = "Container"
Container.Parent = Background
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.Position = UDim2.new(0.016913319, 0, 0.308333337, 0)
Container.Size = UDim2.new(0.964059174, 0, 0.333333343, 0)

UIListLayout.Parent = Container
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 15)

-- Rocket launcher cooldown button
rocketCool.Name = "rocketCool"
rocketCool.Parent = Container
rocketCool.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
rocketCool.Size = UDim2.new(0.309210539, 0, 0.875, 0)
rocketCool.Font = Enum.Font.Ubuntu
rocketCool.Text = "No rocket launcher cooldown"
rocketCool.TextColor3 = Color3.fromRGB(255, 255, 255)
rocketCool.TextScaled = true
rocketCool.TextSize = 14.000
rocketCool.TextWrapped = true
rocketCool.MouseButton1Click:Connect(rocketCooldown)
UICorner_2.Parent = rocketCool

-- Bomb cooldown button
bombCool.Name = "bombCool"
bombCool.Parent = Container
bombCool.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
bombCool.Size = UDim2.new(0.309210539, 0, 0.875, 0)
bombCool.Font = Enum.Font.Ubuntu
bombCool.Text = "No bomb cooldown"
bombCool.TextColor3 = Color3.fromRGB(255, 255, 255)
bombCool.TextScaled = true
bombCool.TextSize = 14.000
bombCool.TextWrapped = true
bombCool.MouseButton1Click:Connect(bombCooldown)
UICorner_3.Parent = bombCool

autoSell.Name = "autoSell"
autoSell.Parent = Container
autoSell.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
autoSell.Size = UDim2.new(0, 141, 0, 35)
autoSell.Font = Enum.Font.Ubuntu
autoSell.Text = "Auto sell: off"
autoSell.TextColor3 = Color3.fromRGB(255, 255, 255)
autoSell.TextScaled = true
autoSell.TextSize = 14.000
autoSell.TextWrapped = true
autoSell.MouseButton1Click:Connect(autosell)
UICorner_4.Parent = autoSell
UICorner_5.Parent = Background

-- Second container --

Container_2.Name = "Container"
Container_2.Parent = Background
Container_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container_2.BackgroundTransparency = 1.000
Container_2.Position = UDim2.new(0.016913319, 0, 0.643540442, 0)
Container_2.Size = UDim2.new(0.964059174, 0, 0.349999994, 0)

UIListLayout_2.Parent = Container_2
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 15)

-- Teleport to shop button
tpToShop.Name = "tpToShop"
tpToShop.Parent = Container_2
tpToShop.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
tpToShop.Size = UDim2.new(0.309210539, 0, 0.833333313, 0)
tpToShop.Font = Enum.Font.Ubuntu
tpToShop.Text = "Teleport to shop"
tpToShop.TextColor3 = Color3.fromRGB(255, 255, 255)
tpToShop.TextScaled = true
tpToShop.TextSize = 14.000
tpToShop.TextWrapped = true
tpToShop.MouseButton1Click:Connect(tptoshop)
UICorner_6.Parent = tpToShop

walkspeedx2.Name = "walkspeedx2"
walkspeedx2.Parent = Container_2
walkspeedx2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
walkspeedx2.Size = UDim2.new(0.309210539, 0, 0.833333313, 0)
walkspeedx2.Font = Enum.Font.Ubuntu
walkspeedx2.Text = "Walkspeed x2"
walkspeedx2.TextColor3 = Color3.fromRGB(255, 255, 255)
walkspeedx2.TextScaled = true
walkspeedx2.TextSize = 14.000
walkspeedx2.TextWrapped = true
walkspeedx2.MouseButton1Click:Connect(doubleWS)
UICorner_7.Parent = walkspeedx2

jpx2.Name = "jpx2"
jpx2.Parent = Container_2
jpx2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
jpx2.Size = UDim2.new(0.309210539, 0, 0.833333313, 0)
jpx2.Font = Enum.Font.Ubuntu
jpx2.Text = "Jumppower x2"
jpx2.TextColor3 = Color3.fromRGB(255, 255, 255)
jpx2.TextScaled = true
jpx2.TextSize = 14.000
jpx2.TextWrapped = true
jpx2.MouseButton1Click:Connect(doubleJP)
UICorner_8.Parent = jpx2

print([[
    Enjoy using this script!
    Discord server: https://discord.gg/E5age4dq
]])