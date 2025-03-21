local text = Config.Action1
local text2 = Config.Action2
local text3 = Config.Action3
local name1 = Config.name1
local des1 = Config.desc1
local des2 = Config.desc2
local des3 = Config.desc3
local policeCount = policeCount

ESX = exports['es_extended']:getSharedObject()


    local reqpolice = Config.reqpolice
    local reqpolice2 = Config.reqpolice2
    local reqpolice3 = Config.reqpolice3
    local reqpolice4 = Config.reqpolice4


    RegisterNetEvent('updatePoliceStatus')
    AddEventHandler('updatePoliceStatus', function(policeCount)
        local statusIcon1 = policeCount >= Config.reqpolice and '🟢' or '🔴'
        local statusIcon2 = policeCount >= Config.reqpolice2 and '🟢' or '🔴'
        local statusIcon3 = policeCount >= Config.reqpolice3 and '🟢' or '🔴'
    
        lib.registerContext({
            id = 'pdcountbenjaminkis',
            title = Config.name1,
            options = {
                {
                    title = Config.Action1 .. ' ' .. statusIcon1,
                    disabled = true,
                    icon = 'sack-dollar',
                    description = Config.desc1
                },
                {
                    title = Config.Action2 .. ' ' .. statusIcon2,
                    disabled = true,
                    icon = 'sack-dollar',
                    description = Config.desc2
                },
                {
                    title = Config.Action3 .. ' ' .. statusIcon3,
                    disabled = true,
                    icon = 'sack-dollar',
                    description = Config.desc3
                }
                  --{
                   -- title = Config.Action3 .. ' ' .. statusIcon3,
                    --disabled = true,
                   -- icon = 'sack-dollar',
                    --description = Config.desc3
               -- }
            }
        })
    
        lib.showContext('pdcountbenjaminkis')
    end)
    
    RegisterCommand('pdcount', function()
        TriggerServerEvent('requestPoliceCount')
    end, false)
