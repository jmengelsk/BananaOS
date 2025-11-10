if [[ "$TARGET_CODENAME" == "a71" ]]; then
    APPLY_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" \
         "$SRC_DIR/unica/mods/settings/bsoh/0001-Enable-bsoh-stats.patch"
fi
