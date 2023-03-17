local seconds, minutes, hours = 1000, 60000, 3600000
Config = {}

--| Discord Webhook in 'server/server.lua'
Config.CheckInterval = 10 * minutes --| Check Interval to get kicked
Config.CheckDistance = 5.0 --| Check Distance to be kicked

--| Client - When should the check start?
Config.CanCheck = function()
    return true
end

--| Client/Server - When can be the player kicked?
Config.CanKick = function()
    if IsDuplicityVersion() then
        return true
    else
        return true
    end
end