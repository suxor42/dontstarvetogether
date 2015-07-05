#! /bin/bash
echo -e "${SERVER_TOKEN}\0" > /data/DoNotStarveTogether/server_token.txt
curl -L -o /data/DoNotStarveTogether/settings.ini ${SETTINGS_URL}
/usr/games/dontstarvetogether/bin/dontstarve_dedicated_server_nullrenderer -persistent_storage_root /data

