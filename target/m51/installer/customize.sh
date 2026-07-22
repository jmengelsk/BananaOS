LOG_STEP_IN "- Adding Galaxy M51 Firmware"
#EVAL "git clone \"https://github.com/jmengelsk/M51-FIRMWARES\" \"$TMP_DIR/M51-FIRMWARES\""
#EVAL "rm -rf \"$TMP_DIR/M51-FIRMWARES/.git\""

FIRMWARE=$(find "$SRC_DIR/prebuilts/samsung/m51/firmware" -type f -print)

for split_firmware in $FIRMWARE; do
 base_firmware="${split_firmware%.??}"
    if [[ "$split_firmware" =~ \.[0-9][0-9]$ ]] && [ -e "$base_firmware.00" ]; then
        if cat "$base_firmware".?? > "$base_firmware" 2>/dev/null; then
            EVAL "rm -f \"$base_firmware\".??"
        fi
    fi
done

EVAL "cp \"$SRC_DIR/prebuilts/samsung/m51/firmware/\"* \"$TMP_DIR\""
#EVAL "rm -rf \"$SRC_DIR/prebuilts/samsung/m51/firmware\""
LOG_STEP_OUT

