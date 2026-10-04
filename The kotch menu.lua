--// Rayfield Custom Kick Menu

local Rayfield = loadstring(game:HttpGet(
    "https://sirius.menu/rayfield"
))()

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Window = Rayfield:CreateWindow({
    Name = "The kotch kick",
    LoadingTitle = "The kotch kick",
    LoadingSubtitle = "By kupa scripts",
    ConfigurationSaving = {
        Enabled = false
    }
})

local MainTab = Window:CreateTab("Главная", 4483362458)

local code = ""

local CodeInput = MainTab:CreateInput({
    Name = "Код",
    PlaceholderText = "Введите код",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        code = Text
    end
})

MainTab:CreateButton({
    Name = "Кик",
    Callback = function()
        local reason = code ~= "" and code or "Вы были отключены"
        Player:Kick(reason)
    end
})

MainTab:CreateButton({
    Name = "Сбросить",
    Callback = function()
        code = ""
        CodeInput:Set("")
    end
})

Rayfield:Notify({
    Title = "Готово",
    Content = "Меню успешно загружено",
    Duration = 3
})
