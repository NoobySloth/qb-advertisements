local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('adlspd', 'Advertise LSPD', {{name = 'message', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local message = table.concat(args, " ")
	if Player.PlayerData.job.name == 'police' then
		if balance >= Config.PoliceCost then
			Player.Functions.RemoveMoney("bank", Config.PoliceCost, "Police Advertisement")
			TriggerClientEvent('qb-announce:client:SendAlert', -1, { type = 'lspd', text = message})
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not Police', "error")
    end
end)

QBCore.Commands.Add('adems', 'Advertise EMS', {{name = 'message', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local message = table.concat(args, " ")
	if Player.PlayerData.job.name == 'ambulance' then
		if balance >= Config.EmsCost then
			Player.Functions.RemoveMoney("bank", Config.EmsCost, "EMS Advertisement")
			TriggerClientEvent('qb-announce:client:SendAlert', -1, { type = 'ems', text = message})
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not EMS', "error")
    end
end)

QBCore.Commands.Add('admechanic', 'Advertise Mechanic', {{name = 'message', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local message = table.concat(args, " ")
	if Player.PlayerData.job.name == 'mechanic' then
		if balance >= Config.MechanicCost then
			Player.Functions.RemoveMoney("bank", Config.MechanicCost, "Mechanic Advertisement")
			TriggerClientEvent('qb-announce:client:SendAlert', -1, { type = 'mechanic', text = message})
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not a Mechanic', "error")
    end
end)

QBCore.Commands.Add('adtaxi', 'Advertise Taxi', {{name = 'message', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local message = table.concat(args, " ")
	if Player.PlayerData.job.name == 'taxi' then
		if balance >= Config.TaxiCost then
			Player.Functions.RemoveMoney("bank", Config.TaxiCost, "Taxi Advertisement")
			TriggerClientEvent('qb-announce:client:SendAlert', -1, { type = 'taxi', text = message})
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not a Taxi driver', "error")
    end
end)

