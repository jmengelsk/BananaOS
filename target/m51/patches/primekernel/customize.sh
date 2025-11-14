LOG_STEP_IN "- Replacing stock kernel with Prime"
    rm -f "$WORK_DIR/kernel/"*.img
    cp -a "$SRC_DIR/prebuilts/kernels/${TARGET_CODENAME}/"* "$WORK_DIR/kernel"
    DELETE_FROM_WORK_DIR "vendor" "lib/modules"
LOG_STEP_OUT