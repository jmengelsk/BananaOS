.class public final Lcom/android/server/wm/DisplayRotation$OrientationListener;
.super Lcom/android/server/wm/WindowOrientationListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public transient mEnabled:Z

.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public final isRotationResolverEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onProposedRotationChanged(I)V
    .locals 9

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x7861325684edc9ddL    # -5.694061101619302E-272

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, v2, v2}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    iget-boolean v3, v3, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/RotationWatcherController;->dispatchProposedRotation(Lcom/android/server/wm/DisplayContent;I)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v5, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v4, v3, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    move-result v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_1
    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_4
    move v3, v2

    :goto_2
    const/4 v4, -0x1

    const/4 v5, 0x2

    if-nez v3, :cond_5

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, v1, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v3, :cond_6

    iget-boolean v6, v3, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v6, :cond_6

    iget-object v3, v3, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v6, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v3, v6, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    if-ne v3, v1, :cond_9

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v3, :cond_9

    goto :goto_4

    :cond_9
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    if-ne v3, v5, :cond_a

    goto :goto_4

    :cond_a
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v7, v6, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    if-eq v3, v1, :cond_b

    const/4 v8, 0x3

    if-eq v3, v8, :cond_b

    const/4 v8, 0x4

    if-ne v3, v8, :cond_c

    :cond_b
    if-nez v7, :cond_c

    goto :goto_4

    :cond_c
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eqz v6, :cond_d

    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v6, :cond_e

    if-nez v3, :cond_e

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v3, :cond_e

    goto :goto_4

    :cond_e
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_f
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    if-eqz v3, :cond_10

    goto :goto_4

    :cond_10
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v3, :cond_11

    goto :goto_4

    :cond_11
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v4, :cond_12

    if-eq v0, v5, :cond_12

    packed-switch v0, :pswitch_data_0

    :goto_4
    move v0, v2

    goto :goto_5

    :cond_12
    :pswitch_0
    move v0, v1

    :goto_5
    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iput p1, v0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v3, v4, :cond_13

    if-eq v3, v5, :cond_13

    packed-switch v3, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    if-ltz p1, :cond_16

    goto :goto_7

    :pswitch_2
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_16

    goto :goto_7

    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    goto :goto_7

    :cond_13
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v3, v4, :cond_14

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    :cond_14
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v0, v1, :cond_15

    if-ltz p1, :cond_16

    goto :goto_7

    :cond_15
    if-ltz p1, :cond_16

    if-eq p1, v5, :cond_16

    goto :goto_7

    :cond_16
    :goto_6
    move v1, v2

    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_8

    :cond_17
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_18

    :try_start_3
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->onProposedRotationChanged(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_18
    :goto_8
    return-void

    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->enable$1()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    const-string/jumbo p0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WindowOrientationListener"

    const-string/jumbo v2, "WindowOrientationListener disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    :cond_3
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
