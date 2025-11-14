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
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public final isRotationResolverEnabled()Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_1a

    return v1

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final onProposedRotationChanged(I)V
    .registers 11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1a

    int-to-long v2, p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x7861325684edc9ddL  # -5.694061101619302E-272

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    const/4 v2, 0x0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, v2, v2}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    iget-boolean v3, v3, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    if-eqz v3, :cond_43

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_35
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/RotationWatcherController;->dispatchProposedRotation(Lcom/android/server/wm/DisplayContent;I)V

    monitor-exit v3

    goto :goto_43

    :catchall_40
    move-exception p0

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_40

    throw p0

    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    if-eqz v3, :cond_74

    iget-object v4, v3, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v4, v4, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v5, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    move v3, v2

    goto :goto_6a

    :cond_58
    iget-object v4, v3, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_62
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforcedLocked(I)Z

    move-result v3

    monitor-exit v4
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_6a
    if-eqz v3, :cond_74

    move v3, v1

    goto :goto_75

    :catchall_6e
    move-exception p0

    :try_start_6f
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_74
    move v3, v2

    :goto_75
    const/4 v4, -0x1

    const/4 v5, 0x2

    if-nez v3, :cond_7f

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, v1, :cond_7f

    goto/16 :goto_e7

    :cond_7f
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v3, :cond_8f

    iget-boolean v6, v3, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    if-eqz v6, :cond_8f

    iget-object v3, v3, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v6, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v3, v6, :cond_8f

    move v3, v1

    goto :goto_90

    :cond_8f
    move v3, v2

    :goto_90
    if-eqz v3, :cond_93

    goto :goto_e7

    :cond_93
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_9a

    goto :goto_e7

    :cond_9a
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    if-ne v3, v1, :cond_a5

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v3, :cond_a5

    goto :goto_e7

    :cond_a5
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    if-ne v3, v5, :cond_ac

    goto :goto_e7

    :cond_ac
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v7, v6, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    if-eq v3, v1, :cond_b8

    const/4 v8, 0x3

    if-eq v3, v8, :cond_b8

    const/4 v8, 0x4

    if-ne v3, v8, :cond_bb

    :cond_b8
    if-nez v7, :cond_bb

    goto :goto_e7

    :cond_bb
    iget-boolean v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eqz v6, :cond_c4

    iget-boolean v7, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v7, :cond_c4

    goto :goto_e7

    :cond_c4
    if-eqz v6, :cond_cd

    if-nez v3, :cond_cd

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v3, :cond_cd

    goto :goto_e7

    :cond_cd
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v3, :cond_d2

    goto :goto_e7

    :cond_d2
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    if-eqz v3, :cond_d9

    goto :goto_e7

    :cond_d9
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v3, :cond_de

    goto :goto_e7

    :cond_de
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v4, :cond_e9

    if-eq v0, v5, :cond_e9

    packed-switch v0, :pswitch_data_14c

    :goto_e7
    move v0, v2

    goto :goto_ea

    :cond_e9
    :pswitch_e9  #0xb, 0xc, 0xd
    move v0, v1

    :goto_ea
    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iput p1, v0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v3, v4, :cond_107

    if-eq v3, v5, :cond_107

    packed-switch v3, :pswitch_data_156

    goto :goto_11b

    :pswitch_fa  #0xd
    if-ltz p1, :cond_11b

    goto :goto_11c

    :pswitch_fd  #0xc
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_11b

    goto :goto_11c

    :pswitch_102  #0xb
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    goto :goto_11c

    :cond_107
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v3, v4, :cond_10f

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    :cond_10f
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v0, v1, :cond_116

    if-ltz p1, :cond_11b

    goto :goto_11c

    :cond_116
    if-ltz p1, :cond_11b

    if-eq p1, v5, :cond_11b

    goto :goto_11c

    :cond_11b
    :goto_11b
    move v1, v2

    :goto_11c
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_140

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_133

    goto :goto_140

    :cond_133
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_140

    :try_start_139
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->onProposedRotationChanged(IZ)V
    :try_end_140
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_140} :catch_140

    :catch_140
    :cond_140
    :goto_140
    return-void

    :cond_141
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    nop

    :pswitch_data_14c
    .packed-switch 0xb
        :pswitch_e9  #0000000b
        :pswitch_e9  #0000000c
        :pswitch_e9  #0000000d
    .end packed-switch

    :pswitch_data_156
    .packed-switch 0xb
        :pswitch_102  #0000000b
        :pswitch_fd  #0000000c
        :pswitch_fa  #0000000d
    .end packed-switch
.end method

.method public final run()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->enable$1()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1b

    const-string/jumbo p0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    goto :goto_39

    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "WindowOrientationListener"

    const-string/jumbo v2, "WindowOrientationListener disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    :cond_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_19

    throw p0
.end method
