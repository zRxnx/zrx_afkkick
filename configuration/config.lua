local seconds, minutes, hours = 1000, 60000, 3600000
Config = {}

Config.CheckInterval = 10 * minutes --| Check Interval to get kicked
Config.CheckDistance = 5.0 --| Check Distance to be kicked
--| Discord Webhook in 'server/server.lua'

--| When should the check start?
Config.CanCheck = function()
    return true
end

--| When can be the player kicked?
Config.CanKick = function()
	return true
end