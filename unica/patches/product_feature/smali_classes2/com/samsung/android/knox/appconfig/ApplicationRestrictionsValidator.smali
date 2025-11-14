.class public Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FEATURE_INTELLIGENCE_SERVICE:Z

.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsValidator"

.field public static final unusedBundleKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string/jumbo v11, "startActivity"

    const-string/jumbo v12, "sendBroadcast"

    const-string/jumbo v0, "wificonfiguration"

    const-string/jumbo v1, "skip_welcome_screen"

    const-string/jumbo v2, "flow_pointer_is_on_dex"

    const-string/jumbo v3, "flow_pointer_from_where_dex"

    const-string/jumbo v4, "app_config_skip_overscan"

    const-string/jumbo v5, "app_config_hidden"

    const-string/jumbo v6, "app_config_disable_ctx_menu"

    const-string/jumbo v7, "app_config_disable_dex_labs_button"

    const-string/jumbo v8, "app_config_disable_exit_dex_button"

    const-string/jumbo v9, "dex_disable_file_copy_from_pc"

    const-string/jumbo v10, "dex_disable_file_copy_from_mobile"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->FEATURE_INTELLIGENCE_SERVICE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAISupport(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/EdmConstants;->AI_TOP_LEVEL_KEYS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-boolean p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->FEATURE_INTELLIGENCE_SERVICE:Z

    if-nez p0, :cond_f

    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    return p0

    :cond_f
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    return p0
.end method

.method public static checkKeyType(Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .registers 4

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_4
    invoke-virtual {p2}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getPermission()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p2, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_15

    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_PERMISSION_DENIED:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_18

    return p0

    :cond_15
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    return p0

    :catch_18
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "fail to checkPermission  "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationRestrictionsValidator"

    invoke-static {p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    return p0
.end method

.method public static checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getVersion()I

    move-result p0

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevelForInternal()I

    move-result v0

    if-le p0, v0, :cond_d

    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    return p0

    :cond_d
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    return p0

    :catch_10
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fail to checkVersion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApplicationRestrictionsValidator"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    return p0
.end method

.method public static checkWPCODMode(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    return p0
.end method

.method public static getCallerPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasSystemVibrationMenu(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static hasVibrator(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnableIntensity(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_15

    return v1

    :cond_15
    return v0
.end method

.method public static isSupportDcHaptic(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static supportAutoBrightness(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportLightSensor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportCameraSensor(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static supportCameraSensor(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    if-nez p0, :cond_c

    goto :goto_1e

    :cond_c
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_1e

    const v0, 0x10044

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static supportLightSensor(Landroid/content/Context;)Z
    .registers 5

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    goto :goto_31

    :cond_d
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    move v1, v0

    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2f

    const v3, 0x10041

    if-ne v2, v3, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    return p0

    :cond_31
    :goto_31
    return v0
.end method

.method public static supportPocketMode(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "motion_recognition"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/high16 v0, 0x800000

    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isAvailable(I)Z

    move-result p0

    return p0
.end method

.method public static supportTaskBar(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "minimal_battery_use"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    return v0

    :cond_1d
    return v1
.end method

.method public static validate(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 19

    move-object/from16 v1, p1

    const-string v2, "ApplicationRestrictionsValidator"

    if-nez v1, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->getCallerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->NONE:Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1425

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/knox/appconfig/info/KeyInfo;->KEYMAP:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    if-nez v6, :cond_36

    goto :goto_1f

    :cond_36
    invoke-static {v6}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    move-result v7

    sget v8, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v8, v7, :cond_42

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1f

    :cond_42
    move-object/from16 v7, p0

    invoke-static {v7, v3, v6}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    move-result v6

    sget v8, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v8, v6, :cond_50

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1f

    :cond_50
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkWPCODMode(Landroid/content/Context;)Z

    move-result v6

    const-string/jumbo v8, "location_services_wifi_scanning"

    const-string/jumbo v9, "location_services_bluetooth_scanning"

    const-string/jumbo v10, "wifi_always_scanning"

    const-string/jumbo v11, "bluetooth_always_scanning"

    const-string/jumbo v12, "top_level_location"

    const-string/jumbo v13, "location_settings"

    const/4 v14, 0x1

    if-ne v6, v14, :cond_93

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    :cond_8d
    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1f

    :cond_93
    invoke-static {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkKeyType(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v14, :cond_9a

    goto :goto_1f

    :cond_9a
    invoke-static {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkAISupport(Ljava/lang/String;)I

    move-result v6

    sget v15, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    if-eq v15, v6, :cond_a7

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_a7
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b5

    goto/16 :goto_1f

    :cond_b5
    const-string/jumbo v15, "value"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1f

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_c6

    goto/16 :goto_1f

    :cond_c6
    :try_start_c6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v14, 0x4

    sparse-switch v16, :sswitch_data_1426

    goto/16 :goto_b54

    :sswitch_d0
    const-string/jumbo v8, "wifi_qrcode"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x85

    goto/16 :goto_b55

    :catch_dd
    move-exception v0

    goto/16 :goto_1411

    :sswitch_e0
    const-string/jumbo v8, "disableToolbarYoutube "

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa5

    goto/16 :goto_b55

    :sswitch_ed
    const-string/jumbo v8, "long_press_wake_bixby"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x63

    goto/16 :goto_b55

    :sswitch_fa
    const-string/jumbo v8, "telephonyui_simcard_manager_data_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb9

    goto/16 :goto_b55

    :sswitch_107
    const-string/jumbo v8, "smart_capture"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/4 v8, 0x3

    goto/16 :goto_b55

    :sswitch_113
    const-string/jumbo v8, "xcover_top_long_press_key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x58

    goto/16 :goto_b55

    :sswitch_120
    const-string/jumbo v8, "telephonyui_doemstic_roaming_data"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb4

    goto/16 :goto_b55

    :sswitch_12d
    const-string/jumbo v8, "nfc_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x9

    goto/16 :goto_b55

    :sswitch_13a
    const-string/jumbo v8, "lock_screen_additional_info"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x1e

    goto/16 :goto_b55

    :sswitch_147
    const-string/jumbo v8, "easy_mute"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/4 v8, 0x0

    goto/16 :goto_b55

    :sswitch_153
    const-string/jumbo v8, "lockscreen_notifications"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x8b

    goto/16 :goto_b55

    :sswitch_160
    const-string/jumbo v8, "noti_card_seekbar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x23

    goto/16 :goto_b55

    :sswitch_16d
    const-string/jumbo v8, "top_level_apps"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x7d

    goto/16 :goto_b55

    :sswitch_17a
    const-string/jumbo v8, "top_level_display_upsm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x50

    goto/16 :goto_b55

    :sswitch_187
    const-string/jumbo v8, "international_roaming_voice_text"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xaf

    goto/16 :goto_b55

    :sswitch_194
    const-string/jumbo v8, "double_press_open_apps"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x5c

    goto/16 :goto_b55

    :sswitch_1a1
    const-string/jumbo v8, "function_key_long_press"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x5d

    goto/16 :goto_b55

    :sswitch_1ae
    const-string/jumbo v8, "blue_light_filter_user_schedule"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x40

    goto/16 :goto_b55

    :sswitch_1bb
    const-string/jumbo v8, "notification_details"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x6a

    goto/16 :goto_b55

    :sswitch_1c8
    const-string/jumbo v8, "change_language_shortcut"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x66

    goto/16 :goto_b55

    :sswitch_1d5
    const-string/jumbo v8, "homescreen_noti_preview"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x26

    goto/16 :goto_b55

    :sswitch_1e2
    const-string/jumbo v8, "volume_key_control"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x33

    goto/16 :goto_b55

    :sswitch_1ef
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x86

    goto/16 :goto_b55

    :sswitch_1f9
    const-string/jumbo v8, "location_time_zone_detection"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x91

    goto/16 :goto_b55

    :sswitch_206
    const-string/jumbo v8, "xcover_top_short_press_key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x57

    goto/16 :goto_b55

    :sswitch_213
    const-string/jumbo v8, "backup_category"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x83

    goto/16 :goto_b55

    :sswitch_220
    const-string/jumbo v8, "international_roaming_data"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb0

    goto/16 :goto_b55

    :sswitch_22d
    const-string/jumbo v8, "auto_wifi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc

    goto/16 :goto_b55

    :sswitch_23a
    const-string/jumbo v8, "notification_vibration"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x6b

    goto/16 :goto_b55

    :sswitch_247
    const-string/jumbo v8, "disableVoiceInput"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x9e

    goto/16 :goto_b55

    :sswitch_254
    const-string/jumbo v8, "double_press_quick_launch_camera"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x61

    goto/16 :goto_b55

    :sswitch_261
    const-string/jumbo v8, "lock_screen_menu_notifications"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x22

    goto/16 :goto_b55

    :sswitch_26e
    const-string/jumbo v8, "telephonyui_simcard_manager_general_settings_sim2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb8

    goto/16 :goto_b55

    :sswitch_27b
    const-string/jumbo v8, "telephonyui_simcard_manager_general_settings_sim1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xbc

    goto/16 :goto_b55

    :sswitch_288
    const-string/jumbo v8, "telephonyui_simcard_manager_general_settings_esim"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xbd

    goto/16 :goto_b55

    :sswitch_295
    const-string/jumbo v8, "long_press_key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x55

    goto/16 :goto_b55

    :sswitch_2a2
    const-string/jumbo v8, "flow_pointer_from_where_dex"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc6

    goto/16 :goto_b55

    :sswitch_2af
    const-string/jumbo v8, "function_key_double_press"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x5a

    goto/16 :goto_b55

    :sswitch_2bc
    const-string/jumbo v8, "disable_connectivity_check"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc3

    goto/16 :goto_b55

    :sswitch_2c9
    const-string/jumbo v8, "restriction_app_suggestion"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc1

    goto/16 :goto_b55

    :sswitch_2d6
    const-string/jumbo v8, "charging_sounds"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x2b

    goto/16 :goto_b55

    :sswitch_2e3
    const-string/jumbo v8, "wifi_adps"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xd

    goto/16 :goto_b55

    :sswitch_2f0
    const-string/jumbo v8, "telephonyui_simcard_manager_data_switching_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xbf

    goto/16 :goto_b55

    :sswitch_2fd
    const-string/jumbo v8, "all_notification"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x46

    goto/16 :goto_b55

    :sswitch_30a
    const-string/jumbo v8, "default_autofill"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x81

    goto/16 :goto_b55

    :sswitch_317
    const-string/jumbo v8, "button_order"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x1a

    goto/16 :goto_b55

    :sswitch_324
    const-string/jumbo v8, "where_to_show"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x1d

    goto/16 :goto_b55

    :sswitch_331
    const-string/jumbo v8, "dex_disable_file_copy_from_mobile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xcd

    goto/16 :goto_b55

    :sswitch_33e
    const-string/jumbo v8, "blue_light_filter_turn_on_now"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x3d

    goto/16 :goto_b55

    :sswitch_34b
    const-string/jumbo v8, "key_show_keyboard_button"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x37

    goto/16 :goto_b55

    :sswitch_358
    const-string/jumbo v8, "noti_inverse_text"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x24

    goto/16 :goto_b55

    :sswitch_365
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/4 v8, 0x6

    goto/16 :goto_b55

    :sswitch_36e
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x4a

    goto/16 :goto_b55

    :sswitch_378
    const-string/jumbo v8, "notification_content"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x8c

    goto/16 :goto_b55

    :sswitch_385
    const-string/jumbo v8, "auto_brightness_no_pac"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x11

    goto/16 :goto_b55

    :sswitch_392
    const-string/jumbo v8, "app_config_disable_dex_labs_button"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xca

    goto/16 :goto_b55

    :sswitch_39f
    const-string/jumbo v8, "eye_comfort_set_schedule"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x6e

    goto/16 :goto_b55

    :sswitch_3ac
    const-string/jumbo v8, "tts_default_pitch"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x39

    goto/16 :goto_b55

    :sswitch_3b9
    const-string/jumbo v8, "blue_light_filter_on_time"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x41

    goto/16 :goto_b55

    :sswitch_3c6
    const-string/jumbo v8, "sec_high_refresh_rate"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x8d

    goto/16 :goto_b55

    :sswitch_3d3
    const-string/jumbo v8, "resolution_user_setting"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xcc

    goto/16 :goto_b55

    :sswitch_3e0
    const-string/jumbo v8, "app_config_hidden"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc8

    goto/16 :goto_b55

    :sswitch_3ed
    const-string/jumbo v8, "top_level_location_upsm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x4e

    goto/16 :goto_b55

    :sswitch_3fa
    const-string/jumbo v8, "gesture_detailed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x74

    goto/16 :goto_b55

    :sswitch_407
    const-string/jumbo v8, "top_level_wifi_upsm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x4b

    goto/16 :goto_b55

    :sswitch_414
    const-string/jumbo v8, "screen_timeout"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x18

    goto/16 :goto_b55

    :sswitch_421
    const-string/jumbo v8, "private_dns_settings_specifier"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x95

    goto/16 :goto_b55

    :sswitch_42e
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x8

    goto/16 :goto_b55

    :sswitch_438
    const-string/jumbo v8, "notification_2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x30

    goto/16 :goto_b55

    :sswitch_445
    const-string/jumbo v8, "category_samsungservices"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x82

    goto/16 :goto_b55

    :sswitch_452
    const-string/jumbo v8, "wifi_hs20_list"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x49

    goto/16 :goto_b55

    :sswitch_45f
    const-string/jumbo v8, "accessibility_installed_services"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xab

    goto/16 :goto_b55

    :sswitch_46c
    const-string/jumbo v8, "phone_vibration"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x35

    goto/16 :goto_b55

    :sswitch_479
    const-string/jumbo v8, "dashboard_tile_pref_com.samsung.android.app.telephonyui.netsettings.ui.NetSettingsActivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x52

    goto/16 :goto_b55

    :sswitch_486
    const-string/jumbo v8, "device_name_edit"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x89

    goto/16 :goto_b55

    :sswitch_493
    const-string/jumbo v8, "eye_comfort_adaptive_mode"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x6c

    goto/16 :goto_b55

    :sswitch_4a0
    const-string/jumbo v8, "notification"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x2f

    goto/16 :goto_b55

    :sswitch_4ad
    const-string/jumbo v8, "lift_to_wake"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x92

    goto/16 :goto_b55

    :sswitch_4ba
    const-string/jumbo v8, "disableHWRInput"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa0

    goto/16 :goto_b55

    :sswitch_4c7
    const-string/jumbo v8, "app_config_disable_exit_dex_button"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xcb

    goto/16 :goto_b55

    :sswitch_4d4
    const-string/jumbo v8, "auto_brightness"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x10

    goto/16 :goto_b55

    :sswitch_4e1
    const-string/jumbo v8, "show_notification_icons"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x29

    goto/16 :goto_b55

    :sswitch_4ee
    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x36

    goto/16 :goto_b55

    :sswitch_4fb
    const-string/jumbo v8, "screenshots_and_screen_recorder"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    move v8, v14

    goto/16 :goto_b55

    :sswitch_507
    const-string/jumbo v8, "SETTINGS_USE_TOOLBAR"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x96

    goto/16 :goto_b55

    :sswitch_514
    const-string/jumbo v8, "picture_in_picture"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x65

    goto/16 :goto_b55

    :sswitch_521
    const-string/jumbo v8, "doemstic_roaming_data"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xae

    goto/16 :goto_b55

    :sswitch_52e
    const-string/jumbo v8, "disableGifKeyboard"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x9d

    goto/16 :goto_b55

    :sswitch_53b
    const-string/jumbo v8, "eye_comfort_seekbar_color_temperature"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x6f

    goto/16 :goto_b55

    :sswitch_548
    const-string/jumbo v8, "spen_detachment_sound"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x76

    goto/16 :goto_b55

    :sswitch_555
    const-string/jumbo v8, "accessibility_power_and_volume_up_keys"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa9

    goto/16 :goto_b55

    :sswitch_562
    const-string/jumbo v8, "sec_font_size"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x16

    goto/16 :goto_b55

    :sswitch_56f
    const-string/jumbo v8, "phone_language"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x7e

    goto/16 :goto_b55

    :sswitch_57c
    const-string/jumbo v8, "screen_off_pocket"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x14

    goto/16 :goto_b55

    :sswitch_589
    const-string/jumbo v8, "navigation_Bar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x43

    goto/16 :goto_b55

    :sswitch_596
    const-string/jumbo v8, "disableClipboard"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa1

    goto/16 :goto_b55

    :sswitch_5a3
    const-string/jumbo v8, "skip_welcome_screen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc4

    goto/16 :goto_b55

    :sswitch_5b0
    const-string/jumbo v8, "increse_touch_sensetivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x72

    goto/16 :goto_b55

    :sswitch_5bd
    const-string/jumbo v8, "SETTINGS_PHYSICAL_KEYBOARD_TOOLBAR"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x97

    goto/16 :goto_b55

    :sswitch_5ca
    const-string/jumbo v8, "telephonyui_simcard_manager_call_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xba

    goto/16 :goto_b55

    :sswitch_5d7
    const-string/jumbo v8, "blue_light_filter_seekbar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x3c

    goto/16 :goto_b55

    :sswitch_5e4
    const-string/jumbo v8, "disablePrediction"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x99

    goto/16 :goto_b55

    :sswitch_5f1
    const-string/jumbo v8, "verizon_dedicated_ptt"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x53

    goto/16 :goto_b55

    :sswitch_5fe
    const-string/jumbo v8, "telephonyui_international_roaming_data"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb1

    goto/16 :goto_b55

    :sswitch_60b
    const-string/jumbo v8, "dial_pad_tones"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x2c

    goto/16 :goto_b55

    :sswitch_618
    const-string/jumbo v8, "function_key_setting"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x60

    goto/16 :goto_b55

    :sswitch_625
    const-string/jumbo v8, "bluetooth_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x79

    goto/16 :goto_b55

    :sswitch_632
    const-string/jumbo v8, "lock_screen_dualclock"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x1b

    goto/16 :goto_b55

    :sswitch_63f
    const-string/jumbo v8, "tts_engine_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x38

    goto/16 :goto_b55

    :sswitch_64c
    const-string/jumbo v8, "proxy_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x77

    goto/16 :goto_b55

    :sswitch_659
    const-string/jumbo v8, "blue_light_filter"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x15

    goto/16 :goto_b55

    :sswitch_666
    const-string/jumbo v8, "MobileWIPS"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xf

    goto/16 :goto_b55

    :sswitch_673
    const-string/jumbo v8, "wifi_hs20_profile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xe

    goto/16 :goto_b55

    :sswitch_680
    const-string/jumbo v8, "notification_badging"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x25

    goto/16 :goto_b55

    :sswitch_68d
    const-string/jumbo v8, "smart_alert"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/4 v8, 0x2

    goto/16 :goto_b55

    :sswitch_699
    const-string/jumbo v8, "ds_notification_sound"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x48

    goto/16 :goto_b55

    :sswitch_6a6
    const-string/jumbo v8, "blue_light_filter_off_time"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x42

    goto/16 :goto_b55

    :sswitch_6b3
    const-string/jumbo v8, "telephonyui_international_roaming_voice_text"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb5

    goto/16 :goto_b55

    :sswitch_6c0
    const-string/jumbo v8, "telephonyui_simcard_manager_text_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xbb

    goto/16 :goto_b55

    :sswitch_6cd
    const-string/jumbo v8, "telephonyui_simcard_manager_add_esim_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xbe

    goto/16 :goto_b55

    :sswitch_6da
    const-string/jumbo v8, "disableSticker"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x9c

    goto/16 :goto_b55

    :sswitch_6e7
    const-string/jumbo v8, "app_icon_number"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x27

    goto/16 :goto_b55

    :sswitch_6f4
    const-string/jumbo v8, "xcover_top_key_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x5f

    goto/16 :goto_b55

    :sswitch_701
    const-string/jumbo v8, "function_key_double_press_type"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x5b

    goto/16 :goto_b55

    :sswitch_70e
    const-string/jumbo v8, "secbrightness"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x8e

    goto/16 :goto_b55

    :sswitch_71b
    const-string/jumbo v8, "wificonfiguration"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc2

    goto/16 :goto_b55

    :sswitch_728
    const-string/jumbo v8, "app_config_disable_ctx_menu"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc9

    goto/16 :goto_b55

    :sswitch_735
    const-string/jumbo v8, "wifi_poor_network_detection"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa

    goto/16 :goto_b55

    :sswitch_742
    const-string/jumbo v8, "task_bar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x93

    goto/16 :goto_b55

    :sswitch_74f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x87

    goto/16 :goto_b55

    :sswitch_759
    const-string/jumbo v8, "wifi_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x78

    goto/16 :goto_b55

    :sswitch_766
    const-string/jumbo v8, "wifi_switch_for_individual_apps"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb

    goto/16 :goto_b55

    :sswitch_773
    const-string/jumbo v8, "xcover_top_key_on_lockscreen_key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x59

    goto/16 :goto_b55

    :sswitch_780
    const-string/jumbo v8, "recent_notifications"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x45

    goto/16 :goto_b55

    :sswitch_78d
    const-string/jumbo v8, "disableTextEditPanel"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa3

    goto/16 :goto_b55

    :sswitch_79a
    const-string/jumbo v8, "show_virtual_keyboard_switch"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x80

    goto/16 :goto_b55

    :sswitch_7a7
    const-string/jumbo v8, "short_press_key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x54

    goto/16 :goto_b55

    :sswitch_7b4
    const-string/jumbo v8, "accessibility_flash_notificaitons"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xaa

    goto/16 :goto_b55

    :sswitch_7c1
    const-string/jumbo v8, "reset_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x7f

    goto/16 :goto_b55

    :sswitch_7ce
    const-string/jumbo v8, "blue_light_filter_turn_on_as_scheduled"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x3e

    goto/16 :goto_b55

    :sswitch_7db
    const-string/jumbo v8, "disableToolbarSpotify"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa4

    goto/16 :goto_b55

    :sswitch_7e8
    const-string/jumbo v8, "telephonyui_network_operator_menu"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb7

    goto/16 :goto_b55

    :sswitch_7f5
    const-string/jumbo v8, "flow_pointer_is_on_dex"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc5

    goto/16 :goto_b55

    :sswitch_802
    const-string/jumbo v8, "disableAllToolbarItems"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x9a

    goto/16 :goto_b55

    :sswitch_80f
    const-string/jumbo v8, "sync_vibration_with_ringtone"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x88

    goto/16 :goto_b55

    :sswitch_81c
    const-string/jumbo v8, "notification_vibration_pattern"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x71

    goto/16 :goto_b55

    :sswitch_829
    const-string/jumbo v8, "telephonyui_verizon_data_on_off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb2

    goto/16 :goto_b55

    :sswitch_836
    const-string/jumbo v8, "disableSetting"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x98

    goto/16 :goto_b55

    :sswitch_843
    const-string/jumbo v8, "eye_comfort_custom_mode"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x6d

    goto/16 :goto_b55

    :sswitch_850
    const-string/jumbo v8, "keyboard_sound"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x2d

    goto/16 :goto_b55

    :sswitch_85d
    const-string/jumbo v8, "swipe_to_call_or_send_messages"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/4 v8, 0x5

    goto/16 :goto_b55

    :sswitch_869
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/4 v8, 0x7

    goto/16 :goto_b55

    :sswitch_872
    const-string/jumbo v8, "double_press_open_bixby"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x62

    goto/16 :goto_b55

    :sswitch_87f
    const-string/jumbo v8, "top_level_lockscreen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x7b

    goto/16 :goto_b55

    :sswitch_88c
    const-string/jumbo v8, "homecity_timezone"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x1c

    goto/16 :goto_b55

    :sswitch_899
    const-string/jumbo v8, "phone_vibration_pattern"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x70

    goto/16 :goto_b55

    :sswitch_8a6
    const-string/jumbo v8, "double_tap_to_sleep"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x90

    goto/16 :goto_b55

    :sswitch_8b3
    const-string/jumbo v8, "app_icon_dot"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x44

    goto/16 :goto_b55

    :sswitch_8c0
    const-string/jumbo v8, "app_config_skip_overscan"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc7

    goto/16 :goto_b55

    :sswitch_8cd
    const-string/jumbo v8, "toggle_airplane"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x7a

    goto/16 :goto_b55

    :sswitch_8da
    const-string/jumbo v8, "disableModes"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa2

    goto/16 :goto_b55

    :sswitch_8e7
    const-string/jumbo v8, "top_level_sounds_upsm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x4f

    goto/16 :goto_b55

    :sswitch_8f4
    const-string/jumbo v8, "set_visibility"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x20

    goto/16 :goto_b55

    :sswitch_901
    const-string/jumbo v8, "outdoor_mode"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x13

    goto/16 :goto_b55

    :sswitch_90e
    const-string/jumbo v8, "tts_default_rate"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x3a

    goto/16 :goto_b55

    :sswitch_91b
    const-string/jumbo v8, "top_level_bluetooth_upsm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x4c

    goto/16 :goto_b55

    :sswitch_928
    const-string/jumbo v8, "disableToolbarNetflix"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa6

    goto/16 :goto_b55

    :sswitch_935
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x34

    goto/16 :goto_b55

    :sswitch_942
    const-string/jumbo v8, "dex_disable_file_copy_from_pc"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xce

    goto/16 :goto_b55

    :sswitch_94f
    const-string/jumbo v8, "android_beam_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x3b

    goto/16 :goto_b55

    :sswitch_95c
    const-string/jumbo v8, "current_input_method"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x67

    goto/16 :goto_b55

    :sswitch_969
    const-string/jumbo v8, "palm_swipe_to_capture"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/4 v8, 0x1

    goto/16 :goto_b55

    :sswitch_975
    const-string/jumbo v8, "long_press_power_off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x64

    goto/16 :goto_b55

    :sswitch_982
    const-string/jumbo v8, "telephonyui_simcard_manager_more_settings_preference"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xc0

    goto/16 :goto_b55

    :sswitch_98f
    const-string/jumbo v8, "disableLiveMessage"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x9f

    goto/16 :goto_b55

    :sswitch_99c
    const-string/jumbo v8, "blue_light_filter_auto_schedule"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x3f

    goto/16 :goto_b55

    :sswitch_9a9
    const-string/jumbo v8, "gesture_preview"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x73

    goto/16 :goto_b55

    :sswitch_9b6
    const-string/jumbo v8, "xcover_key_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x5e

    goto/16 :goto_b55

    :sswitch_9c3
    const-string/jumbo v8, "mobile_network_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x8a

    goto/16 :goto_b55

    :sswitch_9d0
    const-string/jumbo v8, "show_password"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x2a

    goto/16 :goto_b55

    :sswitch_9dd
    const-string/jumbo v8, "active_key_on_lockscreen_key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x56

    goto/16 :goto_b55

    :sswitch_9ea
    const-string/jumbo v8, "sec_font_style"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x17

    goto/16 :goto_b55

    :sswitch_9f7
    const-string/jumbo v8, "double_tab_to_wake_up"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x8f

    goto/16 :goto_b55

    :sswitch_a04
    const-string/jumbo v8, "noti_view_style"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x21

    goto/16 :goto_b55

    :sswitch_a11
    const-string/jumbo v8, "sendBroadcast"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xd0

    goto/16 :goto_b55

    :sswitch_a1e
    const-string/jumbo v8, "dashboard_tile_pref_com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x7c

    goto/16 :goto_b55

    :sswitch_a2b
    const-string/jumbo v8, "top_level_airplane_mode_upsm"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x4d

    goto/16 :goto_b55

    :sswitch_a38
    const-string/jumbo v8, "key_notification_icons_on_status_bar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x68

    goto/16 :goto_b55

    :sswitch_a45
    const-string/jumbo v8, "notification_sound"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x47

    goto/16 :goto_b55

    :sswitch_a52
    const-string/jumbo v8, "telephonyui_domestic_roaming_voice_text"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb3

    goto/16 :goto_b55

    :sswitch_a5f
    const-string/jumbo v8, "touch_sounds"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x32

    goto/16 :goto_b55

    :sswitch_a6c
    const-string/jumbo v8, "startActivity"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xcf

    goto/16 :goto_b55

    :sswitch_a79
    const-string/jumbo v8, "external_storage_transfer"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x84

    goto/16 :goto_b55

    :sswitch_a86
    const-string/jumbo v8, "private_dns_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x94

    goto/16 :goto_b55

    :sswitch_a93
    const-string/jumbo v8, "domestic_roaming_voice_text"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xad

    goto/16 :goto_b55

    :sswitch_aa0
    const-string/jumbo v8, "facewidget_where_to_show"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x1f

    goto/16 :goto_b55

    :sswitch_aad
    const-string/jumbo v8, "adaptive_brightness_no_ls"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x12

    goto/16 :goto_b55

    :sswitch_aba
    const-string/jumbo v8, "disableToolbarMelon"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa7

    goto/16 :goto_b55

    :sswitch_ac7
    const-string/jumbo v8, "telephonyui_access_point_names_menu"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xb6

    goto/16 :goto_b55

    :sswitch_ad4
    const-string/jumbo v8, "top_level_accessibility"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x51

    goto/16 :goto_b55

    :sswitch_ae1
    const-string/jumbo v8, "notification_icons_only"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x69

    goto :goto_b55

    :sswitch_aed
    const-string/jumbo v8, "show_battery_percent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x28

    goto :goto_b55

    :sswitch_af9
    const-string/jumbo v8, "onehand_operation_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x75

    goto/16 :goto_b55

    :sswitch_b06
    const-string/jumbo v8, "accessibility_advanced_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xa8

    goto/16 :goto_b55

    :sswitch_b13
    const-string/jumbo v8, "disableEmoticonInput"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x9b

    goto/16 :goto_b55

    :sswitch_b20
    const-string/jumbo v8, "sec_screen_size"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x19

    goto/16 :goto_b55

    :sswitch_b2d
    const-string/jumbo v8, "verizon_data_on_off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0xac

    goto/16 :goto_b55

    :sswitch_b3a
    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b54

    const/16 v8, 0x2e

    goto/16 :goto_b55

    :sswitch_b47
    const-string/jumbo v8, "screen_locking_sounds"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_b4e
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_b4e} :catch_dd

    if-eqz v8, :cond_b54

    const/16 v8, 0x31

    goto/16 :goto_b55

    :cond_b54
    :goto_b54
    const/4 v8, -0x1

    :goto_b55
    const-string v9, "0"

    const-string v10, "1"

    if-eqz v8, :cond_13fe

    const/4 v11, 0x1

    if-eq v8, v11, :cond_13eb

    const/4 v11, 0x2

    if-eq v8, v11, :cond_13d8

    const/4 v11, 0x3

    if-eq v8, v11, :cond_13c5

    if-eq v8, v14, :cond_13b2

    const/4 v11, 0x5

    if-eq v8, v11, :cond_13ab

    const-string v11, "3"

    const-string v12, "2"

    const/4 v13, 0x6

    if-eq v8, v13, :cond_138c

    const/4 v13, 0x7

    if-eq v8, v13, :cond_1379

    const/16 v13, 0x36

    if-eq v8, v13, :cond_1366

    const/16 v13, 0x37

    if-eq v8, v13, :cond_1353

    const/16 v13, 0x39

    if-eq v8, v13, :cond_133c

    const/16 v13, 0x3a

    if-eq v8, v13, :cond_1325

    const/16 v13, 0x49

    if-eq v8, v13, :cond_1312

    const/16 v13, 0x4a

    if-eq v8, v13, :cond_12f3

    const/16 v13, 0x68

    if-eq v8, v13, :cond_12da

    const/16 v13, 0x69

    if-eq v8, v13, :cond_12c1

    const/16 v13, 0x72

    if-eq v8, v13, :cond_12ae

    const/16 v13, 0x73

    if-eq v8, v13, :cond_129b

    const-string/jumbo v13, "false"

    const-string/jumbo v14, "true"

    sparse-switch v8, :sswitch_data_176c

    packed-switch v8, :pswitch_data_183e

    packed-switch v8, :pswitch_data_1848

    packed-switch v8, :pswitch_data_186c

    packed-switch v8, :pswitch_data_1878

    goto/16 :goto_1f

    :pswitch_bb2  #0x5b
    :try_start_bb2
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_bcb  #0x5a
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_bde  #0x59
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_bf1  #0x34
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_bfc

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_bfc
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c0f  #0x33
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c22  #0x32
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c35  #0x31
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c48  #0x2e
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c5b  #0x2d
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c6e  #0x2c
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c81  #0x2b
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_c94  #0x2a
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_ca7  #0x29
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_cc6  #0x28
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_cd9  #0x27
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_cec  #0x26
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_cff  #0x25
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d12  #0x24
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d25  #0x23
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_d33

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x4b

    if-le v6, v8, :cond_1f

    :cond_d33
    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d3a  #0x22
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d4d  #0x21
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d66  #0x20
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d79  #0x1f
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d8c  #0x1b
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_d9f  #0x1a
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :pswitch_db2  #0x19
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_dbf

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x4

    if-le v6, v8, :cond_1f

    :cond_dbf
    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_dc6
    const-string/jumbo v6, "UWQHD"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string/jumbo v6, "WQXGA"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string/jumbo v6, "WQHD"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string/jumbo v6, "UWFHD"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string/jumbo v6, "WUXGA"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "FHD"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "HD"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_e13
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_e26
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_e39
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e4a

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e4a

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_e4a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_e4e
    .catch Ljava/lang/Exception; {:try_start_bb2 .. :try_end_e4e} :catch_dd

    :try_start_e4e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "data_preferred_mode_during_calling"

    invoke-static {v6, v10, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_e5c
    .catch Ljava/lang/Exception; {:try_start_e4e .. :try_end_e5c} :catch_e64
    .catchall {:try_start_e4e .. :try_end_e5c} :catchall_e61

    :goto_e5c
    :try_start_e5c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e5f
    .catch Ljava/lang/Exception; {:try_start_e5c .. :try_end_e5f} :catch_dd

    goto/16 :goto_1f

    :catchall_e61
    move-exception v0

    goto/16 :goto_e7b

    :catch_e64
    move-exception v0

    :try_start_e65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "auto brightness level fail :  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7a
    .catchall {:try_start_e65 .. :try_end_e7a} :catchall_e61

    goto :goto_e5c

    :goto_e7b
    :try_start_e7b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_e7f
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_e8c
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_e9f
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_eb2
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_ec5
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_ed8
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_eeb
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_efe
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_f11
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_f24
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_f37
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_f4a
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_f5d
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_f70
    const-string/jumbo v6, "off"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string/jumbo v6, "hostname"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string/jumbo v6, "opportunistic"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_f92
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportTaskBar(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_f9d

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_f9d
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_fb0
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_fc3
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_fd6
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_fe9
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_ffc
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1015
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1028
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_103b
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_104e
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1061
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1074
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1087
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_109a
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_10ad
    const-string v6, "7"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "6"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "5"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "4"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_10e6
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_10ff
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1112
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1125
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1138
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_114b
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportPocketMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1156

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1156
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1169
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_117c
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_118f
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_11a2
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_11ad

    sget v8, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11ad
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11be

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11be

    sget v8, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11be
    const-string/jumbo v0, "level"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_11cb
    .catch Ljava/lang/Exception; {:try_start_e7b .. :try_end_11cb} :catch_dd

    :try_start_11cb
    const-string/jumbo v0, "level"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "screen_brightness"

    invoke-static {v6, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_11e0
    .catch Ljava/lang/Exception; {:try_start_11cb .. :try_end_11e0} :catch_11e8
    .catchall {:try_start_11cb .. :try_end_11e0} :catchall_11e5

    :goto_11e0
    :try_start_11e0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_11e3
    .catch Ljava/lang/Exception; {:try_start_11e0 .. :try_end_11e3} :catch_dd

    goto/16 :goto_1f

    :catchall_11e5
    move-exception v0

    goto/16 :goto_11ff

    :catch_11e8
    move-exception v0

    :try_start_11e9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "auto brightness level fail :  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11fe
    .catchall {:try_start_11e9 .. :try_end_11fe} :catchall_11e5

    goto :goto_11e0

    :goto_11ff
    :try_start_11ff
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_1203
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1216
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1229
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_123c
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_124f
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1262
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1275
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :sswitch_1288
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_129b
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_12ae
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_12c1
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_12da
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_12f3
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_1312
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_1325
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0xa

    if-lt v6, v8, :cond_1335

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x258

    if-le v6, v8, :cond_1f

    :cond_1335
    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_133c
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x19

    if-lt v6, v8, :cond_134c

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x190

    if-le v6, v8, :cond_1f

    :cond_134c
    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_1353
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_1366
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_1379
    :sswitch_1379
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_138c
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_13ab
    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_13b2
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_13c5
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_13d8
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_13eb
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1f

    :cond_13fe
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget v6, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_140f
    .catch Ljava/lang/Exception; {:try_start_11ff .. :try_end_140f} :catch_dd

    goto/16 :goto_1f

    :goto_1411
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "fail to validate "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_1425
    return-object v4

    :sswitch_data_1426
    .sparse-switch
        -0x7f5cb021 -> :sswitch_b47
        -0x787013c6 -> :sswitch_b3a
        -0x72e8c808 -> :sswitch_b2d
        -0x70e89afa -> :sswitch_b20
        -0x70cc2d24 -> :sswitch_b13
        -0x705f4111 -> :sswitch_b06
        -0x6bafcb5b -> :sswitch_af9
        -0x6b770d2f -> :sswitch_aed
        -0x6b1bfe7b -> :sswitch_ae1
        -0x6a1df617 -> :sswitch_ad4
        -0x69a85713 -> :sswitch_ac7
        -0x67379d00 -> :sswitch_aba
        -0x65712a00 -> :sswitch_aad
        -0x640f2df5 -> :sswitch_aa0
        -0x63de4f3f -> :sswitch_a93
        -0x62d0484b -> :sswitch_a86
        -0x62ae10dd -> :sswitch_a79
        -0x5b20666f -> :sswitch_a6c
        -0x58d55dbc -> :sswitch_a5f
        -0x58cef052 -> :sswitch_a52
        -0x588de745 -> :sswitch_a45
        -0x574ec733 -> :sswitch_a38
        -0x56fd1517 -> :sswitch_a2b
        -0x55af4883 -> :sswitch_a1e
        -0x5424cde7 -> :sswitch_a11
        -0x53046480 -> :sswitch_a04
        -0x5293f996 -> :sswitch_9f7
        -0x5270bd91 -> :sswitch_9ea
        -0x503c9082 -> :sswitch_9dd
        -0x4fbce263 -> :sswitch_9d0
        -0x4f5feeef -> :sswitch_9c3
        -0x4ec70bfd -> :sswitch_9b6
        -0x4d0a712e -> :sswitch_9a9
        -0x4ccd4ad2 -> :sswitch_99c
        -0x4bdf968d -> :sswitch_98f
        -0x4b81ee16 -> :sswitch_982
        -0x4b0c998a -> :sswitch_975
        -0x4a8376ec -> :sswitch_969
        -0x4a34e804 -> :sswitch_95c
        -0x4969d71d -> :sswitch_94f
        -0x485b6dfe -> :sswitch_942
        -0x47f26a51 -> :sswitch_935
        -0x42717761 -> :sswitch_928
        -0x4261e015 -> :sswitch_91b
        -0x3ffd6516 -> :sswitch_90e
        -0x3f046bfa -> :sswitch_901
        -0x3e9934f1 -> :sswitch_8f4
        -0x3e8fe055 -> :sswitch_8e7
        -0x3bc386d8 -> :sswitch_8da
        -0x3bb86c23 -> :sswitch_8cd
        -0x3b2c12ce -> :sswitch_8c0
        -0x3812671f -> :sswitch_8b3
        -0x37d9a523 -> :sswitch_8a6
        -0x354445ae -> :sswitch_899
        -0x314d8a32 -> :sswitch_88c
        -0x313a5164 -> :sswitch_87f
        -0x2f80f0e3 -> :sswitch_872
        -0x2f73aab0 -> :sswitch_869
        -0x2ea4a2d7 -> :sswitch_85d
        -0x2d772949 -> :sswitch_850
        -0x2bff1350 -> :sswitch_843
        -0x2bc011b8 -> :sswitch_836
        -0x2b692c1b -> :sswitch_829
        -0x2b0fff71 -> :sswitch_81c
        -0x2ab92996 -> :sswitch_80f
        -0x29c9d2c2 -> :sswitch_802
        -0x28f70de7 -> :sswitch_7f5
        -0x28897b8a -> :sswitch_7e8
        -0x276d2439 -> :sswitch_7db
        -0x2487d469 -> :sswitch_7ce
        -0x22cd2235 -> :sswitch_7c1
        -0x2171b40e -> :sswitch_7b4
        -0x1fbd53a0 -> :sswitch_7a7
        -0x1dd1a9ea -> :sswitch_79a
        -0x1d2bba9b -> :sswitch_78d
        -0x1d090dfc -> :sswitch_780
        -0x1b8d2d73 -> :sswitch_773
        -0x1ad7d13f -> :sswitch_766
        -0x191499f3 -> :sswitch_759
        -0x189833bc -> :sswitch_74f
        -0x186d69a7 -> :sswitch_742
        -0x1827bcbf -> :sswitch_735
        -0x17cba8d3 -> :sswitch_728
        -0x179e4fff -> :sswitch_71b
        -0x16fa889e -> :sswitch_70e
        -0x159b1c23 -> :sswitch_701
        -0x14e8d153 -> :sswitch_6f4
        -0x142aff4f -> :sswitch_6e7
        -0x12ca16cb -> :sswitch_6da
        -0x127d2833 -> :sswitch_6cd
        -0x122bc0d0 -> :sswitch_6c0
        -0x114d657c -> :sswitch_6b3
        -0xe56d6ca -> :sswitch_6a6
        -0xce06d95 -> :sswitch_699
        -0x9d1b89a -> :sswitch_68d
        -0x8d18fb4 -> :sswitch_680
        -0x7ffc723 -> :sswitch_673
        -0x7980be9 -> :sswitch_666
        -0x76e157a -> :sswitch_659
        -0x5c6012c -> :sswitch_64c
        -0x57f5054 -> :sswitch_63f
        -0x421126d -> :sswitch_632
        -0x38db16c -> :sswitch_625
        -0x2f3ad77 -> :sswitch_618
        -0x2aea77a -> :sswitch_60b
        0x6a1594 -> :sswitch_5fe
        0xb5ce54 -> :sswitch_5f1
        0x1268597 -> :sswitch_5e4
        0x2f125e2 -> :sswitch_5d7
        0x319915f -> :sswitch_5ca
        0x59b944f -> :sswitch_5bd
        0x91483ff -> :sswitch_5b0
        0x9c1eaa9 -> :sswitch_5a3
        0x9c49f8e -> :sswitch_596
        0xa371348 -> :sswitch_589
        0xa801419 -> :sswitch_57c
        0xcbfc309 -> :sswitch_56f
        0xddb2b83 -> :sswitch_562
        0xea853a6 -> :sswitch_555
        0xebf6e1a -> :sswitch_548
        0x1089c6b3 -> :sswitch_53b
        0x114887c3 -> :sswitch_52e
        0x12bde081 -> :sswitch_521
        0x14a5a9c5 -> :sswitch_514
        0x14f49e67 -> :sswitch_507
        0x14fee157 -> :sswitch_4fb
        0x1528b87d -> :sswitch_4ee
        0x1642ab48 -> :sswitch_4e1
        0x176690e1 -> :sswitch_4d4
        0x18f662a5 -> :sswitch_4c7
        0x1c19474f -> :sswitch_4ba
        0x1cc32bb4 -> :sswitch_4ad
        0x237a88eb -> :sswitch_4a0
        0x2668f90b -> :sswitch_493
        0x29373095 -> :sswitch_486
        0x29de8e28 -> :sswitch_479
        0x2bd7b901 -> :sswitch_46c
        0x2d890a14 -> :sswitch_45f
        0x2dee6dea -> :sswitch_452
        0x2eb98d17 -> :sswitch_445
        0x2efc05de -> :sswitch_438
        0x306993b7 -> :sswitch_42e
        0x322891b4 -> :sswitch_421
        0x3343888e -> :sswitch_414
        0x35b5df3a -> :sswitch_407
        0x35ee0ae6 -> :sswitch_3fa
        0x3780cd1a -> :sswitch_3ed
        0x383dc7a9 -> :sswitch_3e0
        0x38730e8f -> :sswitch_3d3
        0x39abdad3 -> :sswitch_3c6
        0x3e637c74 -> :sswitch_3b9
        0x40383676 -> :sswitch_3ac
        0x4104aeb5 -> :sswitch_39f
        0x424d656d -> :sswitch_392
        0x436e0232 -> :sswitch_385
        0x448b4925 -> :sswitch_378
        0x470f223a -> :sswitch_36e
        0x47a8296d -> :sswitch_365
        0x47b87a85 -> :sswitch_358
        0x4857e328 -> :sswitch_34b
        0x4a05f63f -> :sswitch_33e
        0x4ae07531 -> :sswitch_331
        0x4cbee6e9 -> :sswitch_324
        0x4cce6401 -> :sswitch_317
        0x4fb137f0 -> :sswitch_30a
        0x5080e6c9 -> :sswitch_2fd
        0x52e83744 -> :sswitch_2f0
        0x537bcc50 -> :sswitch_2e3
        0x55d982d2 -> :sswitch_2d6
        0x57037fb5 -> :sswitch_2c9
        0x5a047737 -> :sswitch_2bc
        0x5ae319bc -> :sswitch_2af
        0x5bbc62dd -> :sswitch_2a2
        0x5bc56e60 -> :sswitch_295
        0x5bdd179a -> :sswitch_288
        0x5be34f82 -> :sswitch_27b
        0x5be34f83 -> :sswitch_26e
        0x5d584ea7 -> :sswitch_261
        0x5ed3e575 -> :sswitch_254
        0x606bf2c0 -> :sswitch_247
        0x62408c3e -> :sswitch_23a
        0x6306bfa5 -> :sswitch_22d
        0x63278621 -> :sswitch_220
        0x6402d2db -> :sswitch_213
        0x642f4f76 -> :sswitch_206
        0x650f09da -> :sswitch_1f9
        0x6568c319 -> :sswitch_1ef
        0x65f349d8 -> :sswitch_1e2
        0x662ee633 -> :sswitch_1d5
        0x663b2e7e -> :sswitch_1c8
        0x68ad06ee -> :sswitch_1bb
        0x6981c692 -> :sswitch_1ae
        0x69bd25e7 -> :sswitch_1a1
        0x69d231dd -> :sswitch_194
        0x6c6aad51 -> :sswitch_187
        0x6dc86397 -> :sswitch_17a
        0x6e355777 -> :sswitch_16d
        0x6f216615 -> :sswitch_160
        0x705a7c00 -> :sswitch_153
        0x72a6d836 -> :sswitch_147
        0x734e5d87 -> :sswitch_13a
        0x74c2f437 -> :sswitch_12d
        0x78c6352e -> :sswitch_120
        0x78cd108a -> :sswitch_113
        0x7b5d2ad0 -> :sswitch_107
        0x7c6b1493 -> :sswitch_fa
        0x7ceb0fac -> :sswitch_ed
        0x7e6be5f0 -> :sswitch_e0
        0x7fc6dff8 -> :sswitch_d0
    .end sparse-switch

    :sswitch_data_176c
    .sparse-switch
        0x7 -> :sswitch_1379
        0x8 -> :sswitch_1288
        0x9 -> :sswitch_1275
        0xa -> :sswitch_1262
        0xb -> :sswitch_124f
        0xc -> :sswitch_123c
        0xd -> :sswitch_1229
        0xe -> :sswitch_1216
        0xf -> :sswitch_1203
        0x10 -> :sswitch_11a2
        0x11 -> :sswitch_118f
        0x12 -> :sswitch_117c
        0x13 -> :sswitch_1169
        0x14 -> :sswitch_114b
        0x15 -> :sswitch_1138
        0x1d -> :sswitch_1125
        0x53 -> :sswitch_1112
        0x56 -> :sswitch_10ff
        0x5d -> :sswitch_10e6
        0x66 -> :sswitch_10ad
        0x75 -> :sswitch_109a
        0x76 -> :sswitch_1087
        0x80 -> :sswitch_1074
        0x86 -> :sswitch_1061
        0x87 -> :sswitch_104e
        0x88 -> :sswitch_103b
        0x8b -> :sswitch_1028
        0x8c -> :sswitch_1015
        0x8d -> :sswitch_ffc
        0x8f -> :sswitch_fe9
        0x90 -> :sswitch_fd6
        0x91 -> :sswitch_fc3
        0x92 -> :sswitch_fb0
        0x93 -> :sswitch_f92
        0x94 -> :sswitch_f70
        0x96 -> :sswitch_f5d
        0x97 -> :sswitch_f4a
        0xac -> :sswitch_f37
        0xad -> :sswitch_f24
        0xae -> :sswitch_f11
        0xaf -> :sswitch_efe
        0xb0 -> :sswitch_eeb
        0xb1 -> :sswitch_ed8
        0xb2 -> :sswitch_ec5
        0xb3 -> :sswitch_eb2
        0xb4 -> :sswitch_e9f
        0xb5 -> :sswitch_e8c
        0xbd -> :sswitch_e7f
        0xbf -> :sswitch_e39
        0xc1 -> :sswitch_e26
        0xc3 -> :sswitch_e13
        0xcc -> :sswitch_dc6
    .end sparse-switch

    :pswitch_data_183e
    .packed-switch 0x19
        :pswitch_db2  #00000019
        :pswitch_d9f  #0000001a
        :pswitch_d8c  #0000001b
    .end packed-switch

    :pswitch_data_1848
    .packed-switch 0x1f
        :pswitch_d79  #0000001f
        :pswitch_d66  #00000020
        :pswitch_d4d  #00000021
        :pswitch_d3a  #00000022
        :pswitch_d25  #00000023
        :pswitch_d12  #00000024
        :pswitch_cff  #00000025
        :pswitch_cec  #00000026
        :pswitch_cd9  #00000027
        :pswitch_cc6  #00000028
        :pswitch_ca7  #00000029
        :pswitch_c94  #0000002a
        :pswitch_c81  #0000002b
        :pswitch_c6e  #0000002c
        :pswitch_c5b  #0000002d
        :pswitch_c48  #0000002e
    .end packed-switch

    :pswitch_data_186c
    .packed-switch 0x31
        :pswitch_c35  #00000031
        :pswitch_c22  #00000032
        :pswitch_c0f  #00000033
        :pswitch_bf1  #00000034
    .end packed-switch

    :pswitch_data_1878
    .packed-switch 0x59
        :pswitch_bde  #00000059
        :pswitch_bcb  #0000005a
        :pswitch_bb2  #0000005b
    .end packed-switch
.end method
