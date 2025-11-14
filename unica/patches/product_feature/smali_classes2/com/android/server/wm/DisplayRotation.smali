.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final isDefaultDisplay:Z

.field public mAllowAllRotations:I

.field public final mAllowRotationResolver:Z

.field public mAllowSeamlessRotationDespiteNavBarMoving:Z

.field public mCameraRotationMode:I

.field public final mCarDockRotation:I

.field public final mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAppOrientation:I

.field final mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

.field public mDefaultFixedToUserRotation:Z

.field public mDeferredRotationPauseCount:I

.field public mDemoHdmiRotation:I

.field public mDemoHdmiRotationLock:Z

.field public mDemoRotation:I

.field public mDemoRotationLock:Z

.field public final mDeskDockRotation:I

.field public final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

.field public final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field public mFixedToUserRotation:I

.field public final mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

.field mLandscapeRotation:I

.field public mLastOrientation:I

.field public mLastRotationForOrientationInfo:Ljava/lang/String;

.field public mLastSensorRotation:I

.field public final mLidOpenRotation:I

.field public final mLock:Ljava/lang/Object;

.field public final mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I

.field public mRotation:I

.field public mRotationChoiceShownToUserForConfirmation:I

.field public final mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field public final mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field mSeascapeRotation:I

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field public mShowRotationSuggestions:I

.field public final mSupportAutoRotation:Z

.field public final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field public mUserRotation:I

.field public mUserRotationMode:I


# direct methods
.method public static -$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "show_rotation_suggestions"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    :goto_0
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v6, v2, :cond_1

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    move v2, v5

    :goto_1
    const-string/jumbo v6, "user_rotation"

    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v7, v6, :cond_2

    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    const-string/jumbo v7, "accelerometer_rotation"

    invoke-static {v0, v7, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v8, v7, :cond_4

    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    move v2, v4

    move v6, v2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    :cond_5
    const-string/jumbo v2, "camera_autorotate"

    invoke-static {v0, v2, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    if-eq v2, v0, :cond_6

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    goto :goto_4

    :cond_6
    move v4, v6

    :goto_4
    monitor-exit v1

    return v4

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-boolean p4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p5, 0x1110269

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p7, 0x1110025

    invoke-virtual {p5, p7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    const p5, 0x10e00e3

    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    const p5, 0x10e0066

    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    const p5, 0x10e0099

    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    const p5, 0x10e0184

    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    instance-of p5, p3, Landroid/view/DisplayAddress$Physical;

    const-string p7, ""

    if-eqz p5, :cond_0

    check-cast p3, Landroid/view/DisplayAddress$Physical;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ro.bootanim.set_orientation_"

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v2

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p7

    :goto_0
    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    iget-boolean p5, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p5, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "ro.bootanim.set_orientation_logical_"

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p5, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string/jumbo p5, "ORIENTATION_90"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo p5, "ORIENTATION_180"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p3, 0x2

    goto :goto_1

    :cond_3
    const-string/jumbo p5, "ORIENTATION_270"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    goto :goto_1

    :cond_4
    move p3, v1

    :goto_1
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iput-object p9, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    if-eqz p4, :cond_5

    iput p3, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    :cond_5
    new-instance p5, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    const/4 p7, 0x0

    invoke-direct {p5, p7, p0}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result p7

    if-eqz p7, :cond_8

    iget-boolean p7, p8, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    if-eqz p7, :cond_8

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p7, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz p7, :cond_7

    iget p7, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    if-ne p2, p7, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Multiple clients unsupported. Incoming displayId: "

    const-string p3, ", existing displayId: "

    invoke-static {p2, p1, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    iput-object p5, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    iput p2, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    iget p2, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    iget p7, p9, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    if-eq p2, p7, :cond_8

    invoke-virtual {p5}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->run()V

    :cond_8
    const/4 p2, 0x0

    if-eqz p4, :cond_a

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    new-instance p5, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-direct {p5, p0, p6, p4, p3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget-object p7, p5, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter p7

    :try_start_0
    iput p3, p5, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    monitor-exit p7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p3, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {p3, p0, p4}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo p5, "show_rotation_suggestions"

    invoke-static {p5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo p5, "accelerometer_rotation"

    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo p5, "user_rotation"

    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo p5, "camera_autorotate"

    invoke-static {p5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4, p5, v1, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z

    if-eqz p1, :cond_9

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1070108

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_9

    new-instance p1, Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    return-void

    :cond_9
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    const-string v2, "  mRotation="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDeferredRotationPauseCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    const-string v2, "  mLandscapeRotation="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSeascapeRotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUpsideDownRotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-static {v0, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_1

    const-string v1, "  "

    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mSensorType=null"

    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "WindowOrientationListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mCurrentRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mSensor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mRate="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDeskDockRotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    const-string/jumbo v1, "USER_ROTATION_LOCKED"

    goto :goto_3

    :cond_3
    const-string/jumbo v1, "USER_ROTATION_FREE"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUserRotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mCameraRotationMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mAllowAllRotations="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const-string/jumbo v1, "true"

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "false"

    goto :goto_4

    :cond_6
    const-string/jumbo v1, "unknown"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDemoHdmiRotationLock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUndockedHdmiRotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FoldController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPauseAutorotationDuringUnfolding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    const-string v3, "  mShouldDisableRotationSensor="

    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    const-string v3, "  mShouldIgnoreSensorRotation="

    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    const-string v3, "  mLastDisplaySwitchTime="

    invoke-static {v0, v1, p2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-wide v3, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastHingeAngleEventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-wide v3, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDeviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  RotationHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mTimestamp:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mFromRotation:I

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mToRotation:I

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  source="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotationMode:I

    if-eqz v4, :cond_a

    if-eq v4, v2, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_9
    const-string/jumbo v4, "USER_ROTATION_LOCKED"

    goto :goto_6

    :cond_a
    const-string/jumbo v4, "USER_ROTATION_FREE"

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotation:I

    invoke-static {v4}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sensor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSensorRotation:I

    invoke-static {v4}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mIgnoreOrientationRequest:Z

    if-eqz v3, :cond_b

    const-string v3, "  ignoreRequest=true"

    invoke-static {p2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    if-eqz v3, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  requestingTda="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mHalfFoldSavedRotation:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " halfFoldSavedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mInHalfFoldTransition="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mInHalfFoldTransition:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFoldState="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    iget-object v3, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDisplayRotationCompatPolicySummary:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-static {p2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mRotationReversionSlots:[Z

    if-eqz v1, :cond_8

    const-string v3, " reversionSlots= NOSENSOR "

    invoke-static {p1, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-boolean v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", CAMERA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " HALF_FOLD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-boolean v1, v1, v4

    invoke-static {v3, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  RotationLockHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mTimestamp:J

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotationMode:I

    if-eqz v3, :cond_11

    if-eq v3, v2, :cond_10

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_10
    const-string/jumbo v3, "USER_ROTATION_LOCKED"

    goto :goto_8

    :cond_11
    const-string/jumbo v3, "USER_ROTATION_FREE"

    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mUserRotation:I

    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->mCaller:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_7

    :cond_12
    return-void
.end method

.method public getDemoUserRotationOverride()I
    .locals 1

    const-string/jumbo p0, "persist.demo.userrotation"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDemoUserRotationPackage()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "persist.demo.userrotation.package_name"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    return-object p0
.end method

.method public initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
    .locals 2

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v0, p1, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v1, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;-><init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method public final isAnyPortrait(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isFixedToUserRotation()Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public final isLandscapeOrSeascape(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onDisplayRemoved()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    iget-object v2, v1, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to remove non-matching callback. DisplayId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    const-string v2, "DisplayRotationCoordinator"

    invoke-static {v0, v1, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleSensorEventListener:Lcom/android/server/wm/DisplayRotation$FoldController$2;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    return-void
.end method

.method public final readRotation(I)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_2

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_1

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :catch_0
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final rotationForOrientation(IIZ)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_1
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_3

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    int-to-long v8, v1

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v10, v2

    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v12}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v13, v13

    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v15, v4, :cond_2

    const-string/jumbo v15, "USER_ROTATION_LOCKED"

    goto :goto_0

    :cond_2
    const-string v15, ""

    :goto_0
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v11, v12

    move-object v13, v15

    move-object v12, v9

    move-object v9, v6

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, 0x168a6669b4823025L

    const/16 v9, 0x444

    invoke-static {v4, v7, v8, v9, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rotationForOrientation, orientationSource="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mLastRotationForOrientationInfo:Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0

    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v5, :cond_7

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-eqz v5, :cond_7

    move v3, v4

    :cond_7
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v6, :cond_8

    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    iget-object v6, v5, Lcom/android/server/wm/DeviceStateController;->mReverseRotationAroundZAxisStates:Ljava/util/List;

    iget v5, v5, Lcom/android/server/wm/DeviceStateController;->mCurrentState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_9

    invoke-static {v3}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    move-result v3

    :cond_9
    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    if-gez v3, :cond_a

    move v3, v2

    :cond_a
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v5, v5, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v6, v6, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v10, v9, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    iget-boolean v11, v9, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v14, 0xb

    if-nez v12, :cond_c

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    :goto_4
    const/16 p3, 0x0

    :cond_b
    :goto_5
    const/4 v12, 0x1

    goto/16 :goto_c

    :cond_c
    const/4 v12, 0x1

    if-ne v5, v12, :cond_d

    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v5, :cond_d

    move v4, v5

    goto :goto_4

    :cond_d
    const/4 v5, 0x2

    if-ne v6, v5, :cond_10

    if-nez v10, :cond_e

    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v12, :cond_10

    :cond_e
    if-eqz v10, :cond_f

    :goto_6
    move v4, v3

    goto :goto_4

    :cond_f
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    goto :goto_6

    :cond_10
    const/4 v10, 0x5

    const/16 v12, 0xe

    const/4 v15, 0x4

    const/16 p3, 0x0

    const/4 v7, 0x3

    const/4 v13, 0x1

    if-eq v6, v13, :cond_11

    if-eq v6, v7, :cond_11

    if-ne v6, v15, :cond_14

    :cond_11
    if-nez v11, :cond_12

    iget v13, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v13, :cond_14

    :cond_12
    if-eq v1, v12, :cond_14

    if-eq v1, v10, :cond_14

    if-eqz v11, :cond_13

    :goto_7
    move v4, v3

    goto :goto_5

    :cond_13
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    goto :goto_7

    :cond_14
    if-eqz v8, :cond_15

    iget-boolean v11, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v11, :cond_15

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_5

    :cond_15
    if-eqz v8, :cond_16

    if-nez v6, :cond_16

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v6, :cond_16

    move v4, v6

    goto :goto_5

    :cond_16
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v6, :cond_17

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_5

    :cond_17
    iget-boolean v6, v9, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    if-eqz v6, :cond_18

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    goto :goto_5

    :cond_18
    if-ne v1, v12, :cond_19

    const/4 v12, 0x1

    goto/16 :goto_a

    :cond_19
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v6, :cond_1a

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v3, v7, :cond_b

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_5

    :cond_1a
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v7, 0xa

    const/16 v8, 0xd

    if-eqz v6, :cond_1c

    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v9, :cond_1b

    iget-boolean v11, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v11, :cond_1b

    iget-object v9, v9, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v11, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v9, v11, :cond_1b

    const/4 v9, 0x1

    goto :goto_8

    :cond_1b
    move/from16 v9, p3

    :goto_8
    if-eqz v9, :cond_1d

    :cond_1c
    if-eq v1, v5, :cond_1f

    if-eq v1, v4, :cond_1f

    if-eq v1, v14, :cond_1f

    const/16 v9, 0xc

    if-eq v1, v9, :cond_1f

    if-eq v1, v8, :cond_1f

    :cond_1d
    if-eq v1, v15, :cond_1f

    if-eq v1, v7, :cond_1f

    const/4 v9, 0x6

    if-eq v1, v9, :cond_1f

    const/4 v9, 0x7

    if-ne v1, v9, :cond_1e

    goto :goto_9

    :cond_1e
    const/4 v12, 0x1

    if-ne v6, v12, :cond_b

    if-eq v1, v10, :cond_b

    if-eqz v1, :cond_b

    if-eq v1, v12, :cond_b

    const/16 v3, 0x8

    if-eq v1, v3, :cond_b

    const/16 v3, 0x9

    if-eq v1, v3, :cond_b

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto/16 :goto_5

    :cond_1f
    :goto_9
    if-ne v3, v5, :cond_22

    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v5, v4, :cond_20

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    :cond_20
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v12, 0x1

    if-eq v4, v12, :cond_23

    if-eq v1, v7, :cond_23

    if-ne v1, v8, :cond_21

    goto :goto_b

    :cond_21
    :goto_a
    move v4, v2

    goto :goto_c

    :cond_22
    const/4 v12, 0x1

    :cond_23
    :goto_b
    move v4, v3

    :goto_c
    if-eqz v1, :cond_2f

    if-eq v1, v12, :cond_2d

    if-eq v1, v14, :cond_2a

    const/16 v9, 0xc

    if-eq v1, v9, :cond_27

    packed-switch v1, :pswitch_data_0

    if-ltz v4, :cond_24

    goto :goto_e

    :cond_24
    return p3

    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_e

    :cond_25
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0

    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_e

    :cond_26
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0

    :cond_27
    :pswitch_2
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_e

    :cond_28
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_d

    :cond_29
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    :cond_2a
    :pswitch_3
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_e

    :cond_2b
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    :goto_d
    return v2

    :cond_2c
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    :cond_2d
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_e

    :cond_2e
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    :cond_2f
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_30

    :goto_e
    return v4

    :cond_30
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setFixedToUserRotation(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return-void
.end method

.method public setUserRotation(IILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->useDefaultSettingsProvider()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string/jumbo p1, "accelerometer_rotation"

    const/4 p3, -0x2

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo p1, "user_rotation"

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_2
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq p3, p1, :cond_3

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    move p3, v1

    goto :goto_1

    :cond_3
    move p3, v0

    :goto_1
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v2, p2, :cond_4

    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_2

    :cond_4
    move v1, p3

    :goto_2
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p3, p3, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v4, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v4, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    invoke-virtual {p3, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    iget-object p0, v2, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_5

    iget p1, p0, Lcom/android/server/wm/ContentRecorder;->mLastOrientation:I

    iget p2, p0, Lcom/android/server/wm/ContentRecorder;->mLastWindowingMode:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    :cond_5
    return-void
.end method

.method public shouldRotateSeamlessly(IIZ)Z
    .locals 5

    iget-boolean p3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    move-result v3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    move-result p3

    if-nez v3, :cond_0

    if-nez p3, :cond_0

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo p3, "reject_seamless_rot(starting)"

    invoke-virtual {v0, p3, v1}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    :cond_1
    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v2

    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_3

    if-eqz p3, :cond_e

    const-string/jumbo p0, "reject_seamless_rot"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    return v2

    :cond_3
    if-eqz p3, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p3, p3, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_f

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq p3, v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_6

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-nez v3, :cond_c

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    if-eq p2, p0, :cond_a

    goto :goto_2

    :cond_a
    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    if-eqz p0, :cond_b

    goto :goto_2

    :cond_b
    return v2

    :cond_c
    :goto_2
    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_3

    :cond_e
    return v1

    :cond_f
    :goto_3
    return v2
.end method

.method public final updateOrientation(IZ)Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    return v1

    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-nez v2, :cond_6

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v3

    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-ne v3, v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v2}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_6
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result p0

    return p0
.end method

.method public final updateOrientationListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateOrientationListenerLw()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v8, v7, v3

    if-eqz v8, :cond_2

    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    int-to-long v8, v8

    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v10, v10, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, -0x21ac519cf589c1c6L

    const/16 v12, 0xfdf

    invoke-static {v11, v9, v10, v12, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    const/4 v8, 0x0

    if-eqz v1, :cond_11

    if-nez v2, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x11101ba

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v9, 0x1b

    if-ne v2, v9, :cond_11

    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_4
    :goto_1
    if-eqz v5, :cond_11

    if-nez v6, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :goto_2
    move v1, v4

    goto/16 :goto_4

    :cond_7
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    const-string/jumbo v2, "WindowManager"

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v1, :cond_8

    iget-boolean v1, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "shouldDisableRotationSensor, rotation sensor is disabled due to cover policy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "shouldDisableRotationSensor, rotation sensor is disabled due to proximity sensor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v1, :cond_a

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v1, v2, :cond_b

    const/16 v5, 0xa

    if-eq v1, v5, :cond_b

    const/4 v5, 0x7

    if-eq v1, v5, :cond_b

    const/4 v5, 0x6

    if-ne v1, v5, :cond_c

    :cond_b
    :goto_3
    move v1, v3

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v6, v5, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    if-eqz v6, :cond_d

    const/4 v6, 0x2

    if-eq v1, v6, :cond_b

    :cond_d
    iget-boolean v5, v5, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    if-eqz v5, :cond_e

    if-eq v1, v3, :cond_b

    const/4 v5, 0x3

    if-eq v1, v5, :cond_b

    if-ne v1, v2, :cond_e

    goto :goto_3

    :cond_e
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v1, v3, :cond_f

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne v1, v3, :cond_6

    goto :goto_3

    :cond_f
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    :goto_4
    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v2, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v2, :cond_10

    iput-boolean v3, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    aget-boolean v1, v7, v3

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x5ce254014b33080L

    invoke-static {v1, v5, v6, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_10
    move v1, v4

    goto :goto_6

    :cond_11
    :goto_5
    move v1, v3

    :goto_6
    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iput-boolean v4, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x406b09bf53253cd8L    # 216.3046050765322

    invoke-static {v0, v1, v2, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_12
    :goto_7
    return-void
.end method

.method public final updateRotationAndSendNewConfigIfChanged()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    :cond_0
    return v0
.end method

.method public final updateRotationUnchecked(Z)Z
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_5

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-lez v6, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x5e0b2e75d386c675L    # -4.168039617495083E-145

    invoke-static {v0, v1, v2, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v5

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x673f09e71a893134L

    invoke-static {v0, v1, v2, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v5

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_2

    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_2
    move-object v6, v3

    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    move-result v1

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v5

    :goto_2
    if-eqz v1, :cond_5

    const/4 v1, -0x2

    iput v1, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return v5

    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v1, :cond_6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x1ed6693e8b42c2fcL    # -1.1242403078993441E160

    invoke-static {v0, v1, v2, v5, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v5

    :cond_6
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {v0, v6, v1, v4}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(IIZ)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    const/4 v9, -0x1

    const/4 v10, 0x2

    if-eqz v8, :cond_9

    iget-boolean v11, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v11, :cond_7

    iget-object v11, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v12, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v11, v12, :cond_7

    iget-boolean v11, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-nez v11, :cond_7

    iget-boolean v11, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    if-eqz v11, :cond_7

    iget-object v11, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v12, v11, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    iget-object v12, v12, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v12, v12, v10

    if-eqz v12, :cond_7

    iget v11, v11, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v11, v4, :cond_7

    move v11, v4

    goto :goto_3

    :cond_7
    move v11, v5

    :goto_3
    if-eqz v11, :cond_9

    iget v11, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    iput v9, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    iget-object v12, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v12, v12, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    iput-boolean v5, v8, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_8

    invoke-static {v11}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x9336858471d306cL

    filled-new-array {v8, v12, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v13, v14, v15, v5, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_8
    move v7, v11

    :cond_9
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v8}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-boolean v8, v8, Lcom/android/server/wm/DeviceStateController;->mMatchBuiltInDisplayOrientationToDefaultDisplay:Z

    if-eqz v8, :cond_a

    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    iget v7, v7, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    invoke-static {v7}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    move-result v7

    :cond_a
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v8, :cond_d

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v11, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v8, v11, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v8, :cond_c

    :cond_b
    move v8, v5

    goto :goto_4

    :cond_c
    iget-object v8, v11, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v8

    if-eqz v8, :cond_b

    iget v8, v8, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_b

    const-string v8, "ChangeTransitionController"

    const-string/jumbo v11, "keepRotation: launch remoteTransition on consistent rotation."

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v4

    :goto_4
    if-eqz v8, :cond_d

    move v7, v1

    :cond_d
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_e

    invoke-static {v7}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    int-to-long v12, v7

    int-to-long v14, v2

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move/from16 p1, v10

    move-object/from16 v16, v11

    int-to-long v10, v6

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-wide/from16 v19, v10

    int-to-long v9, v1

    const/4 v11, 0x6

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v14, v8

    move-object v8, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v9

    filled-new-array/range {v11 .. v18}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v10, 0x4f5456d82a363693L    # 1.4374527710116015E74

    const/16 v12, 0x1114

    invoke-static {v8, v10, v11, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    move/from16 p1, v10

    :goto_5
    if-ne v1, v7, :cond_10

    :cond_f
    return v5

    :cond_10
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v8, :cond_11

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    iput v7, v8, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    iget-object v8, v8, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz v8, :cond_11

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_11
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    aget-boolean v8, v8, p1

    if-eqz v8, :cond_12

    int-to-long v8, v2

    int-to-long v10, v7

    int-to-long v12, v1

    int-to-long v14, v6

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    int-to-long v3, v2

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v5, v2

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    move-wide/from16 v19, v3

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    filled-new-array/range {v21 .. v27}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v5, -0x17b6afca0c08c3c2L    # -2.3098106839233037E194

    const/16 v3, 0x1555

    invoke-static {v4, v5, v6, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_12
    iput v7, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "setRotation: rotation="

    invoke-static {v7, v3, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    iget-object v3, v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mBoosterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_13

    iget-object v4, v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "PWM_ROTATION"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_13

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_13
    :goto_6
    iget-object v2, v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-string v4, "HINT_PWM_ROTATION"

    invoke-static {v2, v4}, Lcom/android/server/policy/WindowWakeUpPolicy;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_8

    :goto_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_14
    :goto_8
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v2, :cond_16

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v4, :cond_15

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TspStateController;->setOrientation(ZZ)V

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v4, 0x0

    :goto_a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    if-eqz v2, :cond_17

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v4, v4}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    :cond_17
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->setRotatingOrDisplaySwitching(ZZ)V

    :cond_18
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    :goto_b
    const/4 v3, 0x1

    if-eqz v6, :cond_1c

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    goto :goto_c

    :cond_1b
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;

    invoke-direct {v5, v2, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {v2, v5, v3}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    :cond_1c
    :goto_c
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v5, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v2, :cond_1e

    new-instance v2, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v2, v3, v1, v4}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(III)V

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    goto :goto_d

    :cond_1d
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    new-instance v4, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation;I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v2, v6, v4}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    :cond_1e
    :goto_d
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenStarting()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string/jumbo v1, "split_screen_starting"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    return v3

    :cond_1f
    const/4 v3, 0x1

    return v3

    :cond_20
    const/4 v3, 0x1

    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    new-instance v5, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation;I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v2, v6, v5}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    return v3
.end method

.method public uptimeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public useDefaultSettingsProvider()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    return p0
.end method
