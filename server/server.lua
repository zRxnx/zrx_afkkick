WEBHOOK = ''

RegisterNetEvent('zrx_afkkick:server:kickPlayer', function(reason)
    if Config.CanKick() then
        DiscordLog(source, Strings.logTitle, reason)
        DropPlayer(source, reason)
    end
end)