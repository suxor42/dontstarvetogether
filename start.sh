#! /bin/bash
echo -e "${SERVER_TOKEN}\0" > /usr/games/.klei/DoNotStarveTogether/server_token.txt
curl -L -o /usr/games/.klei/DoNotStarveTogether/settings.ini ${SETTINGS_URL}
/usr/games/dontstarvetogether/bin/dontstarve_dedicated_server_nullrenderer

