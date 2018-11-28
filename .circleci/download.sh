KEYSTORE_DOWNLOAD_URL = https://dl-web.dropbox.com/get/my-release-key.keystore?_download_id=7966538019847318011584716006988183746337355462519207649983757680623&_notify_domain=www.dropbox.com&_subject_uid=1722250576&dl=1&revision_id=BMawIaqHFwAcPle0pJtvVSAIgC0IumiPnIi9-DAku4fScceKNNUGGtkIH5r7Y_1b8dr9GgqYw7AOQeTXvZDpQUZZKAXI1k5iW2LWKgEHmT10wl0Ry6eQJxiKIKa4ZMkqxfU&w=AADNW9HGdnwq95ejNepGUQSx4EHze79M1pRtUnozZ7cAaA

if [[ $KEYSTORE && ${KEYSTORE} && $KEYSTORE_DOWNLOAD_URL && ${KEYSTORE_DOWNLOAD_URL} ]]
then
    echo "Keystore detected - downloading..."
    # we're using curl instead of wget because it will not
    # expose the sensitive uri in the build logs:
    curl -L -o ${KEYSTORE} ${KEYSTORE_DOWNLOAD_URL}
else
    echo "Keystore uri not set.  .APK artifact will not be signed."
fi