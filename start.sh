#! /bin/bash
PERSISTENT_STORAGE_ROOT=${PERSISTENT_STORAGE_ROOT:-/usr/games/.klei}
CLUSTER=${CLUSTER:-Cluster_1}
SHARD=${SHARD:-Master}
CONF_DIR=${CONF_DIR:-DoNotStarveTogether}
set +x
mkdir -p ${PERSISTENT_STORAGE_ROOT}/${CONF_DIR}/${CLUSTER}/${SHARD}
echo -e "${SERVER_TOKEN}\0" > ${PERSISTENT_STORAGE_ROOT}/${CONF_DIR}/${CLUSTER}/cluster_token.txt
curl -L -o ${PERSISTENT_STORAGE_ROOT}/${CONF_DIR}/${CLUSTER}/cluster.ini ${CLUSTER_SETTINGS_URL}
if [ -z ${ADMIN_LIST_URL+x} ]; then
curl -L -o ${PERSISTENT_STORAGE_ROOT}/${CONF_DIR}/${CLUSTER}/adminlist.txt ${ADMIN_LIST_URL}
fi
/usr/games/dontstarvetogether/bin/dontstarve_dedicated_server_nullrenderer \
-persistent_storage_root ${PERSISTENT_STORAGE_ROOT} \
-conf_dir ${CONF_DIR} \
-cluster ${CLUSTER} \
-shard ${SHARD}

