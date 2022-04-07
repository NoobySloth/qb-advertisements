local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('adlspd', 'LSPD Announcement', {{name = 'msg', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local msg = table.concat(args, " ")
	if Player.PlayerData.job.name == 'police' then
		if balance >= Config.PoliceCost then
			local job = Lang:t('job.police')
			Player.Functions.RemoveMoney("bank", Config.PoliceCost, "Police Advertisement")
			TriggerClientEvent('qb-advertisement:SendEmail', -1, job, msg)
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not Police', "error")
    end
end)

QBCore.Commands.Add('adems', 'EMS Announcement', {{name = 'msg', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local msg = table.concat(args, " ")
	if Player.PlayerData.job.name == 'ambulance' then
		if balance >= Config.EmsCost then
			local job = Lang:t('job.ems')
			Player.Functions.RemoveMoney("bank", Config.EmsCost, "EMS Advertisement")
			TriggerClientEvent('qb-advertisement:SendEmail', -1, job, msg)
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not EMS', "error")
    end
end)

QBCore.Commands.Add('admechanic', 'Mechanic Announcement', {{name = 'msg', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local msg = table.concat(args, " ")
	if Player.PlayerData.job.name == 'mechanic' then
		if balance >= Config.MechanicCost then
			local job = Lang:t('job.mechanic')
			Player.Functions.RemoveMoney("bank", Config.MechanicCost, "Mechanic Advertisement")
			TriggerClientEvent('qb-advertisement:SendEmail', -1, job, msg)
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not a Mechanic', "error")
    end
end)

QBCore.Commands.Add('adtaxi', 'Taxi Announcement', {{name = 'msg', help = 'Enter your advertisement message.'}}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
    local balance = Player.Functions.GetMoney("bank")
	local msg = table.concat(args, " ")
	if Player.PlayerData.job.name == 'taxi' then
		if balance >= Config.TaxiCost then
			local job = Lang:t('job.taxi')
			Player.Functions.RemoveMoney("bank", Config.TaxiCost, "Taxi Advertisement")
			TriggerClientEvent('qb-advertisement:SendEmail', -1, job, msg)
		else
			TriggerClientEvent('QBCore:Notify', source, 'You do not have enough money for this', "error")
		end
	else
		TriggerClientEvent('QBCore:Notify', source, 'You are not a Taxi driver', "error")
    end
end)

