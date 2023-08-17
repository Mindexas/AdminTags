fx_version 'adamant'
author 'Mindexas'
games {'common'}

client_scripts {
    'config/config.lua',
    'client/main.lua'
}

server_scripts {
    'config/config.lua',
    'server/main.lua'
}

server_scripts { '@mysql-async/lib/MySQL.lua' }
