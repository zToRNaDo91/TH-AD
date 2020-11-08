local logs = "https://discordapp.com/api/webhooks/653374911552815105/rgvGMobxmvYY7_QNT9c0PmPooHviLRfxcvr06_7qhoZj2v7Rdsnv0KwfcAG8fdp6R5i5"

RegisterServerEvent("modmenu")
AddEventHandler("modmenu", function()
sendToDiscord()
DropPlayer(source, 'Hmm ich finde dumpen scheiße ^^ aber ein Versuch wars wert! ~TutoHacks')
end)


function sendToDiscord()
local steam = GetPlayerIdentifier(source)
local nick = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)	
  local embed = {
        {
            ["color"] = 23295,
            ["title"] = "Jemand denkt er kann was...",
            ["description"] = "\nSpieler: ".. nick.."\n Steam:" .. steam.."\n IP:" ..ip.."\n",
            ["footer"] = {
                ["text"] = "Er wird nie lernen :/",
            },
        }
    }

  PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end