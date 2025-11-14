.class public final Lcom/android/server/sepunion/cover/Feature;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sDeviceTypeProperty:Ljava/lang/String;

.field public static sHardwareProperty:Ljava/lang/String;

.field public static sInstance:Lcom/android/server/sepunion/cover/Feature;

.field public static sIsDeviceSupportDetectCover:Z

.field public static sIsDeviceSupportQueried:Z

.field public static sIsDeviceSupportVerifyCover:Z

.field public static sIsNfcAuthSystemFeatureEnabled:Z

.field public static sIsSupportClearCameraViewCover:Z

.field public static sIsSupportClearCover:Z

.field public static sIsSupportClearSideViewCover:Z

.field public static sIsSupportFlipCover:Z

.field public static sIsSupportGamePackCover:Z

.field public static sIsSupportLEDBackCover:Z

.field public static sIsSupportMiniSviewWalletCover:Z

.field public static sIsSupportNeonCover:Z

.field public static sIsSupportNfcLedCover:Z

.field public static sIsSupportSecureCover:Z

.field public static sIsSystemFeatureQueried:Z

.field public static sSupportNfcLedCoverLevel:I


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;
    .registers 5

    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    if-nez v0, :cond_c3

    new-instance v0, Lcom/android/server/sepunion/cover/Feature;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez v1, :cond_16

    const-string/jumbo v1, "ro.hardware"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    :cond_16
    sget-object v1, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez v1, :cond_23

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    :cond_23
    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v1, "com.sec.feature.cover.flip"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    const-string/jumbo v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    const-string/jumbo v1, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    const-string/jumbo v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    const-string/jumbo v1, "com.sec.feature.cover.gamepackcover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    const-string/jumbo v1, "com.sec.feature.cover.ledbackcover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    const-string/jumbo v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    const-string/jumbo v1, "com.sec.feature.cover.securecover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    const-string/jumbo v1, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    const-string/jumbo v1, "com.sec.feature.cover.minisviewwalletcover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    const-string/jumbo v1, "com.sec.feature.cover.clearcameraviewcover"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    sput-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    :cond_9e
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez p0, :cond_c1

    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b4

    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b4

    move p0, v2

    goto :goto_b5

    :cond_b4
    const/4 p0, 0x0

    :goto_b5
    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    const-string p0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    sput-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    :cond_c1
    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    :cond_c3
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    return-object p0
.end method
