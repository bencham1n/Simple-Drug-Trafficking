fx_version 'cerulean'
game 'gta5'

author 'benjamin'
description 'vacsi heist?'
version '1.0.0'
lua54 'yes'

-- co bude bezat xd
client_scripts {
    "client.lua",
}
server_script 'server.lua'


shared_scripts {
    '@ox_lib/init.lua',
}
shared_script 'config.lua'


dependencies {
    'es_extended',
    'ox_lib',
    'ox_target'
}
