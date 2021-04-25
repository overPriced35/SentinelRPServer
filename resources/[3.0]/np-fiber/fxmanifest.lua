fx_version "bodacious"

games { "gta5" }

description "NoPixel Fiber"

version "0.1.0"

ui_page 'nui/index.html'

files {
    'nui/**/*',
}

server_scripts {
    "server/*.js",
}

client_scripts {
    "client/*.js",
}
