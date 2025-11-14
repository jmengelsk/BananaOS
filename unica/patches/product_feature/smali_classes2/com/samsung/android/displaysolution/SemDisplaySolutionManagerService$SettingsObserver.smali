.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

.field public final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

.field public final SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p1, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string/jumbo p1, "high_brightness_mode_pms_enter"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_mode_automatic_setting"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_extra_brightness"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 6

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAutoBrightnessModeEnabled : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-boolean v2, v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-boolean v2, v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    invoke-static {v1, p1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-boolean v2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    if-nez v2, :cond_54

    iget-boolean v2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    if-eqz v2, :cond_54

    const-string/jumbo v2, "extra_brightness_on"

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_5a

    :cond_54
    const-string/jumbo v2, "extra_brightness_off"

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    return-void

    :cond_6c
    :goto_6c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mHighBrightnessModeEnabled : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-boolean p2, p2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-boolean p2, p2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-static {v1, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    if-nez p2, :cond_b3

    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-nez p2, :cond_b3

    iget-object p1, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-object v0, v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_ad

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    :cond_ad
    const-string p0, "IRC Mode : flat_gamma_mode"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b3
    iget-object p1, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-object p2, p2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_ce

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    :cond_ce
    const-string p0, "IRC Mode : moderato_mode"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
