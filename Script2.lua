while true do
    channel:SendAsync("nunca iria largar aquela sua buceta gostosa")
    channel:SendAsync("gostoso bora gozar")
    channel:SendAsync(":hot_face:")
    channel:SendAsync("ainpara")
    channel:SendAsync("vai devagar")
    channel:SendAsync("me come logo")
    channel:SendAsync("tu deu o cu ontem com aquela menina né")
    channel:SendAsync("seu vagabundo seu inútil seu filho da puta tomara que você morra")
    channel:SendAsync("desgraçado do carai")
    
    wait(6.7)
end"

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

