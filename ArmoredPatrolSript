-- CreatorHubX Ultimate (Full Neon Edition)
if game.PlaceId ~= 10518166490 then
    game:GetService("StarterGui"):SetCore("SendNotification",{Title="CreatorHubX",Text="❌ Только для ARMORED PATROL!",Duration=3})
    return
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- ========== НАСТРОЙКИ ЦВЕТОВ ==========
local colors = {
    primary = Color3.fromRGB(15, 15, 30),      -- глубокий тёмно-синий (полупрозрачный)
    secondary = Color3.fromRGB(30, 30, 60),    -- средне-синий
    accent = Color3.fromRGB(80, 120, 255),      -- ярко-синий
    accent2 = Color3.fromRGB(180, 80, 255),     -- фиолетовый
    text = Color3.fromRGB(230, 230, 255),       -- светло-сиреневый
    off = Color3.fromRGB(80, 80, 120),
    on = Color3.fromRGB(100, 255, 150),
}

-- ========== GUI ==========
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CreatorHubX"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999

-- Основное окно с полупрозрачностью
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 380, 0, 650)
MainFrame.Position = UDim2.new(0, 20, 0, 50)
MainFrame.BackgroundColor3 = colors.primary
MainFrame.BackgroundTransparency = 0.2
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- Тень
local Shadow = Instance.new("ImageLabel")
Shadow.Size = UDim2.new(1, 20, 1, 20)
Shadow.Position = UDim2.new(0, -10, 0, -10)
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxasset://textures/ui/Glow.png"
Shadow.ImageColor3 = Color3.new(0, 0, 0)
Shadow.ImageTransparency = 0.6
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(10, 10, 10, 10)
Shadow.Parent = MainFrame

-- Заголовок с градиентом
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 50)
TitleBar.BackgroundColor3 = colors.secondary
TitleBar.BackgroundTransparency = 0.2
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, colors.accent), ColorSequenceKeypoint.new(1, colors.accent2)}
TitleGradient.Rotation = 45
TitleGradient.Parent = TitleBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -60, 1, 0)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "CREATORHUBX"
Title.TextColor3 = colors.text
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TitleBar

-- Кнопка сворачивания
local CollapseBtn = Instance.new("ImageButton")
CollapseBtn.Size = UDim2.new(0, 30, 0, 30)
CollapseBtn.Position = UDim2.new(1, -40, 0, 10)
CollapseBtn.BackgroundColor3 = Color3.new(1,1,1)
CollapseBtn.BackgroundTransparency = 0.9
CollapseBtn.Image = "rbxassetid://3926305904" -- иконка "минус"
CollapseBtn.ImageColor3 = colors.text
CollapseBtn.ScaleType = Enum.ScaleType.Fit
CollapseBtn.Parent = TitleBar

-- Кнопка закрытия
local CloseBtn = Instance.new("ImageButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -75, 0, 10)
CloseBtn.BackgroundColor3 = Color3.new(1,1,1)
CloseBtn.BackgroundTransparency = 0.9
CloseBtn.Image = "rbxassetid://3926307971" -- иконка "X"
CloseBtn.ImageColor3 = colors.text
CloseBtn.ScaleType = Enum.ScaleType.Fit
CloseBtn.Parent = TitleBar

-- Контейнер контента
local ContentFrame = Instance.new("Frame")
ContentFrame.Size = UDim2.new(1, 0, 1, -50)
ContentFrame.Position = UDim2.new(0, 0, 0, 50)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = MainFrame

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.ScrollBarThickness = 8
ScrollingFrame.ScrollBarImageColor3 = colors.accent2
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.Parent = ContentFrame

local UIList = Instance.new("UIListLayout")
UIList.Parent = ScrollingFrame
UIList.Padding = UDim.new(0, 8)
UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Закругление углов окна
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

-- ========== ФУНКЦИИ СОЗДАНИЯ ЭЛЕМЕНТОВ ==========
local function createSection(title)
    local section = Instance.new("Frame")
    section.Size = UDim2.new(1, -10, 0, 35)
    section.BackgroundColor3 = colors.secondary
    section.BackgroundTransparency = 0.2
    section.BorderSizePixel = 0
    section.Parent = ScrollingFrame

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, colors.accent), ColorSequenceKeypoint.new(1, colors.accent2)}
    gradient.Rotation = 45
    gradient.Parent = section

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = section

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -15, 1, 0)
    label.Position = UDim2.new(0, 15, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = title
    label.TextColor3 = colors.text
    label.Font = Enum.Font.GothamBold
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = section

    return section
end

local function createCheckbox(parent, text, get, set)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -10, 0, 40)
    frame.BackgroundColor3 = colors.primary
    frame.BackgroundTransparency = 0.3
    frame.BorderSizePixel = 0
    frame.Parent = parent

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.7, 0, 1, 0)
    label.Position = UDim2.new(0, 15, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = colors.text
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Font = Enum.Font.Gotham
    label.TextSize = 14
    label.Parent = frame

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.22, 0, 0.7, 0)
    btn.Position = UDim2.new(0.78, 0, 0.15, 0)
    btn.BackgroundColor3 = get() and colors.on or colors.off
    btn.Text = get() and "ON" or "OFF"
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.Parent = frame

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = btn

    btn.MouseButton1Click:Connect(function()
        local new = not get()
        set(new)
        btn.BackgroundColor3 = new and colors.on or colors.off
        btn.Text = new and "ON" or "OFF"
    end)

    return frame
end

local function createSlider(parent, text, min, max, get, set, suffix)
    suffix = suffix or ""
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -10, 0, 55)
    frame.BackgroundColor3 = colors.primary
    frame.BackgroundTransparency = 0.3
    frame.BorderSizePixel = 0
    frame.Parent = parent

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 15, 0, 5)
    label.BackgroundTransparency = 1
    label.Text = text .. ": " .. get() .. suffix
    label.TextColor3 = colors.text
    label.Font = Enum.Font.Gotham
    label.TextSize = 13
    label.Parent = frame

    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0.4, 0, 0, 28)
    box.Position = UDim2.new(0, 15, 0, 25)
    box.BackgroundColor3 = colors.secondary
    box.BackgroundTransparency = 0.2
    box.Text = tostring(get())
    box.TextColor3 = colors.text
    box.Font = Enum.Font.Gotham
    box.TextSize = 14
    box.ClearTextOnFocus = false
    box.Parent = frame

    local boxCorner = Instance.new("UICorner")
    boxCorner.CornerRadius = UDim.new(0, 6)
    boxCorner.Parent = box

    local setBtn = Instance.new("TextButton")
    setBtn.Size = UDim2.new(0.3, 0, 0, 28)
    setBtn.Position = UDim2.new(0.45, 10, 0, 25)
    setBtn.BackgroundColor3 = colors.accent
    setBtn.Text = "SET"
    setBtn.TextColor3 = Color3.new(1, 1, 1)
    setBtn.Font = Enum.Font.GothamBold
    setBtn.TextSize = 14
    setBtn.Parent = frame

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = setBtn

    setBtn.MouseButton1Click:Connect(function()
        local val = tonumber(box.Text)
        if val and val >= min and val <= max then
            set(val)
            label.Text = text .. ": " .. val .. suffix
        else
            box.Text = tostring(get())
        end
    end)

    return frame
end

-- ========== ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ ==========
local function getTeam(player)
    if player.Team then return player.Team
    elseif player.TeamColor then return player.TeamColor end
    return nil
end

local function isEnemy(player)
    if player == LocalPlayer then return false end
    local myTeam = getTeam(LocalPlayer)
    local theirTeam = getTeam(player)
    if not myTeam or not theirTeam then return true end
    return myTeam ~= theirTeam
end

-- ========== SPEED HACK (ОПТИМИЗИРОВАН) ==========
local speedEnabled = false
local targetSpeed = 60
local smoothSpeed = true
local currentSpeed = 16
local speedConn
local boostBodyVelocity = nil
local boostActive = false

local function stopBoost()
    if boostBodyVelocity then
        boostBodyVelocity:Destroy()
        boostBodyVelocity = nil
    end
    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.PlatformStand = false
            hum.WalkSpeed = 16
        end
    end
    boostActive = false
end

local function updateBoost()
    if not boostActive or not boostBodyVelocity then return end
    local moveDir = Vector3.new(0,0,0)
    if UserInputService:IsKeyDown(Enum.KeyCode.W) then moveDir = moveDir + Camera.CFrame.LookVector end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then moveDir = moveDir - Camera.CFrame.LookVector end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then moveDir = moveDir - Camera.CFrame.RightVector end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then moveDir = moveDir + Camera.CFrame.RightVector end
    if moveDir.Magnitude > 0 then
        moveDir = moveDir.Unit * targetSpeed
    end
    -- Только горизонталь
    boostBodyVelocity.Velocity = Vector3.new(moveDir.X, 0, moveDir.Z)
end

local function updateSpeed()
    if speedConn then speedConn:Disconnect() end
    if speedEnabled then
        if targetSpeed > 60 then
            -- Включаем буст
            if not boostActive then
                local char = LocalPlayer.Character
                if char then
                    local root = char:FindFirstChild("HumanoidRootPart")
                    if root then
                        stopBoost()
                        boostBodyVelocity = Instance.new("BodyVelocity")
                        boostBodyVelocity.MaxForce = Vector3.new(4000, 0, 4000)
                        boostBodyVelocity.Velocity = Vector3.new(0,0,0)
                        boostBodyVelocity.Parent = root
                        local hum = char:FindFirstChildOfClass("Humanoid")
                        if hum then
                            hum.PlatformStand = true
                            hum.WalkSpeed = 16
                        end
                        boostActive = true
                    end
                end
            end
            speedConn = RunService.Heartbeat:Connect(updateBoost)
        else
            if boostActive then stopBoost() end
            speedConn = RunService.Heartbeat:Connect(function()
                local char = LocalPlayer.Character
                if not char then return end
                local vehicle = char:FindFirstChildOfClass("VehicleSeat")
                local hum = char:FindFirstChildOfClass("Humanoid")
                if vehicle then
                    vehicle.Throttle = 1
                elseif hum then
                    if smoothSpeed then
                        currentSpeed = currentSpeed + (targetSpeed - currentSpeed) * 0.1
                        hum.WalkSpeed = currentSpeed
                    else
                        hum.WalkSpeed = targetSpeed
                    end
                end
            end)
        end
    else
        stopBoost()
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = 16 end
            local vehicle = char:FindFirstChildOfClass("VehicleSeat")
            if vehicle then vehicle.Throttle = 0 end
        end
        currentSpeed = 16
    end
end

-- ========== ESP С АВТООБНОВЛЕНИЕМ ==========
local espEnabled = false
local espConnections = {}
local espUpdateThread = nil

local function createHighlight(player)
    if player == LocalPlayer then return end
    local char = player.Character
    if not char then return end
    -- Удаляем старый Highlight
    local old = char:FindFirstChildOfClass("Highlight")
    if old then old:Destroy() end

    local color = isEnemy(player) and Color3.fromRGB(255, 50, 50) or Color3.fromRGB(50, 255, 100)
    local hl = Instance.new("Highlight")
    hl.FillColor = color
    hl.OutlineColor = Color3.fromRGB(255, 255, 255)
    hl.FillTransparency = 0.5
    hl.OutlineTransparency = 0
    hl.Adornee = char
    hl.Parent = char

    local conn = char.AncestryChanged:Connect(function()
        if not char.Parent then hl:Destroy() end
    end)
    table.insert(espConnections, conn)
end

local function updateESP()
    -- Отключаем старые подключения
    for _, conn in ipairs(espConnections) do pcall(conn.Disconnect, conn) end
    table.clear(espConnections)
    -- Удаляем все существующие Highlight
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character then
            local hl = player.Character:FindFirstChildOfClass("Highlight")
            if hl then hl:Destroy() end
        end
    end
    if not espEnabled then
        if espUpdateThread then coroutine.close(espUpdateThread) espUpdateThread = nil end
        return
    end

    -- Применяем ко всем текущим
    for _, player in ipairs(Players:GetPlayers()) do createHighlight(player) end

    -- Подписки
    table.insert(espConnections, Players.PlayerAdded:Connect(function(player)
        createHighlight(player)
        table.insert(espConnections, player.CharacterAdded:Connect(function() createHighlight(player) end))
    end))
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(espConnections, player.CharacterAdded:Connect(function() createHighlight(player) end))
        end
    end

    -- Периодическое обновление цветов при смене команды
    if espUpdateThread then coroutine.close(espUpdateThread) end
    espUpdateThread = task.spawn(function()
        while espEnabled do
            task.wait(2)
            if espEnabled then
                for _, player in ipairs(Players:GetPlayers()) do
                    if player.Character then
                        local hl = player.Character:FindFirstChildOfClass("Highlight")
                        if hl then
                            local correctColor = isEnemy(player) and Color3.fromRGB(255, 50, 50) or Color3.fromRGB(50, 255, 100)
                            if hl.FillColor ~= correctColor then
                                hl.FillColor = correctColor
                            end
                        end
                    end
                end
            end
        end
    end)
end

-- ========== AIMBOT ==========
local aimbotEnabled = false
local aimbotFOV = 30
local aimbotSmooth = 0.3
local aimbotConn
local rmbPressed = false
local currentTarget = nil

UserInputService.InputBegan:Connect(function(input, gp)
    if not gp and input.UserInputType == Enum.UserInputType.MouseButton2 then
        rmbPressed = true
    end
end)
UserInputService.InputEnded:Connect(function(input, gp)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        rmbPressed = false
        currentTarget = nil
    end
end)

local function updateAimbot()
    if aimbotConn then aimbotConn:Disconnect() end
    if not aimbotEnabled then return end

    aimbotConn = RunService.RenderStepped:Connect(function()
        if not rmbPressed then return end
        local myChar = LocalPlayer.Character
        if not myChar then return end
        local myPos = Camera.CFrame.Position
        local camDir = Camera.CFrame.LookVector

        local bestTarget = nil
        local bestAngle = aimbotFOV
        local bestDist = math.huge

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and isEnemy(player) then
                local part = player.Character:FindFirstChild("Head") or player.Character:FindFirstChild("HumanoidRootPart")
                if part then
                    local dir = (part.Position - myPos).Unit
                    local angle = math.deg(math.acos(camDir:Dot(dir)))
                    if angle < bestAngle then
                        bestAngle = angle
                        bestTarget = part
                        bestDist = (part.Position - myPos).Magnitude
                    elseif angle == bestAngle and bestTarget then
                        local dist = (part.Position - myPos).Magnitude
                        if dist < bestDist then
                            bestDist = dist
                            bestTarget = part
                        end
                    end
                end
            end
        end

        if bestTarget then
            currentTarget = bestTarget
        end

        if currentTarget then
            local lookAt = CFrame.lookAt(myPos, currentTarget.Position)
            Camera.CFrame = Camera.CFrame:Lerp(lookAt, aimbotSmooth)
        end
    end)
end

-- ========== TELEPORT ==========
local teleportEnabled = false
local teleportConn
local lastTeleportTime = 0
local teleportCooldown = 2

local function smoothTeleport(root, targetPos)
    local char = root.Parent
    if not char then return end

    -- Временно отключаем коллизию
    local oldCollision = {}
    for _, part in ipairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            oldCollision[part] = part.CanCollide
            part.CanCollide = false
        end
    end

    local startPos = root.Position
    local steps = math.max(5, math.ceil((targetPos - startPos).Magnitude / 10))
    for i = 1, steps do
        if not root or not root.Parent then break end
        local t = i / steps
        local newPos = startPos:Lerp(targetPos, t)
        root.CFrame = CFrame.new(newPos)
        task.wait(0.02)
    end

    if root and root.Parent then
        root.CFrame = CFrame.new(targetPos)
    end

    task.wait(0.1)
    for part, val in pairs(oldCollision) do
        if part and part.Parent then
            part.CanCollide = val
        end
    end
end

local function updateTeleport()
    if teleportConn then teleportConn:Disconnect() end
    if not teleportEnabled then return end

    teleportConn = UserInputService.InputBegan:Connect(function(input, gp)
        if gp or input.KeyCode ~= Enum.KeyCode.Y then return end
        local now = tick()
        if now - lastTeleportTime < teleportCooldown then
            StarterGui:SetCore("SendNotification",{Title="CreatorHubX",Text="Телепорт ещё не готов",Duration=1})
            return
        end
        lastTeleportTime = now

        local myChar = LocalPlayer.Character
        if not myChar then return end
        local myRoot = myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then return end

        local target, minDist = nil, math.huge
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and isEnemy(player) then
                local part = player.Character:FindFirstChild("HumanoidRootPart")
                if part then
                    local dist = (part.Position - myRoot.Position).Magnitude
                    if dist < minDist then
                        minDist = dist
                        target = part
                    end
                end
            end
        end

        if target then
            local targetPos = target.Position + Vector3.new(0, 10, 0)
            smoothTeleport(myRoot, targetPos)
        end
    end)
end

-- ========== NOCLIP ==========
local noclipEnabled = false
local noclipConn

local function updateNoclip()
    if noclipConn then noclipConn:Disconnect() end
    if noclipEnabled then
        noclipConn = RunService.Stepped:Connect(function()
            local char = LocalPlayer.Character
            if char then
                for _, part in ipairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        local char = LocalPlayer.Character
        if char then
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end
end

-- ========== INFINITE JUMP ==========
local infJumpEnabled = false
local jumpConn

local function updateInfJump()
    if jumpConn then jumpConn:Disconnect() end
    if infJumpEnabled then
        jumpConn = UserInputService.InputBegan:Connect(function(input, gp)
            if gp or input.KeyCode ~= Enum.KeyCode.Space then return end
            local char = LocalPlayer.Character
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then
                    hum:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
    end
end

-- ========== FLY ==========
local flyEnabled = false
local flyConn
local flySpeed = 50
local flyBodyVelocity = nil

local function updateFly()
    if flyConn then flyConn:Disconnect() end
    if flyEnabled then
        local function setupFly(char)
            if not char then return end
            local root = char:FindFirstChild("HumanoidRootPart")
            if not root then return end
            if flyBodyVelocity then flyBodyVelocity:Destroy() end
            flyBodyVelocity = Instance.new("BodyVelocity")
            flyBodyVelocity.Velocity = Vector3.new(0,0,0)
            flyBodyVelocity.MaxForce = Vector3.new(4000,4000,4000)
            flyBodyVelocity.Parent = root
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.PlatformStand = true
            end
        end

        local char = LocalPlayer.Character
        if char then setupFly(char) end

        LocalPlayer.CharacterAdded:Connect(setupFly)

        flyConn = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if not char then return end
            local root = char:FindFirstChild("HumanoidRootPart")
            if not root then return end
            if not flyBodyVelocity or flyBodyVelocity.Parent ~= root then
                setupFly(char)
            end
            if flyBodyVelocity then
                local moveDir = Vector3.new(0,0,0)
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then moveDir = moveDir + Camera.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then moveDir = moveDir - Camera.CFrame.LookVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then moveDir = moveDir - Camera.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then moveDir = moveDir + Camera.CFrame.RightVector end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then moveDir = moveDir + Vector3.new(0,1,0) end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then moveDir = moveDir - Vector3.new(0,1,0) end

                if moveDir.Magnitude > 0 then
                    moveDir = moveDir.Unit * flySpeed
                end
                flyBodyVelocity.Velocity = moveDir
            end
        end)
    else
        if flyBodyVelocity then
            flyBodyVelocity:Destroy()
            flyBodyVelocity = nil
        end
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.PlatformStand = false
            end
        end
    end
end

-- ========== ANTI AFK ==========
local antiAFKEnabled = false
local afkConn

local function updateAntiAFK()
    if afkConn then afkConn:Disconnect() end
    if antiAFKEnabled then
        afkConn = RunService.Heartbeat:Connect(function()
            if tick() % 10 < 0.1 then
                Camera.CFrame = Camera.CFrame * CFrame.Angles(0, math.rad(1), 0)
            end
        end)
    end
end

-- ========== INVISIBILITY (КЛИЕНТСКАЯ) ==========
local invisEnabled = false
local invisConn

local function updateInvisibility()
    if invisConn then invisConn:Disconnect() end
    if invisEnabled then
        local function applyInvis(char)
            if not char then return end
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 1
                elseif part:IsA("Decal") then
                    part.Transparency = 1
                end
            end
            local hl = char:FindFirstChildOfClass("Highlight")
            if hl then hl:Destroy() end
        end

        local char = LocalPlayer.Character
        if char then applyInvis(char) end

        invisConn = LocalPlayer.CharacterAdded:Connect(applyInvis)
    else
        local char = LocalPlayer.Character
        if char then
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 0
                elseif part:IsA("Decal") then
                    part.Transparency = 0
                end
            end
        end
    end
end

-- ========== СБОРКА МЕНЮ ==========
createSection("SPEED")
createCheckbox(ScrollingFrame, "Speed Hack", function() return speedEnabled end, function(v) speedEnabled = v updateSpeed() end)
createSlider(ScrollingFrame, "Target Speed", 16, 200, function() return targetSpeed end, function(v) targetSpeed = v if speedEnabled then updateSpeed() end end, "")

createSection("ESP")
createCheckbox(ScrollingFrame, "ESP", function() return espEnabled end, function(v) espEnabled = v updateESP() end)

createSection("AIMBOT")
createCheckbox(ScrollingFrame, "Aimbot (RMB)", function() return aimbotEnabled end, function(v) aimbotEnabled = v updateAimbot() end)
createSlider(ScrollingFrame, "FOV", 5, 180, function() return aimbotFOV end, function(v) aimbotFOV = v end, "°")
createSlider(ScrollingFrame, "Smooth", 0.1, 1, function() return aimbotSmooth end, function(v) aimbotSmooth = v end, "")

createSection("TELEPORT")
createCheckbox(ScrollingFrame, "Teleport (Y)", function() return teleportEnabled end, function(v) teleportEnabled = v updateTeleport() end)

createSection("MOVEMENT")
createCheckbox(ScrollingFrame, "Noclip", function() return noclipEnabled end, function(v) noclipEnabled = v updateNoclip() end)
createCheckbox(ScrollingFrame, "Infinite Jump", function() return infJumpEnabled end, function(v) infJumpEnabled = v updateInfJump() end)
createCheckbox(ScrollingFrame, "Fly", function() return flyEnabled end, function(v) flyEnabled = v updateFly() end)
createSlider(ScrollingFrame, "Fly Speed", 10, 200, function() return flySpeed end, function(v) flySpeed = v end, "")

createSection("EXTRA")
createCheckbox(ScrollingFrame, "Anti AFK", function() return antiAFKEnabled end, function(v) antiAFKEnabled = v updateAntiAFK() end)
createCheckbox(ScrollingFrame, "Invisibility (клиент)", function() return invisEnabled end, function(v) invisEnabled = v updateInvisibility() end)

-- ========== АНИМАЦИЯ СВОРАЧИВАНИЯ ==========
local collapsed = false
local originalSize = MainFrame.Size
local collapseTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

CollapseBtn.MouseButton1Click:Connect(function()
    collapsed = not collapsed
    local targetSize = collapsed and UDim2.new(0, 380, 0, 50) or originalSize
    local tween = TweenService:Create(MainFrame, collapseTweenInfo, {Size = targetSize})
    tween:Play()
    CollapseBtn.Image = collapsed and "rbxassetid://3926305904" or "rbxassetid://3926305904" -- можно заменить на другую иконку
    ContentFrame.Visible = not collapsed
end)

CloseBtn.MouseButton1Click:Connect(function()
    updateSpeed(false); updateESP(false); updateAimbot(false); updateTeleport(false)
    updateNoclip(false); updateInfJump(false); updateFly(false); updateAntiAFK(false); updateInvisibility(false)
    ScreenGui:Destroy()
end)

UIList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ScrollingFrame.CanvasSize = UDim2.new(0,0,0, UIList.AbsoluteContentSize.Y + 10)
end)

-- Запуск
updateSpeed()
updateESP()
updateAimbot()
updateTeleport()
updateNoclip()
updateInfJump()
updateFly()
updateAntiAFK()
updateInvisibility()

StarterGui:SetCore("SendNotification",{Title="CreatorHubX",Text="Загружено! Y - телепорт, ПКМ - аимбот",Duration=5})
print("CreatorHubX Ultimate loaded")
