fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description "Add a custom menu in your server"
author "OXY3N STUDIO"
version "1.0.0"

client_script {
    'client/main.lua'
}

server_scripts {
    'server/s_versioncheck.lua'
}

shared_scripts {
    'shared/config.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/style.css'
}
