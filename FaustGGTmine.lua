local Players = game:GetService("Players")
local RunService = game:GetService("RunState")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
   Name = "FaustBrook",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "plz roka",
   LoadingSubtitle = "by FaustGGT",
   ShowText = "FaustGGT", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Misc", 4483362458) -- Title, Image


local Button = Tab:CreateButton({
   Name = "Tp all car",
   Callback = function()
   -- Скрипт для телепорта машин к игроку
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local function teleportVehiclesToPlayer(player)
    local vehiclesFolder = Workspace:FindFirstChild("Vehicles")
    
    if not vehiclesFolder then
        warn("Папка Vehicles не найдена!")
        return
    end
    
    local character = player.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    for _, vehicle in ipairs(vehiclesFolder:GetChildren()) do
        if vehicle:IsA("Model") then
            local primaryPart = vehicle.PrimaryPart or vehicle:FindFirstChildWhichIsA("Body")
            if primaryPart then
                -- Телепортируем машину к игроку со смещением
                local offset = Vector3.new(math.random(-10, 10), 0, math.random(-10, 10))
                vehicle:SetPrimaryPartCFrame(CFrame.new(humanoidRootPart.Position + offset))
            end
        end
    end
end

-- Пример использования
local player = Players.LocalPlayer
teleportVehiclesToPlayer(player)
   end,
})


local Button2 = Tab:CreateButton({
   Name = "Delete car zone (Not work, update soon)",
   Callback = function()
   -- Скрипт для удаления NoCarsRegions только для локального игрока
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

-- Функция для удаления NoCarsRegions из ReplicatedStorage для локального игрока
local function removeNoCarsRegionsForLocalPlayer()
    local noCarsRegions = ReplicatedStorage:FindFirstChild("NoCarsRegions")
    
    if noCarsRegions then
        -- Удаляем объект только для этого игрока
        noCarsRegions:Destroy()
        print("NoCarsRegions удалены для локального игрока")
    else
        warn("NoCarsRegions не найдены в ReplicatedStorage")
    end
end

-- Вызываем функцию
removeNoCarsRegionsForLocalPlayer()
   end,
})

local Button3 = Tab:CreateButton({
   Name = "Teleport all Turkeys",
   Callback = function()
   -- Скрипт для телепортации индеек к игроку
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer

local function teleportTurkeysToPlayer()
    local turkeysFolder = Workspace:FindFirstChild("ThanksgivingTurkeys")
    
    if not turkeysFolder then
        warn("Папка ThanksgivingTurkeys не найдена в Workspace!")
        return
    end
    
    local character = player.Character
    if not character then
        warn("Персонаж игрока не найден!")
        return
    end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then
        warn("HumanoidRootPart не найден!")
        return
    end
    
    for _, turkey in ipairs(turkeysFolder:GetChildren()) do
        if turkey:IsA("Model") then
            local primaryPart = turkey.PrimaryPart or turkey:FindFirstChildWhichIsA("BasePart")
            if primaryPart then
                -- Телепортируем индейку к игроку со случайным смещением
                local offset = Vector3.new(
                    math.random(-5, 5),
                    0,
                    math.random(-5, 5)
                )
                primaryPart.CFrame = CFrame.new(humanoidRootPart.Position + offset)
                print("Индейка телепортирована к игроку: " .. turkey.Name)
            end
        end
    end
    
    print("Все индейки телепортированы к игроку!")
end

-- Запускаем функцию
teleportTurkeysToPlayer()
   end,
})

local TPTab = Window:CreateTab("TP", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "R6 Player",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua", true))()
   end,
})

local Button = TPTab:CreateButton({
   Name = "TP to Mall",
   Callback = function()
   -- Скрипт для телепорта игрока к объекту
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer

local function teleportPlayerToObject()
    -- Находим целевой объект
    local targetObject = Workspace:FindFirstChild("Mall")
    if targetObject then
        targetObject = targetObject:FindFirstChild("PlazaDesign")
    end
    
    if not targetObject then
        warn("Объект workspace.Mall.PlazaDesign не найден!")
        return
    end
    
    -- Ждем появления персонажа
    local character = player.Character
    if not character then
        character = player.CharacterAdded:Wait()
    end
    
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- Получаем позицию целевого объекта
    local targetPosition
    if targetObject:IsA("Model") then
        local primaryPart = targetObject.PrimaryPart or targetObject:FindFirstChildWhichIsA("BasePart")
        if primaryPart then
            targetPosition = primaryPart.Position
        end
    elseif targetObject:IsA("BasePart") then
        targetPosition = targetObject.Position
    end
    
    if targetPosition then
        -- Телепортируем игрока
        humanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0))
        print("Игрок телепортирован к PlazaDesign!")
    else
        warn("Не удалось найти позицию для телепорта")
    end
end

-- Вызываем телепорт
teleportPlayerToObject()
   end,
})

local Button = TPTab:CreateButton({
   Name = "TP to base airport",
   Callback = function()
   -- Скрипт: Плавный полёт к столу "864" в модели "AirportNew"
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local airportModel = workspace:FindFirstChild("Model") and workspace.Model:FindFirstChild("AirportNew")
if not airportModel then
    warn("AirportNew модель не найдена!")
    return
end

local deskPart = airportModel:FindFirstChild("864")
if not deskPart then
    warn('Стол "864" не найден в модели AirportNew.')
    return
end

-- Плавное перемещение
local targetPosition = deskPart.Position + Vector3.new(0, 5, 0) -- немного выше поверхности

local tweenInfo = TweenInfo.new(
    5, -- время анимации (5 секунд)
    Enum.EasingStyle.Sine,
    Enum.EasingDirection.Out
)

local tween = TweenService:Create(humanoidRootPart, tweenInfo, {
    CFrame = CFrame.new(targetPosition)
})

-- Включаем возможность "лететь сквозь стены" (BodyVelocity)
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
bodyVelocity.Velocity = Vector3.new(0, 0, 0)
bodyVelocity.Parent = humanoidRootPart

tween.Completed:Connect(function()
    -- Убираем BodyVelocity после завершения
    bodyVelocity:Destroy()
end)

tween:Play()
   end,
})

local Button = TPTab:CreateButton({
   Name = "TP to Farm",
   Callback = function()
   -- Скрипт: Плавный полёт к парту "Roof" в модели workspace.Model.Barn.Barn
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Путь: workspace.Model.Barn.Barn
local barnModel = workspace:FindFirstChild("Model") and workspace.Model:FindFirstChild("Barn")
if not barnModel then
    warn("Модель Barn не найдена!")
    return
end

local innerBarn = barnModel:FindFirstChild("Barn")
if not innerBarn then
    warn("Внутренняя модель Barn.Barn не найдена!")
    return
end

local roofPart = innerBarn:FindFirstChild("Roof")
if not roofPart then
    warn('Парт "Roof" не найден в модели Barn.Barn.')
    return
end

-- Плавное перемещение к "Roof"
local targetPosition = roofPart.Position + Vector3.new(0, 5, 0) -- немного выше поверхности

local tweenInfo = TweenInfo.new(
    5, -- время анимации (5 секунд)
    Enum.EasingStyle.Sine,
    Enum.EasingDirection.Out
)

local tween = TweenService:Create(humanoidRootPart, tweenInfo, {
    CFrame = CFrame.new(targetPosition)
})

-- Включаем BodyVelocity для "летающего" эффекта
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
bodyVelocity.Velocity = Vector3.new(0, 0, 0)
bodyVelocity.Parent = humanoidRootPart

tween.Completed:Connect(function()
    -- Убираем BodyVelocity после завершения
    bodyVelocity:Destroy()
end)

tween:Play()
   end,
})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- Переменные для ESP
local ESPEnabled = false
local ESPBoxes = {}

local function WorldToViewportPoint(pos)
    return Camera:WorldToViewportPoint(pos)
end

local function CreateBox()
    local box = Drawing.new("Square")
    box.Size = Vector2.new(100, 100)
    box.Position = Vector2.new(0, 0)
    box.Color = Color3.fromRGB(255, 0, 0) -- Красный
    box.Thickness = 2
    box.Filled = false
    return box
end

local function UpdateESP()
    if not ESPEnabled then
        for _, box in pairs(ESPBoxes) do
            box:Remove()
        end
        table.clear(ESPBoxes)
        return
    end

    for _, box in pairs(ESPBoxes) do
        box:Remove()
    end
    table.clear(ESPBoxes)

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local root = player.Character.HumanoidRootPart
            local pos, onScreen = WorldToViewportPoint(root.Position)

            if onScreen then
                local size = root.Size
                local halfX = size.X / 2
                local halfZ = size.Z / 2

                local topLeft, _ = WorldToViewportPoint(root.CFrame * CFrame.new(-halfX, size.Y / 2, -halfZ).Position)
                local bottomRight, _ = WorldToViewportPoint(root.CFrame * CFrame.new(halfX, -size.Y / 2, halfZ).Position)

                local x1, y1 = topLeft.X, topLeft.Y
                local x2, y2 = bottomRight.X, bottomRight.Y

                local box = CreateBox()
                box.Size = Vector2.new(x2 - x1, y2 - y1)
                box.Position = Vector2.new(x1, y1)
                box.Visible = true

                table.insert(ESPBoxes, box)
            end
        end
    end
end

local RageTab = Window:CreateTab("Rage", 4483362458) -- Title, Image

-- Переключатель ESP
local Toggle = RageTab:CreateToggle({
   Name = "ESP Toggle",
   CurrentValue = false,
   Flag = "ESPToggle",
   Callback = function(Value)
      ESPEnabled = Value
      if ESPEnabled then
          RunService.Heartbeat:Connect(UpdateESP)
          Camera:GetPropertyChangedSignal("CFrame"):Connect(UpdateESP)
      else
          for _, box in pairs(ESPBoxes) do
              box:Remove()
          end
          table.clear(ESPBoxes)
      end
   end
})

local SpinEnabled = false
local SpinSpeed = 30 -- градусы в секунду
local SpinConnection = nil
local JumpConnection = nil

-- Функция спина
local function Spin()
    if SpinEnabled then
        rootPart.CFrame = rootPart.CFrame * CFrame.Angles(0, math.rad(SpinSpeed), 0)
    end
end

-- Авто-прыжок при движении
local function AutoJump()
    if SpinEnabled and humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
        humanoid.Jump = true
    end
end

-- Переключатель для спина + банихоп
local Toggle = RageTab:CreateToggle({
   Name = "Spin",
   CurrentValue = false,
   Flag = "SpinBHopToggle",
   Callback = function(Value)
      SpinEnabled = Value

      if SpinEnabled then
          -- Подключаем спины и прыжки
          SpinConnection = RunService.Heartbeat:Connect(Spin)
          JumpConnection = RunService.Heartbeat:Connect(AutoJump)
      else
          -- Отключаем всё
          if SpinConnection then
              SpinConnection:Disconnect()
          end
          if JumpConnection then
              JumpConnection:Disconnect()
          end
      end
   end

})

local gun_enabled = false
local swastika_parts = {}
local Toggle = RageTab:CreateToggle({
    Name = "Swastika Tool",
    CurrentValue = false,
    Flag = "SwastikaGunToggle",
    Callback = function(Value)
        gun_enabled = Value
        local player = game.Players.LocalPlayer
        local character = player.Character
        if not character then return end
        local rightHand = character:FindFirstChild("RightHand")
        if not rightHand then return end
        if Value then
            local positions = {
                CFrame.new(0, 0, 0),
                CFrame.new(0.5, 0, 0),
                CFrame.new(-0.5, 0, 0),
                CFrame.new(0, 0.5, 0),
                CFrame.new(0, -0.5, 0),
                CFrame.new(0.5, 0.5, 0),
                CFrame.new(-0.5, -0.5, 0),
                CFrame.new(0.5, -0.5, 0),
                CFrame.new(-0.5, 0.5, 0)
            }
            for i = 1, 9 do
                local part = Instance.new("Part")
                part.Name = "SwastikaPart" .. i
                part.Size = Vector3.new(0.3, 0.3, 0.3)
                part.Color = Color3.new(0, 0, 0)
                part.Material = Enum.Material.SmoothPlastic
                part.CanCollide = false
                part.Anchored = false
                part.CFrame = rightHand.CFrame * positions[i]
                part.Parent = character
                table.insert(swastika_parts, part)
            end
            spawn(function()
                while gun_enabled and character and character.Parent do
                    task.wait(0.01)
                    if not character:FindFirstChild("RightHand") then break end
                    for j = 1, #swastika_parts do
                        if swastika_parts[j] and swastika_parts[j]:IsDescendantOf(game) then
                            swastika_parts[j].CFrame = character.RightHand.CFrame * positions[j]
                        end
                    end
                end
            end)
        else
            for _, part in pairs(swastika_parts) do
                if part and part.Parent then
                    part:Destroy()
                end
            end
            swastika_parts = {}
        end
    end
})
