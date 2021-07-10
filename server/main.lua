ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback("5City-Doorlocki:server:get:config", function(source, cb)
    cb(Config)
end)

RegisterServerEvent('5City-Doorlocki:server:change:door:looks')
AddEventHandler('5City-Doorlocki:server:change:door:looks', function(Door, Type)
 TriggerClientEvent('5City-Doorlocki:client:change:door:looks', -1, Door, Type)
end)

RegisterServerEvent('5City-Doorlocki:server:reset:door:looks')
AddEventHandler('5City-Doorlocki:server:reset:door:looks', function()
 TriggerClientEvent('5City-Doorlocki:client:reset:door:looks', -1)
end)

RegisterServerEvent('5City-Doorlocki:server:updateState')
AddEventHandler('5City-Doorlocki:server:updateState', function(doorID, state)
 Config.Doors[doorID]['Locked'] = state
 TriggerClientEvent('5City-Doorlocki:client:setState', -1, doorID, state)
end)