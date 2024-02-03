
local ox_inventory = exports.ox_inventory

AddEventHandler('onServerResourceStart', function(resourceName)
	if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
		for k,i in pairs(Config.Depositi) do
			ox_inventory:RegisterStash(k,"Inventario: "..i.nome, i.slot, i.peso * 1000, false, i.lavoro)
		end
	end
end)