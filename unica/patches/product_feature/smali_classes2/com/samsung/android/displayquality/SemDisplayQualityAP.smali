.class public abstract Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field protected static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field protected static final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field protected static final SCREEN_MODE_ADAPTIVE:I = 0x4

.field protected static final SCREEN_MODE_AMOLED_CINEMA:I = 0x0

.field protected static final SCREEN_MODE_AMOLED_PHOTO:I = 0x1

.field protected static final SCREEN_MODE_BASIC:I = 0x2

.field protected static final SCREEN_MODE_NATURAL:I = 0x3

.field protected static final SCREEN_MODE_READING:I = 0x5

.field protected static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field protected static final SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SemDisplayQualityAP"


# instance fields
.field protected DEBUG:Z

.field protected final mBrightnessModeLock:Ljava/lang/Object;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected final mContext:Landroid/content/Context;

.field protected mIsBrightnessModeAuto:Z

.field protected mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

.field protected mUseScreenStatusAsyncHandle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "screen_mode_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mUseScreenStatusAsyncHandle:Z

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    if-eqz p0, :cond_47

    const-string/jumbo p0, "SemDisplayQualityAP"

    invoke-static {p0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method


# virtual methods
.method public enhanceOutdoorVisibilityByLux(I)V
    .registers 2

    return-void
.end method

.method public getScreenModeSetting()I
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_mode_setting"

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public abstract handleAutoBrightnessModeOff()V
.end method

.method public abstract handleAutoBrightnessModeOn()V
.end method

.method public abstract handleScreenModeChanged(I)V
.end method

.method public abstract handleScreenOff()V
.end method

.method public abstract handleScreenOffAsync()V
.end method

.method public abstract handleScreenOn()V
.end method

.method public abstract handleScreenOnAsync()V
.end method

.method public isBrightnessModeAuto(Landroid/content/ContentResolver;)Z
    .registers 4

    const/4 p0, -0x2

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_d

    return p1

    :cond_d
    return v1
.end method

.method public setAdaptiveSync(Z)V
    .registers 2

    return-void
.end method

.method public startScreenStatusReceiver()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    if-nez v1, :cond_13

    const-string/jumbo p0, "SemDisplayQualityAP"

    const-string/jumbo v0, "mContext is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;I)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startSettingObserver(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    if-nez v0, :cond_e

    const-string/jumbo p0, "SemDisplayQualityAP"

    const-string/jumbo p1, "mContext is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->observeByUri(Landroid/net/Uri;)V

    return-void
.end method
