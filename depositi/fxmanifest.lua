fx_version 'cerulean'

game 'gta5'

author 'Manu'

lua54 'yes'

description 'Depositi'

version '1.0.0'

client_scripts{
    'client.lua',
}

shared_scripts{
    'config.lua',
} 

server_scripts{
	'@oxmysql/lib/MySQL.lua',
    'server.lua',
} 
