local function sendNotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 3
    })
end

if game.PlaceId == 10518166490 then
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kavalvesergeevic-spec/Armoded-Patrol-Script/main/ArmodedPatrol.lua"))()
    end)
    if success then
        sendNotification("CreatorHubX", "Скрипт загружен!")
    else
        sendNotification("CreatorHubX", "Ошибка: " .. tostring(err))
    end
else
    sendNotification("CreatorHubX", "❌ Запусти ARMORED PATROL!")
end
