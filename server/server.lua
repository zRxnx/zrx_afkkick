WEBHOOK = ''

RegisterNetEvent('zrx_afkkick:server:kickPlayer', function(reason)
    DiscordLog(source, Strings.logTitle, reason)
    DropPlayer(source, reason)
end)