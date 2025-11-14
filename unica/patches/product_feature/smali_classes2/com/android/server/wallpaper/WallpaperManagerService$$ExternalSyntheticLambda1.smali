.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    packed-switch v4, :pswitch_data_314

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    return-void

    :pswitch_11  #0x0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v2, v6, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iput v3, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v4}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_e4

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v6, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "cmf_color_code"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getDefaultDeviceColor : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CMFWallpaper"

    invoke-static {v8, v7}, Lcom/samsung/android/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_db

    const-string/jumbo v6, "ril.product_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "rilProductCode = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0xa

    if-ge v7, v9, :cond_85

    goto :goto_8e

    :cond_85
    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_8f

    :cond_8e
    :goto_8e
    move-object v7, v2

    :goto_8f
    iget-object v9, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mAlternativeCode:Ljava/lang/String;

    if-eqz v7, :cond_bf

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "rilProductCode=\'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', colorCode="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v9}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mHandler:Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;

    const/16 v8, 0x3f5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d7

    :cond_bf
    iget-object v6, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;

    if-eqz v6, :cond_c5

    :goto_c3
    move-object v6, v2

    goto :goto_d7

    :cond_c5
    new-instance v6, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;

    invoke-direct {v6, v4}, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;-><init>(Lcom/samsung/android/server/wallpaper/CMFWallpaper;)V

    iput-object v6, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;

    const-string v7, "ColorCodePollingThread"

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_c3

    :goto_d7
    invoke-virtual {v4, v6, v9}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_db
    invoke-static {v6}, Lcom/samsung/android/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    :cond_e4
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_ef

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v6, v6, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->updateLidStateFromInputManager()V

    :cond_ef
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsWallpaperInitialized:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperFileExists(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v7, v6, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_101
    iget-object v6, v6, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v6, v3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->loadSettingsLockedForSnapshot(I)V

    monitor-exit v7
    :try_end_107
    .catchall {:try_start_101 .. :try_end_107} :catchall_311

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-virtual {p0, v3, v6, v7, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    const/4 v8, 0x5

    invoke-virtual {p0, v3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    const/16 v9, 0x10

    const/16 v10, 0x11

    if-eqz v4, :cond_120

    sget-boolean v11, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v11, :cond_120

    invoke-virtual {p0, v3, v6, v9, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    invoke-virtual {p0, v3, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    :cond_120
    sget-boolean v11, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v11, :cond_12a

    invoke-virtual {p0, v3, v1, v9, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    invoke-virtual {p0, v3, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    :cond_12a
    sget-boolean v11, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    if-eqz v11, :cond_136

    invoke-virtual {p0, v3, v6, v5, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    const/16 v5, 0x9

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    :cond_136
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v5, :cond_14c

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVirtualWallpaperDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_14c

    const/16 v5, 0x20

    invoke-virtual {p0, v3, v1, v5, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    const/16 v5, 0x21

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    :cond_14c
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v5, v3, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    const-string/jumbo v6, "WallpaperManagerService"

    const-string/jumbo v11, "systemReady: initImageWallpaperCropFile - 1"

    invoke-static {v6, v11}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(ILcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v4, :cond_16f

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4, v3, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    const-string/jumbo v5, "systemReady: initImageWallpaperCropFile - 2"

    invoke-static {v6, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(ILcom/android/server/wallpaper/WallpaperData;)V

    :cond_16f
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v8, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v5, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v8, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v5, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v5, v4, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v5, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;

    invoke-direct {v5, v4}, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;-><init>(Lcom/samsung/android/server/wallpaper/LegibilityColor;)V

    iget-object v8, v4, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "accelerometer_rotation"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v4, v1}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v5

    iput-boolean v5, v4, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v5

    iput-boolean v5, v4, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v8, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v5, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_1cd
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$7;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$7;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v0, v4, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1d9
    .catch Landroid/os/RemoteException; {:try_start_1cd .. :try_end_1d9} :catch_1da

    goto :goto_1de

    :catch_1da
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1de
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/android/server/wallpaper/OMCWallpaper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "OMCWallpaper"

    const-string/jumbo v5, "registerOMCWallpaperUpdatedReceiver"

    invoke-static {v4, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

    invoke-direct {v6, v0}, Lcom/samsung/android/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;-><init>(Lcom/samsung/android/server/wallpaper/OMCWallpaper;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    const/4 v5, -0x1

    if-eqz v0, :cond_218

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    if-ne v0, v5, :cond_217

    goto :goto_218

    :cond_217
    move v1, v3

    :cond_218
    :goto_218
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/android/server/wallpaper/OMCWallpaper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "checkTSSActivation"

    invoke-static {v4, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/wallpaper_status"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_250

    :try_start_245
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_24d} :catch_24e

    goto :goto_253

    :catch_24e
    move-object v0, v2

    goto :goto_253

    :cond_250
    const-string/jumbo v0, "false"

    :goto_253
    const-string/jumbo v6, "mdc.singlesku.activated"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "checkTSSActivation, old= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", new="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2f3

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_28c

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v1, :cond_28c

    invoke-static {v0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    :cond_28c
    const-string/jumbo v0, "saveTSSActivation, "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_2ae
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b1} :catch_2b2

    goto :goto_2b6

    :catch_2b2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2b6
    :try_start_2b6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2bb} :catch_2db
    .catchall {:try_start_2b6 .. :try_end_2bb} :catchall_2d9

    :try_start_2bb
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo v0, "save done"

    invoke-static {v4, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2ca} :catch_2d6
    .catchall {:try_start_2bb .. :try_end_2ca} :catchall_2d3

    :try_start_2ca
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_2cd} :catch_2ce

    goto :goto_2e4

    :catch_2ce
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e4

    :catchall_2d3
    move-exception p0

    move-object v2, v1

    goto :goto_2e8

    :catch_2d6
    move-exception v0

    move-object v2, v1

    goto :goto_2dc

    :catchall_2d9
    move-exception p0

    goto :goto_2e8

    :catch_2db
    move-exception v0

    :goto_2dc
    :try_start_2dc
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2df
    .catchall {:try_start_2dc .. :try_end_2df} :catchall_2d9

    if-eqz v2, :cond_2e4

    :try_start_2e1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e4
    .catch Ljava/io/IOException; {:try_start_2e1 .. :try_end_2e4} :catch_2ce

    :cond_2e4
    :goto_2e4
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    goto :goto_310

    :goto_2e8
    if-eqz v2, :cond_2f2

    :try_start_2ea
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2ed
    .catch Ljava/io/IOException; {:try_start_2ea .. :try_end_2ed} :catch_2ee

    goto :goto_2f2

    :catch_2ee
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2f2
    :goto_2f2
    throw p0

    :cond_2f3
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_310

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tss_activated"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_310

    if-ne v2, v5, :cond_310

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    :cond_310
    :goto_310
    return-void

    :catchall_311
    move-exception p0

    :try_start_312
    monitor-exit v7
    :try_end_313
    .catchall {:try_start_312 .. :try_end_313} :catchall_311

    throw p0

    :pswitch_data_314
    .packed-switch 0x0
        :pswitch_11  #00000000
    .end packed-switch
.end method
