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
    .registers 6

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

    :try_start_37
    invoke-static {p1, p2, p3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_41

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_41} :catch_41

    :catch_41
    :cond_41
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

    if-nez p3, :cond_69

    const-string/jumbo p3, "userdebug"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7b

    :cond_69
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "cmf_color_code"

    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mSettingsObserver:Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;

    invoke-virtual {p1, p3, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_7b
    return-void
.end method

.method public static getPreciseMillisTimeString(J)Ljava/lang/String;
    .registers 7

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
    .registers 3

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
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isKnownColorCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {p0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isKnownColorCode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "getProperColorCode : use alt color. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CMFWallpaper"

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_26
    :goto_26
    return-object p1
.end method

.method public final setLegacyDeviceColor(Ljava/lang/String;)V
    .registers 5

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

    if-eqz v0, :cond_177

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto/16 :goto_177

    :cond_2a
    const/4 p1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_178

    goto/16 :goto_147

    :sswitch_34
    const-string/jumbo v1, "zy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_147

    :cond_3f
    const/16 p1, 0x13

    goto/16 :goto_147

    :sswitch_43
    const-string/jumbo v1, "zw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_147

    :cond_4e
    const/16 p1, 0x12

    goto/16 :goto_147

    :sswitch_52
    const-string/jumbo v1, "zv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_147

    :cond_5d
    const/16 p1, 0x11

    goto/16 :goto_147

    :sswitch_61
    const-string/jumbo v1, "zs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_147

    :cond_6c
    const/16 p1, 0x10

    goto/16 :goto_147

    :sswitch_70
    const-string/jumbo v1, "zr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_147

    :cond_7b
    const/16 p1, 0xf

    goto/16 :goto_147

    :sswitch_7f
    const-string/jumbo v1, "zp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_147

    :cond_8a
    const/16 p1, 0xe

    goto/16 :goto_147

    :sswitch_8e
    const-string/jumbo v1, "zn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_147

    :cond_99
    const/16 p1, 0xd

    goto/16 :goto_147

    :sswitch_9d
    const-string/jumbo v1, "zi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_147

    :cond_a8
    const/16 p1, 0xc

    goto/16 :goto_147

    :sswitch_ac
    const-string/jumbo v1, "zg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto/16 :goto_147

    :cond_b7
    const/16 p1, 0xb

    goto/16 :goto_147

    :sswitch_bb
    const-string/jumbo v1, "zd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    goto/16 :goto_147

    :cond_c6
    const/16 p1, 0xa

    goto/16 :goto_147

    :sswitch_ca
    const-string/jumbo v1, "zb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    goto/16 :goto_147

    :cond_d5
    const/16 p1, 0x9

    goto/16 :goto_147

    :sswitch_d9
    const-string/jumbo v1, "za"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    goto/16 :goto_147

    :cond_e4
    const/16 p1, 0x8

    goto/16 :goto_147

    :sswitch_e8
    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    goto :goto_147

    :cond_f2
    const/4 p1, 0x7

    goto :goto_147

    :sswitch_f4
    const-string/jumbo v1, "mg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    goto :goto_147

    :cond_fe
    const/4 p1, 0x6

    goto :goto_147

    :sswitch_100
    const-string/jumbo v1, "mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    goto :goto_147

    :cond_10a
    const/4 p1, 0x5

    goto :goto_147

    :sswitch_10c
    const-string/jumbo v1, "lb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    goto :goto_147

    :cond_116
    const/4 p1, 0x4

    goto :goto_147

    :sswitch_118
    const-string/jumbo v1, "gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    goto :goto_147

    :cond_122
    const/4 p1, 0x3

    goto :goto_147

    :sswitch_124
    const-string/jumbo v1, "ed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    goto :goto_147

    :cond_12e
    const/4 p1, 0x2

    goto :goto_147

    :sswitch_130
    const-string/jumbo v1, "di"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a

    goto :goto_147

    :cond_13a
    const/4 p1, 0x1

    goto :goto_147

    :sswitch_13c
    const-string/jumbo v1, "cw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    goto :goto_147

    :cond_146
    const/4 p1, 0x0

    :goto_147
    packed-switch p1, :pswitch_data_1ca

    const-string/jumbo p1, "black"

    goto :goto_175

    :pswitch_14e  #0x13
    const-string/jumbo p1, "yellow"

    goto :goto_175

    :pswitch_152  #0xe
    const-string/jumbo p1, "purple"

    goto :goto_175

    :pswitch_156  #0xd
    const-string/jumbo p1, "brown"

    goto :goto_175

    :pswitch_15a  #0xa
    const-string/jumbo p1, "gold"

    goto :goto_175

    :pswitch_15e  #0x8, 0xf, 0x11
    const-string/jumbo p1, "orchid"

    goto :goto_175

    :pswitch_162  #0x7, 0x10
    const-string/jumbo p1, "silver"

    goto :goto_175

    :pswitch_166  #0x6, 0xb
    const-string/jumbo p1, "green"

    goto :goto_175

    :pswitch_16a  #0x3, 0x4, 0x5, 0x9
    const-string/jumbo p1, "blue"

    goto :goto_175

    :pswitch_16e  #0x1, 0x2, 0xc
    const-string/jumbo p1, "pink"

    goto :goto_175

    :pswitch_172  #0x0, 0x12
    const-string/jumbo p1, "white"

    :goto_175
    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    :cond_177
    :goto_177
    return-void

    :sswitch_data_178
    .sparse-switch
        0xc74 -> :sswitch_13c
        0xc85 -> :sswitch_130
        0xc9f -> :sswitch_124
        0xcdb -> :sswitch_118
        0xd76 -> :sswitch_10c
        0xd95 -> :sswitch_100
        0xd9a -> :sswitch_f4
        0xda6 -> :sswitch_e8
        0xf27 -> :sswitch_d9
        0xf28 -> :sswitch_ca
        0xf2a -> :sswitch_bb
        0xf2d -> :sswitch_ac
        0xf2f -> :sswitch_9d
        0xf34 -> :sswitch_8e
        0xf36 -> :sswitch_7f
        0xf38 -> :sswitch_70
        0xf39 -> :sswitch_61
        0xf3c -> :sswitch_52
        0xf3d -> :sswitch_43
        0xf3f -> :sswitch_34
    .end sparse-switch

    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_172  #00000000
        :pswitch_16e  #00000001
        :pswitch_16e  #00000002
        :pswitch_16a  #00000003
        :pswitch_16a  #00000004
        :pswitch_16a  #00000005
        :pswitch_166  #00000006
        :pswitch_162  #00000007
        :pswitch_15e  #00000008
        :pswitch_16a  #00000009
        :pswitch_15a  #0000000a
        :pswitch_166  #0000000b
        :pswitch_16e  #0000000c
        :pswitch_156  #0000000d
        :pswitch_152  #0000000e
        :pswitch_15e  #0000000f
        :pswitch_162  #00000010
        :pswitch_15e  #00000011
        :pswitch_172  #00000012
        :pswitch_14e  #00000013
    .end packed-switch
.end method
