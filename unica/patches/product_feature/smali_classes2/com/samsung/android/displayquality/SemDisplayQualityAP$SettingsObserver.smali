.class final Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observeByName(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object v0, v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public observeByUri(Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object v0, v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    sget-object p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object p1, p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_d
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-object v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, v0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->isBrightnessModeAuto(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-boolean p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    if-eqz p2, :cond_23

    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOn()V

    goto :goto_26

    :catchall_21
    move-exception p0

    goto :goto_28

    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleAutoBrightnessModeOff()V

    :goto_26
    monitor-exit p1

    return-void

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_21

    throw p0

    :cond_2a
    sget-object p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->getScreenModeSetting()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenModeChanged(I)V

    :cond_3d
    return-void
.end method
