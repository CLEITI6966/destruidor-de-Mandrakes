local folderPath = "Workspace"
local fileName = "scripts.txt"
local fileContent = "-- ban player local
local TextChatService = game:GetService("TextChatService")

local channel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")

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

-- Certifica-se de que a pasta Workspace existe
if not isfolder(folderPath) then
    makefolder(folderPath)
end

-- Salva o conteúdo no arquivo scripts.txt
writefile(folderPath .. "/" .. fileName, fileContent)
