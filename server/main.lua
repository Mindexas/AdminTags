-- rcore.cz
-- Some-RP.cz
-- forum.some-rp.cz

ESX = nil
AdminPlayers = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand(Config.CommandName, function(source,args)
    local xPlayer = ESX.GetPlayerFromId(source)
    local steamhex = GetPlayerIdentifiers(source)[1]
    local playerRank = Config.StaffIds[steamhex]

    if AdminPlayers[source] == nil then
        if Config.TagByPermission then
            AdminPlayers[source] = {source = source, permission = xPlayer.getPermissions(), rank = playerRank}
        else
            AdminPlayers[source] = {source = source, group = xPlayer.getGroup(), rank = playerRank}
        end

        TriggerClientEvent('chat:addMessage',source, { args = {'[Server]', 'You have enabled your admin tag' }, color = { 53, 154, 71 } })
    else
        AdminPlayers[source] = nil
        TriggerClientEvent('chat:addMessage',source, { args = {'[Server]', 'You have disabled your admin tag' }, color = { 53, 154, 71 } })
    end
    TriggerClientEvent('mdx-dev:set_admins',-1,AdminPlayers)
end)

ESX.RegisterServerCallback('mdx-dev:getAdminsPlayers',function(source,cb)
    cb(AdminPlayers)
end)

AddEventHandler('esx:playerDropped', function(source)
    if AdminPlayers[source] ~= nil then
        AdminPlayers[source] = nil
    end
    TriggerClientEvent('mdx-dev:set_admins',-1,AdminPlayers)
end)
