.class public final Lcom/samsung/android/server/wallpaper/CMFWallpaper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sCmfSwitchMap:Ljava/util/HashMap;


# instance fields
.field public final mAlternativeCode:Ljava/lang/String;

.field public mColorCodePollingThread:Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;

.field public final mContext:Landroid/content/Context;

.field public mDeviceColor:Ljava/lang/String;

.field public final mHandler:Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;

.field public mLastColorCodePollingThreadCount:I

.field public mLegacyDeviceColor:Ljava/lang/String;

.field public mProductCode:Ljava/lang/String;

.field public final mService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

.field public final mSettingsObserver:Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;

.field public final mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "zk"

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    const-string/jumbo v0, "black"

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    new-instance v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;-><init>(Lcom/samsung/android/server/wallpaper/CMFWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mHandler:Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;

    new-instance v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;-><init>(Lcom/samsung/android/server/wallpaper/CMFWallpaper;Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;)V

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mSettingsObserver:Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;

    const-string v0, "CMFWallpaper"

    invoke-static {v0, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    new-instance p1, Ljava/io/File;

    const-string p2, "/efs/imei/alt_cmf.dat"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readAlternativeColorCodeFromEfs : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mAlternativeCode:Ljava/lang/String;

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo p3, "eng"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string/jumbo p3, "userdebug"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "cmf_color_code"

    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mSettingsObserver:Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;

    invoke-virtual {p1, p3, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public static getPreciseMillisTimeString(J)Ljava/lang/String;
    .locals 5

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr p0, v2

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "000000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDeviceColor()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "deviceColor:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isKnownColorCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {p0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isKnownColorCode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "getProperColorCode : use alt color. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CMFWallpaper"

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final setLegacyDeviceColor(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLegacyDeviceColor cmfColorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", featureBasedColor = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CMFWallpaper"

    invoke-static {v1, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "zy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "zw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "zv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "zs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "zr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 p1, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "zp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 p1, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "zn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 p1, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "zi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 p1, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "zg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 p1, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "zd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p1, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "zb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 p1, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "za"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 p1, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 p1, 0x7

    goto :goto_0

    :sswitch_d
    const-string/jumbo v1, "mg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 p1, 0x6

    goto :goto_0

    :sswitch_e
    const-string/jumbo v1, "mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_f
    const-string/jumbo v1, "lb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_10
    const-string/jumbo v1, "gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_11
    const-string/jumbo v1, "ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_12
    const-string/jumbo v1, "di"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_13
    const-string/jumbo v1, "cw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "black"

    goto :goto_1

    :pswitch_0
    const-string/jumbo p1, "yellow"

    goto :goto_1

    :pswitch_1
    const-string/jumbo p1, "purple"

    goto :goto_1

    :pswitch_2
    const-string/jumbo p1, "brown"

    goto :goto_1

    :pswitch_3
    const-string/jumbo p1, "gold"

    goto :goto_1

    :pswitch_4
    const-string/jumbo p1, "orchid"

    goto :goto_1

    :pswitch_5
    const-string/jumbo p1, "silver"

    goto :goto_1

    :pswitch_6
    const-string/jumbo p1, "green"

    goto :goto_1

    :pswitch_7
    const-string/jumbo p1, "blue"

    goto :goto_1

    :pswitch_8
    const-string/jumbo p1, "pink"

    goto :goto_1

    :pswitch_9
    const-string/jumbo p1, "white"

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    :cond_15
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc74 -> :sswitch_13
        0xc85 -> :sswitch_12
        0xc9f -> :sswitch_11
        0xcdb -> :sswitch_10
        0xd76 -> :sswitch_f
        0xd95 -> :sswitch_e
        0xd9a -> :sswitch_d
        0xda6 -> :sswitch_c
        0xf27 -> :sswitch_b
        0xf28 -> :sswitch_a
        0xf2a -> :sswitch_9
        0xf2d -> :sswitch_8
        0xf2f -> :sswitch_7
        0xf34 -> :sswitch_6
        0xf36 -> :sswitch_5
        0xf38 -> :sswitch_4
        0xf39 -> :sswitch_3
        0xf3c -> :sswitch_2
        0xf3d -> :sswitch_1
        0xf3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
