CreateThread(function()
    while not Config.CanCheck() do
        Wait(1000)
    end

    local firstPos
    local lastPos
    local dist

    ::loop::
        firstPos = GetEntityCoords(PlayerPedId())
        Wait(Config.CheckInterval)
        lastPos = GetEntityCoords(PlayerPedId())
        dist = #(vector3(firstPos.x, firstPos.y, firstPos.z) - vector3(lastPos.x, lastPos.y, lastPos.z))

        if dist <= Config.CheckDistance and Config.CanKick() then
            TriggerServerEvent('zrx_afkkick:server:kickPlayer', Strings.reason)
        end
    goto loop
end)