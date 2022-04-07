fx_version 'bodacious'
game 'gta5'

name 'qb-advertise system'
author 'NoobySloth'
version '1.1.0'

client_scripts {
	'client/client.lua',
}

shared_scripts {
	'@qb-core/shared/locale.lua',
	'locales/en.lua',
	'shared/config.lua',
}
server_scripts {
	'server/server.lua',
}


dependencies {
	'qb-core',
	'qb-phone'
}
