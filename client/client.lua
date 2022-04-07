RegisterNetEvent('qb-announce:client:SendAlert')
AddEventHandler('qb-announce:client:SendAlert', function(data)
	SendAlert(data.type, data.text, data.length, data.style)
end)

function SendAlert(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = length,
		style = style
	})
end
