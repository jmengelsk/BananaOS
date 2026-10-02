echo "- downloading OTA base zip"
mkdir ./Samsung
curl -C - -Lo ./Samsung/target_base.zip https://sourceforge.net/projects/bananaos/files/Samsung/3.2.x/target/$TARGET_CODENAME-target_base.zip/download
