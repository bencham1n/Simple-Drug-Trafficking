ESX = exports['es_extended']:getSharedObject()

local policejob = Config.policejob

RegisterNetEvent('requestPoliceCount')
AddEventHandler('requestPoliceCount', function()
    local src = source
    local players = ESX.GetExtendedPlayers('job', policejob)
    local policeCount = #players
    
    TriggerClientEvent('updatePoliceStatus', src, policeCount)
end)
