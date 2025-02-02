wait(5)

local soundId = "rbxassetid://9043346124"
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Looped = true
sound.Volume = 2
sound.Parent = game.Workspace
sound:Play()

-- Kick no jogador local com erro 1001
game.Players.LocalPlayer:Kick("Error 1001: Someone has discovered your location, run urgently.")

-- Função para reiniciar o jogo após 8 segundos
wait(8)
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
