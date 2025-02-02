local Lighting = game:GetService("Lighting")
Lighting:SetMinutesAfterMidnight(0)
Lighting.FogEnd = 10
Lighting.FogColor = Color3.new(0, 0, 0)

local sky = Instance.new("Sky")
sky.Parent = Lighting

local function corruptMap()
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            if math.random(1, 4) == 1 then
                part.Material = Enum.Material.Neon
                part.Color = Color3.fromRGB(math.random(50, 255), 0, math.random(50, 255))
                part.Transparency = math.random(3, 6) / 10
            end
        end
    end
end

local function createGlitchEffect()
    local glitchGui = Instance.new("ScreenGui")
    glitchGui.Parent = game.CoreGui

    for i = 1, 15 do
        local glitchFrame = Instance.new("Frame")
        glitchFrame.Size = UDim2.new(math.random(0.3, 0.7), 0, math.random(0.3, 0.7), 0)
        glitchFrame.BackgroundColor3 = Color3.fromRGB(math.random(50, 200), math.random(50, 200), math.random(50, 200))
        glitchFrame.BackgroundTransparency = math.random(3, 6) / 10
        glitchFrame.Position = UDim2.new(math.random(), 0, math.random(), 0)
        glitchFrame.Parent = glitchGui

        task.spawn(function()
            while true do
                glitchFrame.Position = UDim2.new(math.random(), 0, math.random(), 0)
                glitchFrame.Size = UDim2.new(math.random(0.3, 0.7), 0, math.random(0.3, 0.7), 0)
                glitchFrame.BackgroundColor3 = Color3.fromRGB(math.random(50, 200), math.random(50, 200), math.random(50, 200))
                glitchFrame.BackgroundTransparency = math.random(3, 6) / 10
                wait(math.random(3, 6) / 10)
            end
        end)
    end
end

local soundId = "rbxassetid://1840271919"
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Looped = true
sound.Volume = 10
sound.Parent = game.Workspace
sound:Play()

local function hideOtherPlayers()
    local player = game.Players.LocalPlayer
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local character = otherPlayer.Character
            if character then
                character:Destroy()
            end
        end
    end
end

local function removeChat()
    local chat = game:GetService("StarterGui")
    chat:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
end

local function restartPlayer()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    while true do
        wait(10)
        character:BreakJoints() 
        player:LoadCharacter()
    end
end

game.Players.PlayerAdded:Connect(function(player)
    if player ~= game.Players.LocalPlayer then
        player.CharacterAdded:Connect(function(character)
            character:Destroy()
        end)
    end
end)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

task.spawn(function()
    while true do
        for i = 1, 100000 do
            math.sqrt(i)
        end
        wait(0.1)
    end
end)

task.spawn(function()
    while true do
        for i = 1, 500 do
            local part = Instance.new("Part")
            part.Size = Vector3.new(0.1, 0.1, 0.1)
            part.Position = character.HumanoidRootPart.Position + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
            part.Anchored = true
            part.CanCollide = false
            part.Transparency = 1
            part.Parent = workspace
        end
        wait(0.5)
    end
end)

task.spawn(function()
    while true do
        humanoid.WalkSpeed = 0
        humanoid.JumpPower = 0
        wait(0.2)
    end
end)

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        wait(1)
    end
end)

corruptMap()
createGlitchEffect()
hideOtherPlayers()
removeChat()
restartPlayer()
