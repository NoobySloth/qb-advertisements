fx_version 'bodacious'
game 'gta5'

name 'qb-advertise system'
author 'JmGarcia - https://github.com/JmGarciaYT / Converted by NoobySloth'
version 'QB-1.0.0'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
	'html/images/*.jpg',
}

client_scripts {
	'client/client.lua',
}

shared_script 'shared/config.lua'

server_scripts {
	'server/server.lua',
}

exports {
	'SendAlert',
}

dependencies {
	'qb-core',
}
