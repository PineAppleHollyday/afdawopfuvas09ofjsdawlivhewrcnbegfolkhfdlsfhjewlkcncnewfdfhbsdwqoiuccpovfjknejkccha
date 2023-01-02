local ment2 = game:HttpGet("http://mentemntment.p-e.kr/")
local qudtls = (ment2):split(":")

for _, v in pairs(qudtls) do
        wait(3)
        print(v)
        local ohString2 = "All"
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v, ohString2)
end
