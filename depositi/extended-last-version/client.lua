ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    Wait(250)

    for k, i in pairs(Config.Depositi) do

        TriggerEvent('gridsystem:registerMarker', {
            name = 'inventario'.. k,
            pos = i.posizione,
            scale = i.scale,
            msg = 'Premi ~g~[E]~w~ per aprire ~b~'..i.nome .. '~w~',
            control = 'E',
            color = i.colore,
            type = i.type,
            permission = i.lavoro,
            action = function()
                if ESX.PlayerData.job.grade >= i.grado_minimo then
                    exports.ox_inventory:openInventory('stash', k)
                end
            end
        })

    end

end)