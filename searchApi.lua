local HttpService = game:GetService("HttpService")
-- universal exploit api
loadstring(game:HttpGet("https://raw.githubusercontent.com/LoukaMB/SynapseX/master/script/compatibility_layer.lua",false))
local requestAsync = http_request or syn.request or request
api = {}

api.parseSearch = function (searchTerm)
    searchTerm = string.gsub(searchTerm," ","+")
    local searchResult = requestAsync({
        Url = "https://duckduckgo.com/lite/";
        Method = "Post";
        Header = {
            ["Content Type"] = "application/x-www-form-urlencoded";

        };
        -- TODO : SUPPORT MULTIPLE PAGE. IT SHOULD BE EASY TO DO
        Body = "q=site%3Apastebin.com+" .. searchTerm 
    })
    tostring(searchResult)
    local paste = {}
    for k,v in string.gsub(searchResult,"https://www.pastebin.com/[%a-%d]") do
        table.insert(paste,#paste+1,k)
    end
    print(repr(paste))
end

api.parseSearch("infinite yield")