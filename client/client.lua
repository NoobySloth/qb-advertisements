local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-advertisement:SendEmail', function(job, msg)
    SetTimeout(math.random(2500, 4000), function()
        local gender = Lang:t('info.mr')
        if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then
            gender = Lang:t('info.mrs')
        end
        local charinfo = QBCore.Functions.GetPlayerData().charinfo
        TriggerServerEvent('qb-phone:server:sendNewMail', {
			sender = job,
			subject = Lang:t('mail.subject'),
			message = Lang:t('mail.message', {gender = gender, lastname = charinfo.lastname, announcement = msg}),
			button = {}
		})
    end)
end)