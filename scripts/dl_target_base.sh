echo "- downloading OTA base zip"
mkdir ./Samsung
cd ./Samsung
curl -C - -LO https://sourceforge.net/projects/bananaos/files/Samsung/3.2.x/target/$TARGET_CODENAME-target_base.zip/download
cd ..
