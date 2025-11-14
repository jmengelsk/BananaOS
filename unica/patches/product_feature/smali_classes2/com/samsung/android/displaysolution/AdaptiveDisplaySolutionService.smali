.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final AUTO_CURRENT_LIMIT_VERSION:I

.field public final AVAILABLE_ADAPTIVE_CONTROL:Z

.field public mACLwithBrightness:Z

.field public mADSEnableCondition:Z

.field public final mAdaptiveControlValues:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAutoCurrentLimitValue:I

.field public mDetailViewState:Z

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    iput v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v3, "AdaptiveDisplaySolutionServiceThread"

    invoke-static {v3}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const-string v3, "/sys/class/lcd/panel/adaptive_control"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "AdaptiveDisplaySolutionService"

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x107008b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0025

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const-string v6, "AUTO_CURRENT_LIMIT_VERSION : "

    invoke-static {v3, v6, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    :goto_0
    new-instance v3, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;

    invoke-direct {v8, p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo p0, "sys.adaptivedisplaysolution.adson"

    const-string/jumbo p1, "false"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string/jumbo p1, "true"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "AdaptiveDisplaySolutionService Enabled"

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fileWriteInt(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final setAutoCurrentLimitState(Z)V
    .locals 2

    const-string/jumbo v0, "setAutoCurrentLimitState("

    const-string v1, ") , mADSEnableCondition : "

    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    const-string v0, "AdaptiveDisplaySolutionService"

    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final setAutoCurrentLimitStateWithBrightness(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    const-string/jumbo v1, "setAutoCurrentLimitStateWithBrightness("

    const-string v2, ") , mADSEnableCondition : "

    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    const-string v3, "AdaptiveDisplaySolutionService"

    invoke-static {v3, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(IZ)V

    return-void
.end method

.method public final setGalleryDetailViewMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setGalleryDetailViewMode() : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mADSEnableCondition : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    const-string v0, "AdaptiveDisplaySolutionService"

    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final updateAdaptiveControlStateInt(I)V
    .locals 6

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateAdaptiveControlStateInt("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    const-string v2, ")"

    const-string v3, "AdaptiveDisplaySolutionService"

    invoke-static {v0, v2, v3, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v0, "DisplaySolution"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_1

    const-string p0, "!AVAILABLE_ADAPTIVE_CONTROL"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    :cond_3
    invoke-virtual {p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[AdaptiveControl]: ACL VALUE ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    invoke-static {v0, v2, v3, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "/sys/class/lcd/panel/adaptive_control"

    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v0, "/sys/class/lcd/panel1/adaptive_control"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    invoke-static {p1, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(ILjava/lang/String;)V

    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    return-void
.end method

.method public final updateAdaptiveControlStatewithBrightness(IZ)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAdaptiveControlStatewithBrightness("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v0, :cond_0

    const-string p0, "!AVAILABLE_ADAPTIVE_CONTROL"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "/sys/class/lcd/panel/adaptive_control"

    const-string v4, "/sys/class/lcd/panel1/adaptive_control"

    if-eqz p2, :cond_2

    const/16 p2, 0xff

    if-lt p1, p2, :cond_2

    const-string/jumbo p1, "[AdaptiveControl]: ACL OFF(with brightness)"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    array-length p0, v0

    sub-int/2addr p0, v2

    :goto_0
    if-ltz p0, :cond_4

    aget-object p1, v0, p0

    invoke-static {v3, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    aget-object p1, v0, p0

    invoke-static {v4, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "[AdaptiveControl]: ACL ON(with brightness)"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    :goto_1
    array-length p0, v0

    if-ge v2, p0, :cond_4

    aget-object p0, v0, v2

    invoke-static {v3, p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    aget-object p0, v0, v2

    invoke-static {v4, p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
