.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DEFAULT_DISPLAY_GROUP_IDS:Landroid/util/IntArray;

.field public static final SEC_USE_FACTORY_BINARY:Z

.field public static sQuiescent:Z


# instance fields
.field public mAbuseWakeLockDetector:Lcom/android/server/power/AbuseWakeLockDetector;

.field public final mAbuseWakeLockDetectorCallback:Lcom/android/server/power/PowerManagerService$1;

.field public final mAdaptiveScreenOffTimeoutCallbacks:Lcom/android/server/power/PowerManagerService$1;

.field public mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

.field public mAlpmHlpmMode:I

.field public mAlwaysOnEnabled:Z

.field public final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

.field public mAodMode:Z

.field public final mAttentionDetector:Lcom/android/server/power/AttentionDetector;

.field public mAttentionLight:Lcom/android/server/lights/LightsService$LightImpl;

.field public mAttentiveTimeoutConfig:I

.field public mAttentiveTimeoutSetting:J

.field public mAttentiveWarningDurationConfig:J

.field public mAutoBrightnessLimitLastCaller:Ljava/lang/String;

.field public mAutoBrightnessLowerLimit:I

.field public mAutoBrightnessUpperLimit:I

.field public mBatteryLevel:I

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatteryOnline:I

.field public final mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field public final mBatterySaverSupported:Z

.field public mBatterySavingAdjustBrightnessFactor:F

.field public mBatterySavingScreenOffTimeoutSetting:J

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

.field public mBootCompleted:Z

.field public final mBootingSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

.field public mBrightWhenDozingConfig:Z

.field public mBrightnessLimitByCoverConfig:I

.field public final mBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

.field public final mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

.field public final mConstants:Lcom/android/server/power/PowerManagerService$Constants;

.field public final mContext:Landroid/content/Context;

.field public mCoverAuthReady:Z

.field public mCoverAuthReadyRunnable:Lcom/android/server/power/PowerManagerService$6;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public final mCoverStateListener:Lcom/android/server/power/PowerManagerService$10;

.field public mCoverType:I

.field public mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field public mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field public mDefaultDisplayReadyByProximity:Z

.field public mDefaultDisplayState:I

.field public mDelayTimePrintWakeLock:J

.field public final mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mDeviceIdleMode:Z

.field public mDeviceIdleTempWhitelist:[I

.field public mDeviceIdleWhitelist:[I

.field public mDirty:I

.field public mDisableScreenWakeLocksWhileCached:Z

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayPowerCallbacks:Lcom/android/server/power/PowerManagerService$3;

.field public final mDisplaySuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

.field public mDockState:I

.field public mDoubleTapWakeEnabled:Z

.field public mDozeAfterScreenOff:Z

.field public mDozeScreenBrightnessOverrideFromDreamManager:I

.field public mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

.field public mDozeScreenStateOverrideFromDreamManager:I

.field public mDozeScreenStateOverrideReasonFromDreamManager:I

.field public mDozeStartInProgress:Z

.field public mDrawWakeLockOverrideFromSidekick:Z

.field public mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field public mDreamsActivateOnDockSetting:Z

.field public mDreamsActivateOnSleepSetting:Z

.field public mDreamsActivateWhilePosturedSetting:Z

.field public mDreamsActivatedOnDockByDefaultConfig:Z

.field public mDreamsActivatedOnSleepByDefaultConfig:Z

.field public mDreamsActivatedWhilePosturedByDefaultConfig:Z

.field public mDreamsBatteryLevelDrain:I

.field public mDreamsBatteryLevelDrainCutoffConfig:I

.field public mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field public mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field public mDreamsDisabledByAmbientModeSuppressionConfig:Z

.field public mDreamsEnabledByDefaultConfig:Z

.field public mDreamsEnabledOnBatteryConfig:Z

.field public mDreamsEnabledSetting:Z

.field public mDreamsSupportedConfig:Z

.field public mDualScreenPolicy:I

.field public mEarlyWakeUp:Z

.field public mEnhancedDischargePredictionIsPersonalized:Z

.field public mEnhancedDischargeTimeElapsed:J

.field public final mEnhancedDischargeTimeLock:Ljava/lang/Object;

.field public final mEnsureTransitionToDozingReleaser:Lcom/android/server/power/PowerManagerService$6;

.field public mEnsureTransitionToDozingReleaserRunning:Z

.field public mExternalDesktopMode:I

.field public final mFeatureCoverSysfs:Z

.field public final mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field public mForceSetHalInteractiveMode:Z

.field public mForceSlowChange:Z

.field public mForceSuspendActive:Z

.field public mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

.field public mForegroundProfile:I

.field public mFreezingScreenBrightness:Z

.field public mGoToSleepPreventionEnabled:Z

.field public mHalAutoSuspendModeEnabled:Z

.field public mHalInteractiveModeEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerPmsMisc:Landroid/os/Handler;

.field public mHbmBlock:Z

.field public final mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

.field public mHdrBrightnessLimitPeriod:I

.field public final mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

.field public mHdrBrightnessLimitRunning:Z

.field public mHdrBrightnessUpperLimit:I

.field public mHoldingBootingSuspendBlocker:Z

.field public mHoldingDisplaySuspendBlocker:Z

.field public mHoldingWakeLockSuspendBlocker:Z

.field public final mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

.field public final mInjector:Lcom/android/server/power/PowerManagerService$Injector;

.field public mInterceptedKeyForProximity:Z

.field public mInterceptedPowerKeyForProximity:Z

.field public mInternalDisplayOffByPowerKeyIntent:Landroid/content/Intent;

.field public mIsCoverClosed:Z

.field public mIsDualViewMode:Z

.field public final mIsPowerBoostInvokedFromLocal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsPowered:Z

.field public final mIsUserActivityInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mKeepDreamingWhenUnplugging:Z

.field public mLCDFlashMode:Z

.field public mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

.field public mLastAndroidAutoBoostTime:J

.field public mLastAutoBrightnessLimitTime:J

.field public mLastEnhancedDischargeTimeUpdatedElapsed:J

.field public mLastGlobalSleepReason:I

.field public mLastGlobalSleepTime:J

.field public mLastGlobalSleepTimeRealtime:J

.field public mLastGlobalWakeReason:I

.field public mLastGlobalWakeTime:J

.field public mLastGlobalWakeTimeRealtime:J

.field public mLastInteractivePowerHintTime:J

.field public mLastNormalTouchBoostTime:J

.field public mLastOutdoorModeEnabledTime:J

.field public mLastRequestedLimitationOfBrightness:I

.field public mLastRequestedLimitationOfHdrBrightness:I

.field public mLastScreenBrightnessBoostTime:J

.field public mLastScreenTimeout:I

.field public mLastUserActivityStateListenerCalledTime:J

.field public mLastUserActivityStateListenerState:I

.field public mLastWakeUpReason:I

.field public mLastWarningAboutUserActivityPermission:J

.field public mLightDeviceIdleMode:Z

.field public final mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public mLowPowerStandbyActive:Z

.field public mLowPowerStandbyAllowlist:[I

.field public final mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

.field public mMasterBrightnessLimitLastCaller:Ljava/lang/String;

.field public mMasterBrightnessLimitPeriod:I

.field public mMasterBrightnessLimitRunning:Z

.field public mMasterBrightnessLowerLimit:I

.field public mMasterBrightnessUpperLimit:I

.field public mMaximumScreenDimDurationConfig:J

.field public mMaximumScreenDimRatioConfig:F

.field public mMaximumScreenOffTimeoutFromDeviceAdmin:J

.field public mMinimumScreenOffTimeoutConfig:J

.field public final mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

.field public mNoUserActivityIntent:Landroid/content/Intent;

.field public mNoUserActivitySent:Z

.field public mNotifier:Lcom/android/server/power/Notifier;

.field public mNotifyLongDispatched:J

.field public mNotifyLongNextCheck:J

.field public mNotifyLongScheduled:J

.field public mOutdoorModeSetting:Z

.field public mOverriddenTimeout:J

.field public final mPermissionCheckerWrapper:Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

.field public mPlugType:I

.field public mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

.field public final mPowerGroups:Landroid/util/SparseArray;

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public final mPowerPropertiesWrapper:Lcom/android/server/power/PowerManagerService$Injector$1;

.field public final mPrintWakeLockAperiodicallyRunnable:Lcom/android/server/power/PowerManagerService$6;

.field public final mProfilePowerState:Landroid/util/SparseArray;

.field public mProximityPositive:Z

.field public mQuickTilesSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field public mRequestWaitForNegativeProximity:Z

.field public mSafeMode:Z

.field public mSandmanScheduled:Z

.field public mScreenBrightnessBoostInProgress:Z

.field public final mScreenBrightnessDefault:F

.field public final mScreenBrightnessDim:F

.field public mScreenBrightnessForClearCoverConfig:F

.field public final mScreenBrightnessMaximum:F

.field public final mScreenBrightnessMinimum:F

.field public mScreenBrightnessScaleFactor:F

.field public mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

.field public mScreenDimDurationOverrideFromSQD:J

.field public mScreenDimDurationOverrideFromWindowManager:J

.field public final mScreenExtendedBrightnessMaximum:I

.field public mScreenOffReason:Ljava/lang/String;

.field public mScreenOffTimeoutForDex:I

.field public mScreenOffTimeoutSetting:J

.field public mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

.field public mScreenOnOffCount:I

.field public mScreenOnReason:Ljava/lang/String;

.field public mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

.field public final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field public mShouldWaitForTransitionToAodUi:Z

.field public mShutdownOrRebootCaller:Ljava/lang/String;

.field public mSleepTimeoutSetting:J

.field public mSmartStayController:Lcom/android/server/power/SmartStayController;

.field public mSmartStayEnabledSetting:Z

.field public mStayOn:Z

.field public mStayOnWhilePluggedInSetting:I

.field public mSupportsDoubleTapWakeConfig:Z

.field public final mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

.field public final mSuspendBlockers:Ljava/util/ArrayList;

.field public mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mSystemProperties:Lcom/android/server/power/PowerManagerService$Injector$1;

.field public mSystemReady:Z

.field public mTargetBrightnessForHdrLimit:I

.field public mTargetBrightnessForLimit:I

.field public mTheaterModeEnabled:Z

.field public final mUidState:Landroid/util/SparseArray;

.field public mUidsChanged:Z

.field public mUidsChanging:Z

.field public mUpdatePowerStateInProgress:Z

.field public mUseAdaptiveScreenOffTimeout:Z

.field public final mUseAutoSuspend:Z

.field public mUseKeepScreenOn:Z

.field public mUseNormalBrightnessForDoze:Z

.field public mUseScreenCurtain:Z

.field public mUserActivityIntent:Landroid/content/Intent;

.field public final mUserActivityStateListenerListeners:Ljava/util/ArrayList;

.field public final mUserActivityStateListenerTimeoutRunnable:Lcom/android/server/power/PowerManagerService$6;

.field public final mUserActivityTask:Lcom/android/server/power/PowerManagerService$6;

.field public mUserActivityTimeoutForDexOverrideFromWindowManager:J

.field public mUserActivityTimeoutOverrideFromWindowManager:J

.field public mUserActivityTimeoutSetting:I

.field public final mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$6;

.field public mUserId:I

.field public mUserInactiveOverrideFromWindowManager:Z

.field public mWakeLockSummary:I

.field public final mWakeLockSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

.field public final mWakeLocks:Ljava/util/ArrayList;

.field public final mWakeUpPreventionLocks:Ljava/util/ArrayList;

.field public mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field public mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field public mWakefulnessChanging:Z

.field public mWakefulnessRaw:I

.field public final mWakelockBlacklistAppid:Ljava/util/ArrayList;

.field public mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field public mWirelessChargerMotionDetector:Lcom/android/server/power/WirelessChargerMotionDetector;

.field public mlastSetCoverTypeTime:J

.field public mlastUpdateCoverStateReason:Ljava/lang/String;

.field public mlastUpdateCoverStateTime:J

.field public mlastUpdateCoverTypeReason:Ljava/lang/String;


# direct methods
.method public static -$$Nest$macquireWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v5, p8

    const-string/jumbo v13, "[api] acquire WakeLock "

    const-string/jumbo v1, "Tried to acquire wake lock for invalid display: "

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/server/power/Slog;->$r8$clinit:I

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    return-void

    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not have access to display"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-ltz v1, :cond_8

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move/from16 v4, p3

    if-ne v2, v4, :cond_7

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v7, p6

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v2, v5, :cond_5

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move/from16 v10, p9

    if-ne v2, v10, :cond_4

    move-object v9, v0

    move-object v0, v1

    move/from16 v1, v16

    goto :goto_5

    :cond_4
    move-object/from16 v8, p7

    move-object/from16 v9, p10

    move v2, v4

    move-object v3, v6

    move v6, v10

    :goto_2
    move-object/from16 v4, p5

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v8, p7

    move-object/from16 v9, p10

    move v2, v4

    move-object v3, v6

    move-object/from16 v4, p5

    move/from16 v6, p9

    goto :goto_4

    :cond_6
    move-object/from16 v7, p6

    goto :goto_3

    :cond_7
    move-object/from16 v3, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v6, p9

    move-object/from16 v9, p10

    move v2, v4

    goto :goto_2

    :goto_4
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move-object v9, v0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    move/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p10

    move-object v0, v1

    move/from16 v1, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(IIILandroid/os/IWakeLockCallback;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v15

    :goto_5
    move/from16 v17, v1

    move-object v1, v0

    move v0, v15

    move/from16 v15, v17

    goto :goto_6

    :cond_8
    move-object v9, v0

    iget-object v0, v9, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$UidState;

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {v0, v5}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    move-object v11, v0

    iget v0, v11, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v12, p10

    move-object v1, v9

    move v9, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v12}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;Landroid/os/IWakeLockCallback;)V

    move-object v9, v1

    iget-object v1, v9, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v0}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-object v1, v0

    move/from16 v0, v16

    :goto_6
    if-eqz v15, :cond_a

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    :goto_7
    move/from16 v2, p11

    goto :goto_8

    :cond_a
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-eq v2, v3, :cond_b

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_b

    const/16 v3, 0x20

    if-eq v2, v3, :cond_b

    const/16 v3, 0x40

    if-eq v2, v3, :cond_b

    const/16 v3, 0x80

    if-eq v2, v3, :cond_b

    goto :goto_7

    :cond_b
    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_8
    invoke-virtual {v9, v1, v2}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V

    iget v2, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v9}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    if-eqz v0, :cond_c

    invoke-virtual {v9, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_c
    monitor-exit v14

    return-void

    :goto_9
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mboostScreenBrightnessInternal(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 9

    const-string v0, "Brightness boost activated (uid "

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/power/PowerGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v4, p1

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdisableAbusiveWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p2, :cond_1

    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdisableWakeUpPreventionInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V
    .locals 12

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeUpPreventionLock;

    iget-object v5, v5, Lcom/android/server/power/PowerManagerService$WakeUpPreventionLock;->mBinder:Landroid/os/IBinder;

    if-ne v5, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    if-ne v3, v4, :cond_2

    const-string/jumbo p0, "PowerManagerService"

    const-string/jumbo p1, "disableWakeUpPreventionInternal: aleadyDisabled"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, " wakeUpPrevention disabled"

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/server/power/PowerGroup;

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v7, "android.server.power:WAKE_UP_PREVENTION_DISABLED"

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v6, 0x73

    const/16 v8, 0x3e8

    const/16 v10, 0x3e8

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    :cond_3
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdumpProto(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-boolean v3, v3, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const-wide v6, 0x10800000001L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const-wide v4, 0x10500000002L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v3

    const-wide v8, 0x10e00000003L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    const-wide v8, 0x10800000004L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const-wide v10, 0x10800000005L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const-wide v12, 0x10e00000006L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const-wide v12, 0x10500000007L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    const-wide v14, 0x10500000039L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const-wide v14, 0x10e00000009L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    const-wide v14, 0x1080000000aL

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    const-wide v12, 0x1080000000bL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const-wide v4, 0x1080000000cL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    const-wide v4, 0x1080000000dL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    const-wide v12, 0x10300000034L

    invoke-virtual {v1, v12, v13, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    const-wide v12, 0x10300000035L

    invoke-virtual {v1, v12, v13, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    const-wide v12, 0x10800000036L

    invoke-virtual {v1, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    const-wide v4, 0x1080000000eL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    const-wide v4, 0x1080000000fL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v12, 0x10b00000010L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v16, 0x1

    and-int/lit8 v3, v3, 0x1

    const/16 v17, 0x0

    if-eqz v3, :cond_0

    move/from16 v3, v16

    goto :goto_0

    :cond_0
    move/from16 v3, v17

    :goto_0
    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move/from16 v3, v16

    goto :goto_1

    :cond_1
    move/from16 v3, v17

    :goto_1
    const-wide v4, 0x10800000002L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move/from16 v3, v16

    goto :goto_2

    :cond_2
    move/from16 v3, v17

    :goto_2
    const-wide v14, 0x10800000003L

    invoke-virtual {v1, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move/from16 v3, v16

    goto :goto_3

    :cond_3
    move/from16 v3, v17

    :goto_3
    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move/from16 v3, v16

    goto :goto_4

    :cond_4
    move/from16 v3, v17

    :goto_4
    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move/from16 v3, v16

    goto :goto_5

    :cond_5
    move/from16 v3, v17

    :goto_5
    const-wide v10, 0x10800000006L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    move/from16 v3, v16

    goto :goto_6

    :cond_6
    move/from16 v3, v17

    :goto_6
    const-wide v10, 0x10800000007L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    move/from16 v3, v16

    goto :goto_7

    :cond_7
    move/from16 v3, v17

    :goto_7
    const-wide v10, 0x10800000008L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide v10, 0x10300000011L

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    const-wide v12, 0x10300000012L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    const-wide v12, 0x10300000013L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move/from16 v3, v17

    :goto_8
    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v3, v10, :cond_b

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/PowerGroup;

    const-wide v8, 0x20b00000014L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget v13, v10, Lcom/android/server/power/PowerGroup;->mGroupId:I

    const-wide v11, 0x10500000006L

    invoke-virtual {v1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v11, v10, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    int-to-long v11, v11

    const-wide/16 v18, 0x1

    and-long v18, v11, v18

    const-wide/16 v20, 0x0

    cmp-long v13, v18, v20

    if-eqz v13, :cond_8

    move/from16 v13, v16

    goto :goto_9

    :cond_8
    move/from16 v13, v17

    :goto_9
    invoke-virtual {v1, v6, v7, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v18, 0x2

    and-long v18, v11, v18

    cmp-long v13, v18, v20

    if-eqz v13, :cond_9

    move/from16 v13, v16

    goto :goto_a

    :cond_9
    move/from16 v13, v17

    :goto_a
    invoke-virtual {v1, v4, v5, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide/16 v18, 0x4

    and-long v11, v11, v18

    cmp-long v11, v11, v20

    if-eqz v11, :cond_a

    move/from16 v11, v16

    goto :goto_b

    :cond_a
    move/from16 v11, v17

    :goto_b
    invoke-virtual {v1, v14, v15, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v11, v10, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    const-wide v14, 0x10300000004L

    invoke-virtual {v1, v14, v15, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v10, v10, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    const-wide v12, 0x10300000005L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    const-wide v8, 0x10800000004L

    const-wide v14, 0x10800000003L

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :cond_b
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    const-wide v8, 0x10800000015L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    const-wide v8, 0x10800000016L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    const-wide v8, 0x10800000018L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    const-wide v8, 0x10800000019L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    const-wide v10, 0x1080000001aL

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    array-length v10, v3

    move/from16 v11, v17

    :goto_c
    if-ge v11, v10, :cond_c

    aget v12, v3, v11

    const-wide v13, 0x2050000001bL

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_c
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    array-length v10, v3

    move/from16 v11, v17

    :goto_d
    if-ge v11, v10, :cond_d

    aget v12, v3, v11

    const-wide v13, 0x2050000001cL

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_d
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    const-wide v10, 0x10800000037L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    const-wide v12, 0x1030000001dL

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    const-wide v12, 0x1030000001eL

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    const-wide v12, 0x10300000021L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const-wide v12, 0x10300000022L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    const-wide v10, 0x10800000023L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    const-wide v10, 0x10800000025L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    const-wide v10, 0x10800000026L

    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v10, 0x10b00000027L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const-wide v12, 0x10800000003L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    const-wide v12, 0x10800000004L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    const-wide v12, 0x10800000005L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const-wide v12, 0x10800000006L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const-wide v12, 0x10800000007L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-wide v12, 0x10800000008L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const-wide v12, 0x10800000009L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-wide v12, 0x1080000000aL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const-wide v12, 0x1080000000bL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const-wide v12, 0x1110000000cL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const-wide v12, 0x1110000000dL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const-wide v12, 0x1110000000eL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    const-wide v12, 0x1080000000fL

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    const-wide v12, 0x10800000010L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    const-wide v12, 0x10800000011L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    const-wide v12, 0x10800000012L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    const-wide v14, 0x10500000013L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    const-wide v14, 0x10500000014L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    const-wide v12, 0x10200000015L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    const-wide v14, 0x10500000016L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    const-wide v14, 0x11100000017L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    const-wide v14, 0x11100000025L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const-wide v12, 0x11100000026L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    const-wide v14, 0x11100000027L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/32 v14, 0x7fffffff

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    const-wide v14, 0x10500000018L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v3

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10b0000001aL

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e

    move/from16 v3, v16

    goto :goto_e

    :cond_e
    move/from16 v3, v17

    :goto_e
    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_f

    move/from16 v3, v16

    goto :goto_f

    :cond_f
    move/from16 v3, v17

    :goto_f
    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_10

    move/from16 v3, v16

    :goto_10
    const-wide v12, 0x10800000003L

    goto :goto_11

    :cond_10
    move/from16 v3, v17

    goto :goto_10

    :goto_11
    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_11

    move/from16 v3, v16

    :goto_12
    const-wide v12, 0x10800000004L

    goto :goto_13

    :cond_11
    move/from16 v3, v17

    goto :goto_12

    :goto_13
    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide v12, 0x1120000001dL

    invoke-virtual {v1, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide v8, 0x1080000001eL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    const-wide v8, 0x10e0000001fL

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    const-wide v8, 0x10800000024L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    const-wide v8, 0x10200000020L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10b00000021L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    const-wide v12, 0x10200000004L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    const-wide v12, 0x10200000005L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    const-wide v12, 0x10200000006L

    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    const-wide v8, 0x10800000022L

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v8, v9}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v14

    const-wide v4, 0x11100000033L

    invoke-virtual {v1, v4, v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x11100000028L

    invoke-virtual {v1, v3, v4, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000029L

    invoke-virtual {v1, v3, v4, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000002aL

    invoke-virtual {v1, v3, v4, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    const-wide v4, 0x1080000002bL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    const-wide v4, 0x1080000002cL

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move/from16 v3, v17

    :goto_14
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$UidState;

    const-wide v8, 0x20b0000002dL

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const-wide v10, 0x10500000001L

    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v5

    const-wide v10, 0x10900000002L

    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-boolean v5, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    const-wide v12, 0x10800000003L

    invoke-virtual {v1, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v5, v4, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    const-wide v10, 0x10500000004L

    invoke-virtual {v1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    const-wide v10, 0x10e00000005L

    invoke-virtual {v1, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_12
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    :cond_13
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-wide v4, 0x10b0000002eL

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v17

    :goto_15
    if-ge v5, v4, :cond_14

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {v8, v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_15

    :cond_14
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v17

    :goto_16
    if-ge v5, v4, :cond_15

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v9, 0x20b00000030L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v11, v8, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    const-wide v12, 0x10900000001L

    invoke-virtual {v1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v11, v8, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const-wide v12, 0x10500000002L

    invoke-virtual {v1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_16

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_15
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_16

    const-wide v4, 0x10b00000031L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-object v2, v3, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-boolean v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v6, v3, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    const-wide v7, 0x10800000002L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    const-wide v9, 0x10200000001L

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    const-wide v11, 0x10200000002L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    const-wide v13, 0x10200000003L

    invoke-virtual {v1, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-boolean v6, v3, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    const-wide v7, 0x10800000004L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v6, v3, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    const-wide v13, 0x10300000005L

    invoke-virtual {v1, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-boolean v6, v3, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    const-wide v7, 0x10800000006L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v6, v3, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    const-wide v7, 0x10500000007L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v6, v3, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    const-wide v7, 0x10500000008L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10b00000009L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    const-wide v13, 0x10200000003L

    invoke-virtual {v1, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10b0000000aL

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget v3, v3, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    const-wide v13, 0x10200000003L

    invoke-virtual {v1, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_17

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_16
    :goto_17
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v0, v1}, Lcom/android/server/power/LowPowerStandbyController;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    :goto_18
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mforceSuspendInternal(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 10

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/power/PowerGroup;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v8, 0x8

    move-object v4, p0

    move v9, p1

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    add-int/lit8 v0, v0, 0x1

    move-object p0, v4

    move p1, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, p0

    goto :goto_1

    :cond_0
    move-object v4, p0

    move v9, p1

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    const-string/jumbo p0, "PowerManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force-Suspending (uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v4, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p1, "PowerManagerService"

    const-string v0, "Force-Suspending failed in native."

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iput-boolean v2, v4, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    monitor-exit v1

    return p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :goto_2
    iput-boolean v2, v4, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method

.method public static -$$Nest$mgoToSleepInternal(Lcom/android/server/power/PowerManagerService;Landroid/util/IntArray;JII)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " goToSleep: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    if-eqz v3, :cond_6

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-virtual {v2}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->hasWakeLockKeepingScreenOnLocked()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "There is a screen wake lock present: sleep request will be ignored"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    :goto_2
    const-string/jumbo v2, "PowerManagerService"

    const-string/jumbo v3, "Showing dismissible keyguard"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v2, v2, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->showDismissibleKeyguard()V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->hasWakeLockKeepingScreenOnLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    move-object v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_3

    :cond_5
    move-object v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "power group("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") doesn\'t exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_8
    const-string/jumbo p0, "PowerManagerService"

    const-string p1, "Event time "

    const-string p4, " cannot be newer than "

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "event time must not be in the future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V
    .locals 13

    const-string/jumbo v2, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level drained while dreaming: "

    const-string/jumbo v3, "handleSandman : startDreaming: "

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    iget v6, v5, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iget-boolean v7, v5, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    iget-boolean v7, v5, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, v5, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    if-eqz v7, :cond_1

    iget v7, v5, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-ne v7, v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v10

    :goto_0
    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v10

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v9

    :goto_2
    const-string/jumbo v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  (canDreamLocked: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  canDozeLocked: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v5, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    if-eqz v3, :cond_4

    iget v3, v5, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-ne v3, v8, :cond_4

    move v3, v9

    goto :goto_3

    :cond_4
    move v3, v10

    :goto_3
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")  groupId="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, v5, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    goto :goto_4

    :cond_5
    move v7, v10

    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v3, :cond_9

    if-eqz v7, :cond_8

    const-string/jumbo v4, "power manager request before starting dream"

    invoke-virtual {v3, v10, v4}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleSandman : startDream("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v6, v8, :cond_6

    move v5, v9

    goto :goto_5

    :cond_6
    move v5, v10

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v6, v8, :cond_7

    goto :goto_6

    :cond_7
    move v9, v10

    :goto_6
    const-string/jumbo v4, "power manager request"

    invoke-virtual {v3, v9, v4}, Landroid/service/dreams/DreamManagerInternal;->startDream(ZLjava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v3}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v3

    move v11, v3

    goto :goto_7

    :cond_9
    move v11, v10

    :goto_7
    if-eqz v7, :cond_a

    if-nez v11, :cond_a

    const-string/jumbo v3, "PowerManagerService"

    const-string/jumbo v4, "handleSandman : startDreaming, but isDreaming false"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    if-nez v3, :cond_b

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    :cond_b
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_c

    monitor-exit v12

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_c
    if-eqz v7, :cond_e

    if-eqz v11, :cond_e

    iput v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    if-ne v6, v8, :cond_d

    const-string/jumbo v3, "PowerManagerService"

    const-string v4, "Dozing..."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    const-string/jumbo v3, "PowerManagerService"

    const-string v4, "Dreaming..."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_8
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-boolean v3, v1, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    if-nez v3, :cond_18

    iget v3, v1, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v3, v6, :cond_f

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    if-ne v6, v5, :cond_14

    if-eqz v11, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->canDreamLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v5, :cond_10

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    if-le v6, v5, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%.  Battery level now: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    monitor-exit v12

    return-void

    :cond_11
    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, " dream(timeout)"

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v2

    if-eqz v2, :cond_12

    move-wide v2, v3

    const/4 v4, 0x2

    const/16 v5, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_a

    :cond_12
    move-wide v2, v3

    const/4 v4, 0x2

    const/16 v5, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    goto :goto_a

    :cond_13
    move-wide v2, v3

    const-string v4, " dream end"

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    const/16 v4, 0x6c

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const-string/jumbo v5, "android.server.power:DREAM_FINISHED"

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/16 v4, 0xd

    const/16 v6, 0x3e8

    const/16 v8, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    goto :goto_a

    :cond_14
    move-wide v2, v3

    if-ne v6, v8, :cond_16

    if-eqz v11, :cond_15

    monitor-exit v12

    return-void

    :cond_15
    const/4 v4, 0x2

    const/16 v5, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    :cond_16
    :goto_a
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_17

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_17

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : stopDream"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const-string/jumbo v1, "power manager request"

    invoke-virtual {v0, v10, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    :cond_17
    return-void

    :cond_18
    :goto_b
    :try_start_2
    monitor-exit v12

    return-void

    :goto_c
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_d
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    iget-boolean v2, v1, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SmartStayController"

    const-string/jumbo v3, "UserActivityState : poke userActivity (face detected)"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/power/SmartStayController;->mOnFaceDetected:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v2, v1, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v3, v1, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$misInteractiveForDisplayInternal(Lcom/android/server/power/PowerManagerService;II)Z
    .locals 5

    const-string/jumbo v0, "isInteractiveInternal(): uid="

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move p1, v2

    :goto_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_4

    :cond_2
    if-eq p1, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p1

    if-eq p0, p1, :cond_3

    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", interactive="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", interactive(internal)="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v1

    return p1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v1

    return p0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;II)Z
    .locals 6

    const-string v0, "Did not find PowerGroup for displayId "

    const-string/jumbo v1, "uid "

    const-string v2, "Did not find DisplayInfo for displayId "

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isGloballyInteractiveInternal()Z

    move-result p0

    monitor-exit v3

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const-string/jumbo p0, "PowerManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return v5

    :cond_1
    invoke-virtual {v4, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    iget p2, v4, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    if-nez p0, :cond_2

    const-string/jumbo p0, "PowerManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return v5

    :cond_2
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v3

    return p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not have access to display "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$misWakeLockLevelSupportedInternal(Lcom/android/server/power/PowerManagerService;II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x6

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_4

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/16 p2, 0x40

    if-eq p1, p2, :cond_4

    const/16 p2, 0x80

    if-eq p1, p2, :cond_4

    const/16 p2, 0x100

    if-eq p1, p2, :cond_0

    :try_start_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object p1, p1, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    monitor-exit v0

    return v1

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    monitor-exit v0

    return v1

    :cond_4
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic -$$Nest$mnativeInit(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    return-void
.end method

.method public static -$$Nest$mprintWakeLockLocked(Lcom/android/server/power/PowerManagerService;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    iget v2, v0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    iget-object v3, v0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Lcom/android/server/power/PowerGroup;->mReady:Z

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[PWL] Off : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerGroup;

    iget v7, v7, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v7}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v6

    const-wide/16 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v6, v7

    :goto_0
    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "s ago"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_2
    :goto_1
    if-ge v6, v5, :cond_d

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    monitor-enter v7

    :try_start_1
    iget v8, v7, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    move v8, v9

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_2

    const-string/jumbo v8, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[PWL]   "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v7, v7, -0x11

    if-eqz v7, :cond_2

    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[PWL]     mWakeLockSummary : 0x"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v1

    :cond_4
    :goto_3
    if-ge v9, v8, :cond_5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v11, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit16 v11, v11, 0x81

    if-eqz v11, :cond_4

    const-string/jumbo v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "[PWL]       "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v7, v7, -0x2

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v1

    :cond_6
    :goto_4
    if-ge v9, v8, :cond_2

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v11, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string/jumbo v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "[PWL]       "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_8

    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[PWL]     userActivitySummary : 0x"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v7, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v7, :cond_9

    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[PWL]     displayPowerRequest.policy : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v0, :cond_a

    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[PWL]     displayReady : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v7, :cond_2

    const-string/jumbo v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[PWL]     mBootCompleted : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_5
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_b
    :goto_6
    const-string/jumbo v0, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[PWL] On : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[PWL]  mStayOn: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mUserActivitySummary: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_c
    :goto_7
    if-ge v1, v0, :cond_d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[PWL]  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    return-void
.end method

.method public static -$$Nest$mreleaseWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 16

    move-object/from16 v1, p0

    const-string/jumbo v0, "[api] release WakeLock "

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v3

    if-gez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    const/4 v5, 0x1

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_1

    iput-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    :cond_1
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v9, 0xffff

    and-int/2addr v8, v9

    const/4 v10, 0x0

    const/16 v11, 0x1a

    const/16 v12, 0xa

    const/4 v13, 0x6

    if-eq v8, v13, :cond_2

    if-eq v8, v12, :cond_2

    if-eq v8, v11, :cond_2

    move/from16 p2, v6

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move/from16 p2, v6

    iget-wide v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long/2addr v14, v5

    const-wide/32 v5, 0xea60

    cmp-long v5, v14, v5

    if-gez v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;

    invoke-direct {v5, v4, v14, v15}, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;-><init>(Lcom/android/server/power/PowerManagerService$WakeLock;J)V

    invoke-virtual {v7, v10, v5}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    :goto_0
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v5, v9

    if-eq v5, v13, :cond_4

    if-eq v5, v12, :cond_4

    if-eq v5, v11, :cond_4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_4

    const/16 v6, 0x40

    if-eq v5, v6, :cond_4

    const/16 v6, 0x80

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, ""

    if-eqz p2, :cond_5

    const-string v5, " (WAIT_FOR_NO_PROXIMITY)"

    :cond_5
    const-string/jumbo v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    iget-object v0, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-interface {v0, v4, v10}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    sget v5, Lcom/android/server/power/Slog;->$r8$clinit:I

    const-string/jumbo v5, "PowerManagerService"

    const-string v6, "Failed to unlink Wakelock.mLock"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-boolean v0, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    iput-boolean v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    iput v10, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    :cond_6
    const/4 v0, -0x1

    invoke-virtual {v1, v4, v3, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static -$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;IIFIZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-ne v1, p4, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    invoke-static {v1, p3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    if-ne v1, p5, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    if-eq v1, p6, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideReasonFromDreamManager:I

    iput p4, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-static {p3}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p3

    :goto_1
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    iput-boolean p5, p0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    iput-boolean p6, p0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$msetHdrBrightnessLimitInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IIII)V
    .locals 10

    const-string/jumbo v0, "[api] setHdrBrightnessLimit : upperLimit : "

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v2, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  brightnessLimitPeriod : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v8

    :goto_0
    const/4 v9, -0x1

    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;

    iget-object v5, v5, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mLock:Landroid/os/IBinder;

    if-ne v5, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_1
    if-eq p2, v9, :cond_3

    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;

    iput p2, v0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    iput p3, v0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mBrightnessLimitPeriod:I

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    new-instance v0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IIII)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-ltz v2, :cond_4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/PowerManagerService;->calculateHdrBrightnessLimitLocked(II)V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    if-eq v0, v9, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    :goto_3
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/PowerManagerService;->getStartingLimitationOfBrightness(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    if-ne v2, v0, :cond_6

    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_7
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :goto_4
    monitor-exit v7

    return-void

    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static -$$Nest$msetLowPowerModeInternal(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 4

    const-string/jumbo v0, "setLowPowerModeInternal "

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsPowered="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BatterySaverStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBatterySaverEnabledManually: enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(Z)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static -$$Nest$msetScreenOffTimeoutForBatterySaver(Lcom/android/server/power/PowerManagerService;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingScreenOffTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setScreenOffTimeoutForBatterySaver: backup_screen_off_timeout = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", SCREEN_OFF_TIMEOUT = 30000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    long-to-int v1, v1

    const-string/jumbo v2, "backup_screen_off_timeout"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_off_timeout"

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public static -$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "userspace"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/server/PackageWatchdog;->isRecoveryTriggeredReboot()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p4, :cond_4

    monitor-enter v0

    :catch_0
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Too early to call shutdown() or reboot()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mupdateWakeLockCallbackInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    .locals 12

    const-string/jumbo v0, "Wake lock not active: "

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object p1, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v8, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v9, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v10, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move-object v2, p0

    move-object v11, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    iput-object v11, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mupdateWakeLockWorkSourceInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 11

    const-string/jumbo v1, "Wake lock not active: "

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    const/4 v9, 0x0

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v10

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from uid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static -$$Nest$smcallerInfoWithProcessName()Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/%d/cmdline"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_0

    const/4 v5, 0x0

    aget-object v2, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string/jumbo v4, "PowerManagerService"

    const-string/jumbo v5, "error on read process name"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, " (uid: %d pid: %d processName: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeForceSuspend()Z
    .locals 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeForceSuspend()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetAutoSuspend(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetInteractiveAsync(IZ)V
    .locals 0

    invoke-static {p1, p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractiveAsync(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetPowerBoost(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerBoost(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeSetPowerMode(IZ)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->DEFAULT_DISPLAY_GROUP_IDS:Landroid/util/IntArray;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$Injector;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    new-instance v1, Lcom/android/server/power/PowerManagerService$6;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v3}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$6;

    new-instance v1, Lcom/android/server/power/PowerManagerService$6;

    const/4 v3, 0x7

    invoke-direct {v1, v0, v3}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$6;

    const/4 v9, 0x1

    invoke-static {v9, v8}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    const-string v4, ""

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLimitLastCaller:Ljava/lang/String;

    sget-object v4, Lcom/android/server/power/SuspendBlockerMonitor;->GLOBAL_INSTANCE:Lcom/android/server/power/SuspendBlockerMonitor;

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideReasonFromDreamManager:I

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    const/high16 v6, 0x7fc00000    # Float.NaN

    iput v6, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    new-array v6, v8, [I

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    new-array v6, v8, [I

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    new-array v6, v8, [I

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mUseScreenCurtain:Z

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mUseKeepScreenOn:Z

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mUseAdaptiveScreenOffTimeout:Z

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    const-string v6, ""

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    const-string v6, ""

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v7, 0x2

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    const-string v10, ""

    iput-object v10, v0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    const-string v10, "600000"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    const-string v7, ""

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const-string v7, ""

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mIsPowerBoostInvokedFromLocal:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    const-string v7, ""

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitLastCaller:Ljava/lang/String;

    const/16 v7, 0x1e5

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mBatteryOnline:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    sget-object v3, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    iput-object v6, v0, Lcom/android/server/power/PowerManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayState:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastNormalTouchBoostTime:J

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    new-instance v3, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v3, v0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDetectorCallback:Lcom/android/server/power/PowerManagerService$1;

    new-instance v3, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v3, v0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutCallbacks:Lcom/android/server/power/PowerManagerService$1;

    new-instance v3, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v3, v0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Lcom/android/server/power/PowerManagerService$3;

    iput-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerCalledTime:J

    iput v8, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    new-instance v3, Lcom/android/server/power/PowerManagerService$6;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerTimeoutRunnable:Lcom/android/server/power/PowerManagerService$6;

    new-instance v3, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v3, v0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    new-instance v4, Lcom/android/server/power/PowerManagerService$6;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaser:Lcom/android/server/power/PowerManagerService$6;

    new-instance v4, Lcom/android/server/power/PowerManagerService$6;

    const/4 v5, 0x5

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Lcom/android/server/power/PowerManagerService$6;

    new-instance v4, Lcom/android/server/power/PowerManagerService$10;

    invoke-direct {v4, v0}, Lcom/android/server/power/PowerManagerService$10;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/android/server/power/PowerManagerService$10;

    new-instance v4, Lcom/android/server/power/PowerManagerService$6;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Lcom/android/server/power/PowerManagerService$6;

    new-instance v4, Lcom/android/server/power/PowerManagerService$6;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    new-instance v4, Lcom/android/server/power/PowerManagerService$6;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v4, v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    new-instance v4, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v4, v0}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService$NativeWrapper;-><init>()V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    new-instance v4, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/PowerManagerService$Injector$1;

    new-instance v4, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    new-instance v4, Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-direct {v4}, Lcom/android/server/power/feature/PowerManagerFlags;-><init>()V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string/jumbo v4, "PowerManagerService"

    const/4 v5, -0x4

    invoke-static {v5, v4, v8}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v7, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;

    invoke-direct {v7, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;)V

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, v5, v7, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v10, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-wide/16 v11, 0x64

    const-wide/16 v13, 0x6e

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "pms.misc"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v4, v6, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/power/PowerManagerService$Constants;

    invoke-direct {v4, v0, v10}, Lcom/android/server/power/PowerManagerService$Constants;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    new-instance v4, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {v4}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    new-instance v4, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v4, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    new-instance v4, Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-direct {v4, v3}, Lcom/android/server/power/AmbientDisplaySuppressionController;-><init>(Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    new-instance v3, Lcom/android/server/power/AttentionDetector;

    new-instance v4, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    invoke-direct {v3, v4, v1}, Lcom/android/server/power/AttentionDetector;-><init>(Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    new-instance v3, Lcom/android/server/power/ScreenUndimDetector;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v8, v3, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    new-instance v6, Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {v6, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {v5, v1, v2, v6}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    move-object v2, v1

    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    move-object v15, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v15

    new-instance v4, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v4, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v1, Lcom/android/server/power/LowPowerStandbyController;

    new-instance v4, Lcom/android/server/power/LowPowerStandbyController$RealClock;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-direct {v5}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;-><init>()V

    new-instance v6, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "low_power_standby_policy.xml"

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/LowPowerStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;Ljava/util/function/Supplier;Ljava/io/File;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    new-instance v1, Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-direct {v1}, Lcom/android/server/power/InattentiveSleepWarningController;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    new-instance v1, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPermissionCheckerWrapper:Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerPropertiesWrapper:Lcom/android/server/power/PowerManagerService$Injector$1;

    new-instance v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    new-instance v1, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    invoke-direct {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mUseAutoSuspend:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050121

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    sget v5, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    const/high16 v5, -0x40000000    # -2.0f

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_1

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_1

    cmpl-float v6, v3, v5

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    :goto_1
    cmpl-float v1, v4, v5

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    goto :goto_2

    :cond_2
    iput v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    :goto_2
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "PowerManagerService.Booting"

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    const-string/jumbo v3, "PowerManagerService.WakeLocks"

    invoke-static {v0, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    const-string/jumbo v3, "PowerManagerService.Display"

    invoke-static {v0, v3}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    const-string/jumbo v4, "unknown"

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    const-string/jumbo v2, "holding display"

    invoke-virtual {v3, v2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v0, v9}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    iput v9, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    const-string/jumbo v2, "ro.boot.quiescent"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    const/4 v0, 0x7

    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    invoke-static {v8, v8}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static adjustWakeLockSummary(III)I
    .locals 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    and-int/lit16 p1, p1, -0xc1

    :cond_0
    const/4 v1, 0x4

    if-eqz p0, :cond_1

    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_3

    :cond_1
    and-int/lit8 v2, p1, -0xf

    if-nez p0, :cond_2

    if-ne p2, v1, :cond_2

    and-int/lit8 p1, p1, -0x1f

    goto :goto_0

    :cond_2
    move p1, v2

    :cond_3
    :goto_0
    if-ne p0, v0, :cond_4

    if-ne p2, v1, :cond_4

    and-int/lit8 p1, p1, -0x11

    :cond_4
    and-int/lit8 p2, p1, 0x6

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-ne p0, v0, :cond_5

    or-int/lit8 p1, p1, 0x21

    goto :goto_1

    :cond_5
    const/4 p2, 0x2

    if-ne p0, p2, :cond_6

    or-int/lit8 p1, p1, 0x1

    :cond_6
    :goto_1
    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_7

    or-int/lit8 p0, p1, 0x1

    return p0

    :cond_7
    return p1
.end method

.method public static getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;
    .locals 3

    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static isScreenLock(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[api] lowLevelReboot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "PowerManagerService"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/Slog;->saveLogAsFile()V

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    const-string/jumbo v3, "quiescent"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string v4, ",quiescent"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-static {v1, v4, p0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "recovery-update"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object p0, v1

    :cond_4
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-static {p0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reboot,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sys.powerctl"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const-string/jumbo p0, "Unexpected return from lowLevelReboot!"

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeForceSuspend()Z
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractiveAsync(ZI)V
.end method

.method private static native nativeSetPowerBoost(II)V
.end method

.method private static native nativeSetPowerMode(IZ)Z
.end method


# virtual methods
.method public final addPowerGroupsForNonDefaultDisplayGroupLocked()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayGroupIds()Landroid/util/IntArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Tried to add already existing group:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PowerManagerService"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/android/server/power/PowerGroup;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-direct/range {v3 .. v11}, Lcom/android/server/power/PowerGroup;-><init>(ILcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;ZJLcom/android/server/power/feature/PowerManagerFlags;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public final applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    .locals 15

    move-object/from16 v11, p1

    const-string/jumbo v0, "Screen__On : Cancel (not allow 3rd-party app on sub screen : "

    iget v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_e

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v5, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v4}, Landroid/os/WorkSource;->getUid(I)I

    move-result v2

    move-object v14, v5

    move v5, v2

    move-object v2, v14

    :goto_1
    move v6, v3

    :goto_2
    move-object v8, v2

    move v7, v5

    goto :goto_3

    :cond_2
    iget-object v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    goto :goto_2

    :goto_3
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    const/4 v5, 0x1

    const-string v9, ")"

    const/16 v10, 0x2710

    const-string/jumbo v12, "PowerManagerService"

    if-eqz v2, :cond_3

    if-lt v7, v10, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    if-ne v2, v5, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v13, "com.android.systemui"

    invoke-virtual {v2, v13, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    if-eq v7, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Unable to resolve SystemUI\'s UID."

    invoke-static {v12, v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    if-lt v7, v10, :cond_4

    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Screen__On : Cancel (notifications are disabled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isGloballyInteractiveInternal()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "isWakeUpPreventionNeededForEdgeLightingLocked - interactive"

    invoke-static {v12, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    move v0, v4

    goto :goto_5

    :cond_6
    iget v0, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr v0, v2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_7

    const/16 v2, 0xa

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    iget v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v9, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v10, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v13, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-interface {v0, v2, v9, v10, v13}, Landroid/app/INotificationManager;->dispatchDelayedWakelockAndBlocked(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Failed to call NotificationManager : "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    if-eqz v0, :cond_8

    const-string/jumbo v0, "applyWakeLockFlagsOnAcquireLocked return by isWakeUpPreventionNeededForEdgeLighting"

    invoke-static {v12, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " wl: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    if-nez v8, :cond_9

    :goto_6
    move v5, v4

    goto/16 :goto_7

    :cond_9
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/AttributionSource;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v8, v10}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "ACQUIRE_CAUSES_WAKEUP for "

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mPermissionCheckerWrapper:Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v13, "android.permission.TURN_SCREEN_ON"

    invoke-static {v2, v13, v6, v9, v10}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "Allowing device wake-up from app "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    const-wide/32 v9, 0xce1a479

    invoke-static {v9, v10, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerPropertiesWrapper:Lcom/android/server/power/PowerManagerService$Injector$1;

    if-nez v2, :cond_b

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/sysprop/PowerProperties;->waive_target_sdk_check_for_turn_screen_on()Ljava/util/Optional;

    move-result-object v2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Allowing device wake-up without android.permission.TURN_SCREEN_ON for "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/sysprop/PowerProperties;->permissionless_turn_screen_on()Ljava/util/Optional;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Device wake-up allowed by debug.power.permissionless_turn_screen_on"

    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    const-string/jumbo v2, "Not allowing device wake-up for "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_7
    if-eqz v5, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    if-ne v2, v3, :cond_d

    move v0, v4

    :goto_8
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v6, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v5, 0x2

    move v9, v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v6, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v5, 0x2

    move v9, v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    :cond_e
    return-void
.end method

.method public final areAllPowerGroupsReadyLocked()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    iget-boolean v3, v3, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final calculateHdrBrightnessLimitLocked(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/power/PowerManagerService;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final canDreamLocked(Lcom/android/server/power/PowerGroup;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {v0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    if-eq v0, v1, :cond_7

    :cond_2
    iget v0, p1, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v0, :cond_5

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-ge v3, v0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz p1, :cond_6

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-lt p0, p1, :cond_7

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v2
.end method

.method public final dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z
    .locals 12

    move/from16 v0, p4

    move/from16 v4, p5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-wide v5, p1, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v1, p2, v5

    if-ltz v1, :cond_9

    iget v1, p1, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "PowerManagerService"

    iget v3, p1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-nez v3, :cond_2

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mGoToSleepPreventionEnabled:Z

    if-eqz v5, :cond_2

    const-string/jumbo p0, "goToSleepNoUpdateLocked: GoToSleep prevention is enabled"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    iput-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    :cond_3
    const/4 v5, 0x2

    const/4 v9, 0x1

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerGroup;

    iget v5, v5, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-ne v5, v9, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Screen__Off(d) - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") groupId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    sget-object v5, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    iget-wide v6, v5, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_6

    iget-boolean v6, v5, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "need to skip , ignore "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " th OFF profiler "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p2

    long-to-int v6, v6

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->clearAll()V

    iput v6, v5, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    iput v6, v5, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTimeAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_7

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    const-string/jumbo v5, "[api] BrightnessLimitRunnable done (complete immediately)"

    invoke-static {v1, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    if-eqz v5, :cond_8

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    const-string/jumbo v5, "[api] HdrBrightnessLimitRunnable done (complete immediately)"

    invoke-static {v1, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v0, p1, Lcom/android/server/power/PowerGroup;->mLastGoToSleepReason:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4, p1, v0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerGroup;I)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo p0, "Powering off display group due to "

    const-string/jumbo v1, "powerOffDisplay"

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1a

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-wide v0, p1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v6, p1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long v0, p2, v0

    const-string/jumbo v2, "PowerGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (groupId= "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", uid= "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", millisSinceLastUserActivity="

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", lastUserActivityEvent="

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    invoke-static {p0}, Landroid/os/PowerManager;->userActivityEventToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")..."

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p1, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_9
    :goto_0
    return v2
.end method

.method public final dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JIZ)Z
    .locals 12

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "Napping power group (groupId="

    iget-wide v2, p1, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v2, p2, v2

    if-ltz v2, :cond_2

    const/4 v9, 0x1

    if-nez p5, :cond_1

    iget v2, p1, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v2, v9, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dreamPowerGroup"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string/jumbo v2, "PowerGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p1, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p2

    move v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;Z)V
    .locals 117
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "Wakelock Blacklist App id: size="

    const-string v3, "  mSmartStayEnabledSetting: "

    const-string/jumbo v4, "Screen off timeout for DeX: "

    const-string/jumbo v5, "SQD Screen dim duration override: "

    const-string/jumbo v6, "Screen dim duration override: "

    const-string/jumbo v7, "Screen dim duration: "

    const-string/jumbo v8, "Screen off timeout: "

    const-string/jumbo v9, "Sleep timeout: "

    const-string v10, "Attentive timeout: "

    const-string v11, "  SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING: "

    const-string v12, "  SEC_FEATURE_DUAL_DISPLAY: "

    const-string v13, "  SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY: "

    const-string v14, "  SEC_FEATURE_FLIP_COVER_DISPLAY: "

    const-string v15, "  SEC_FEATURE_FOLD_COVER_DISPLAY: "

    move-object/from16 v16, v2

    const-string v2, "  SEC_FEATURE_DEX_DUAL_VIEW: "

    move-object/from16 v17, v3

    const-string v3, "  mShouldWaitForTransitionToAodUi: "

    move-object/from16 v18, v4

    const-string v4, "  mAodMode: "

    move-object/from16 v19, v5

    const-string v5, "  SEC_FEATURE_AOD_LOOK_CHARGING_UI: "

    move-object/from16 v20, v6

    const-string v6, "  SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED: "

    move-object/from16 v21, v7

    const-string v7, "  SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE: "

    move-object/from16 v22, v8

    const-string v8, "  SEC_FEATURE_SEAMLESS_AOD: "

    move-object/from16 v23, v9

    const-string v9, "  SEC_FEATURE_USE_GED_DOZE: "

    move-object/from16 v24, v10

    const-string v10, "  mAutoBrightnessLimitLastCaller="

    move-object/from16 v25, v11

    const-string v11, "  mLastAutoBrightnessLimitTime="

    move-object/from16 v26, v12

    const-string v12, "  mAutoBrightnessUpperLimit="

    move-object/from16 v27, v13

    const-string v13, "  mAutoBrightnessLowerLimit="

    move-object/from16 v28, v14

    const-string v14, "  mOutdoorModeSetting: "

    move-object/from16 v29, v15

    const-string v15, "  mLastWakeUpReason: "

    move-object/from16 v30, v2

    const-string v2, "  mUserId="

    move-object/from16 v31, v3

    const-string v3, "  mForegroundProfile="

    move-object/from16 v32, v4

    const-string v4, "  mDoubleTapWakeEnabled="

    move-object/from16 v33, v5

    const-string v5, "  mScreenBrightnessDefault="

    move-object/from16 v34, v6

    const-string v6, "  mScreenBrightnessMaximum="

    move-object/from16 v35, v7

    const-string v7, "  mScreenBrightnessMinimum="

    move-object/from16 v36, v8

    const-string v8, "  mUseNormalBrightnessForDoze="

    move-object/from16 v37, v9

    const-string v9, "  mDozeScreenBrightnessOverrideFromDreamManager="

    move-object/from16 v38, v10

    const-string v10, "  mDrawWakeLockOverrideFromSidekick="

    move-object/from16 v39, v11

    const-string v11, "  mDozeScreenStateOverrideFromDreamManager="

    move-object/from16 v40, v12

    const-string v12, "  mUserInactiveOverrideFromWindowManager="

    move-object/from16 v41, v13

    const-string v13, "  mUserActivityTimeoutForDexOverrideFromWindowManager="

    move-object/from16 v42, v14

    const-string v14, "  mUserActivityTimeoutOverrideFromWindowManager="

    move-object/from16 v43, v15

    const-string v15, "  mStayOnWhilePluggedInSetting="

    move-object/from16 v44, v2

    const-string v2, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    move-object/from16 v45, v3

    const-string v3, "  mSleepTimeoutSetting="

    move-object/from16 v46, v4

    const-string v4, "  mScreenOffTimeoutSetting="

    move-object/from16 v47, v5

    const-string v5, "  mAttentiveWarningDurationConfig="

    move-object/from16 v48, v6

    const-string v6, "  mAttentiveTimeoutSetting="

    move-object/from16 v49, v7

    const-string v7, "  mAttentiveTimeoutConfig="

    move-object/from16 v50, v8

    const-string v8, "  mMaximumScreenDimRatioConfig="

    move-object/from16 v51, v9

    const-string v9, "  mMaximumScreenDimDurationConfig="

    move-object/from16 v52, v10

    const-string v10, "  mMinimumScreenOffTimeoutConfig="

    move-object/from16 v53, v11

    const-string v11, "  mBrightWhenDozingConfig="

    move-object/from16 v54, v12

    const-string v12, "  mDozeAfterScreenOff="

    move-object/from16 v55, v13

    const-string v13, "  mDreamsActivateWhilePosturedSetting="

    move-object/from16 v56, v14

    const-string v14, "  mDreamsActivateOnDockSetting="

    move-object/from16 v57, v15

    const-string v15, "  mDreamsActivateOnSleepSetting="

    move-object/from16 v58, v2

    const-string v2, "  mDreamsEnabledSetting="

    move-object/from16 v59, v3

    const-string v3, "  mDreamsBatteryLevelDrainCutoffConfig="

    move-object/from16 v60, v4

    const-string v4, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    move-object/from16 v61, v5

    const-string v5, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    move-object/from16 v62, v6

    const-string v6, "  mDreamsEnabledOnBatteryConfig="

    move-object/from16 v63, v7

    const-string v7, "  mDreamsActivatedWhilePosturedByDefaultConfig="

    move-object/from16 v64, v8

    const-string v8, "  mDreamsActivatedOnDockByDefaultConfig="

    move-object/from16 v65, v9

    const-string v9, "  mDreamsActivatedOnSleepByDefaultConfig="

    move-object/from16 v66, v10

    const-string v10, "  mDreamsEnabledByDefaultConfig="

    move-object/from16 v67, v11

    const-string v11, "  mDreamsSupportedConfig="

    move-object/from16 v68, v12

    const-string v12, "  mSuspendWhenScreenOffDueToProximityConfig="

    move-object/from16 v69, v13

    const-string v13, "  mKeepDreamingWhenUnplugging="

    move-object/from16 v70, v14

    const-string v14, "  mTheaterModeEnabled="

    move-object/from16 v71, v15

    const-string v15, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    move-object/from16 v72, v2

    const-string v2, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    move-object/from16 v73, v3

    const-string v3, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    move-object/from16 v74, v4

    const-string v4, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    move-object/from16 v75, v5

    const-string v5, "  mHoldingDisplaySuspendBlocker="

    move-object/from16 v76, v6

    const-string v6, "  mHoldingWakeLockSuspendBlocker="

    move-object/from16 v77, v7

    const-string v7, "  mDefaultDisplayReadyByProximity="

    move-object/from16 v78, v8

    const-string v8, "  mScreenBrightnessBoostInProgress="

    move-object/from16 v79, v9

    const-string v9, "  mLastScreenBrightnessBoostTime="

    move-object/from16 v80, v10

    const-string v10, "  mLastInteractivePowerHintTime="

    move-object/from16 v81, v11

    const-string v11, "  mLastGlobalSleepTimeRealtime="

    move-object/from16 v82, v12

    const-string v12, "  mLastGlobalWakeTimeRealtime="

    move-object/from16 v83, v13

    const-string v13, "  mLastSleepReason="

    move-object/from16 v84, v14

    const-string v14, "  mLastSleepTime="

    move-object/from16 v85, v15

    const-string v15, "  mLastWakeTime="

    move-object/from16 v86, v2

    const-string v2, "  mLowPowerStandbyActive="

    move-object/from16 v87, v3

    const-string v3, "  mDeviceIdleTempWhitelist="

    move-object/from16 v88, v4

    const-string v4, "  mDeviceIdleWhitelist="

    move-object/from16 v89, v5

    const-string v5, "  mDeviceIdleMode="

    move-object/from16 v90, v6

    const-string v6, "  mLightDeviceIdleMode="

    move-object/from16 v91, v7

    const-string v7, "  mBatteryLevelLow="

    move-object/from16 v92, v8

    const-string v8, "  mSandmanScheduled="

    move-object/from16 v93, v9

    const-string v9, "  mInterceptedKeyForProximity="

    move-object/from16 v94, v10

    const-string v10, "  mInterceptedPowerKeyForProximity="

    move-object/from16 v95, v11

    const-string v11, "  mRequestWaitForNegativeProximity="

    move-object/from16 v96, v12

    const-string v12, "  mWakeLockSummary=0x"

    move-object/from16 v97, v13

    const-string v13, "  mHalInteractiveModeEnabled="

    move-object/from16 v98, v14

    const-string v14, "  mHalAutoSuspendModeEnabled="

    move-object/from16 v99, v15

    const-string v15, "  mUseAutoSuspend="

    move-object/from16 v100, v2

    const-string v2, "  mEnhancedDischargePredictionIsPersonalized="

    move-object/from16 v101, v3

    const-string v3, "  mLastEnhancedDischargeTimeUpdatedElapsed="

    move-object/from16 v102, v4

    const-string v4, "  mEnhancedDischargeTimeElapsed="

    move-object/from16 v103, v5

    const-string v5, "  mSystemReady="

    move-object/from16 v104, v6

    const-string v6, "  mBootCompleted="

    move-object/from16 v105, v7

    const-string v7, "  mProximityPositive="

    move-object/from16 v106, v8

    const-string v8, "  mStayOn="

    move-object/from16 v107, v9

    const-string v9, "  mDockState="

    move-object/from16 v108, v10

    const-string v10, "  mDreamsBatteryLevelDrain="

    move-object/from16 v109, v11

    const-string v11, "  mBatteryLevel="

    move-object/from16 v110, v12

    const-string v12, "  mPlugType="

    move-object/from16 v111, v13

    const-string v13, "  mIsPowered="

    move-object/from16 v112, v14

    const-string v14, "  mWakefulnessChanging="

    move-object/from16 v113, v15

    const-string v15, "  mWakefulness="

    move-object/from16 v114, v2

    const-string v2, "  mDirty=0x"

    move-object/from16 v115, v3

    const-string/jumbo v3, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    move-object/from16 v116, v4

    :try_start_0
    const-string/jumbo v4, "Power Manager State:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    invoke-virtual {v4, v1}, Lcom/android/server/power/PowerManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v4

    invoke-static {v4}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v116

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v115

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v114

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v113

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mUseAutoSuspend:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v112

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v111

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v110

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mNotifyLongScheduled="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-string v2, "(none)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_0
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  mNotifyLongDispatched="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    const-string v2, "(none)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  mNotifyLongNextCheck="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    const-string v2, "(none)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v109

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v108

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v107

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v106

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v105

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v104

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v103

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v102

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v101

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v99

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v98

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v97

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-static {v4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v96

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTimeRealtime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v95

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTimeRealtime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v94

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v93

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v92

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v91

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v90

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v89

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "Settings and Configuration:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v88

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v87

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v86

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v85

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v84

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v83

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mKeepDreamingWhenUnplugging:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v82

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v81

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v79

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v78

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v77

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedWhilePosturedByDefaultConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v76

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v75

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v74

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v73

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v72

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v71

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v70

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v69

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateWhilePosturedSetting:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v68

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v67

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mBrightWhenDozingConfig:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v66

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v65

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v64

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v63

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v62

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v61

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v60

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v59

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v58

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (enforced="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v57

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v56

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v55

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v54

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v53

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v52

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v51

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v50

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v49

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v48

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v47

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v46

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v45

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v44

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v43

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v42

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v41

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v40

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v39

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v38

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLimitLastCaller:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v37

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_DOZE:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v36

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SEAMLESS_AOD:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v35

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v34

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v33

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v32

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mAodMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v31

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v30

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v29

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v12, v24

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "Smart Stay:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    invoke-virtual {v2, v1}, Lcom/android/server/power/SmartStayController;->dumpInternal(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "UID states (changing="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " changed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    :goto_4
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$UidState;

    const-string v6, "  UID "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-eqz v6, :cond_4

    const-string v6, "  ACTIVE "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v6, "INACTIVE "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    const-string v6, " count="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " state="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "Looper state:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "  "

    invoke-virtual {v2, v4, v6}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    const-string v2, "Clear Cover:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mIsCoverClosed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mlastUpdateCoverStateReason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mlastUpdateCoverStateTime: = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mFeatureCoverSysfs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCoverType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mlastUpdateCoverTypeReason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mScreenBrightnessForClearCoverConfig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mBrightnessLimitByCoverConfig: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "Master Brightness Limit:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMasterBrightnessLowerLimit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMasterBrightnessUpperLimit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMasterBrightnessLimitLastCaller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitLastCaller:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMasterBrightnessLimitPeriod: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMasterBrightnessLimitRunning: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mLastRequestedLimitationOfBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mTargetBrightnessForLimit : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "HDR Brightness Limit"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHdrBrightnessUpperLimit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mLastRequestedLimitationOfHdrBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mTargetBrightnessForHdrLimit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHdrBrightnessLimitRunning: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHdrBrightnessLimitPeriod: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDR Brightness Limit Locks: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_6
    if-ge v6, v4, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SEC_USE_FACTORY_BINARY: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wake Locks: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_7
    if-ge v6, v4, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Suspend Blockers: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_8
    if-ge v6, v4, :cond_8

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display Power: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Lcom/android/server/power/PowerManagerService$3;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFreezingScreenBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v2, v1}, Lcom/android/server/power/PowerHistorian;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen on profiler V2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    move v4, v5

    :goto_9
    array-length v6, v2

    const/4 v7, 0x1

    if-ge v4, v6, :cond_9

    aget-object v6, v2, v4

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen off profiler V2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/PowerManagerUtil;->sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    move v4, v5

    :goto_a
    array-length v6, v2

    if-ge v4, v6, :cond_a

    aget-object v6, v2, v4

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->dump(Ljava/io/PrintWriter;)V

    goto :goto_b

    :cond_b
    const-string v2, "Battery Saver: DISABLED"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v2, v1}, Lcom/android/server/power/AttentionDetector;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Profile power states: size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v5

    :goto_c
    if-ge v4, v2, :cond_c

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    const-string v7, "  mUserId="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " mScreenOffTimeout="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " mScreenOffTimeoutForUser="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " mWakeLockSummary="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " mLastUserActivityTime="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " mLockingNotified="

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v6, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_c
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    invoke-virtual {v2, v1}, Lcom/android/server/power/SuspendBlockerMonitor;->dump(Ljava/io/PrintWriter;)V

    move v2, v5

    :goto_d
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v4}, Lcom/android/server/power/PowerGroup;->getSuspendBlockerMonitorInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_d
    const-string v2, "Display Group User Activity:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v5, v2, :cond_e

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  displayGroupId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  userActivitySummary=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  lastUserActivityTime="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeLocked()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  lastUserActivityTimeNoChangeLights="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getLastUserActivityTimeNoChangeLightsLocked()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mWakeLockSummary=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e

    :cond_e
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    if-eqz v4, :cond_f

    invoke-virtual {v4, v1}, Lcom/android/server/power/ScreenOnKeeper;->dump(Ljava/io/PrintWriter;)V

    :cond_f
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_10

    invoke-virtual {v2, v1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    :cond_10
    if-nez p2, :cond_11

    const-string v2, "\n\n ====================== beginning of PMS  log ======================"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Day        Time    Tid Debug      TAG          INFO"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " ==================================================================="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/power/Slog;->dump(Ljava/io/PrintWriter;)V

    const-string v2, " ======================= end of PMS log ========================"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " PMSLog Done !!! \n\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v1}, Lcom/android/server/power/Notifier;->dump(Ljava/io/PrintWriter;)V

    :cond_12
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {v2, v1}, Lcom/android/server/power/AmbientDisplaySuppressionController;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v2, v1}, Lcom/android/server/power/LowPowerStandbyController;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v1}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->dump(Ljava/io/PrintWriter;)V

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_10

    :cond_13
    :goto_f
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0, v1}, Lcom/android/server/power/feature/PowerManagerFlags;->dump(Ljava/io/PrintWriter;)V

    return-void

    :goto_10
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :goto_11
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final findForegroundPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "activity"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public findWakeLockLocked(Landroid/os/IBinder;)Lcom/android/server/power/PowerManagerService$WakeLock;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerManagerService$WakeLock;

    return-object p0
.end method

.method public final finishWakefulnessChangeIfNeededLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget-boolean v4, v2, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    if-eqz v4, :cond_0

    iget v2, v2, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget v2, v2, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_0

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->setEnsureTransitionToDozingReleaserLocked(Z)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_ENSURE_TRANSITION_TO_DOZING:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->setEnsureTransitionToDozingReleaserLocked(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-ltz v1, :cond_4

    const/16 v1, 0xaab

    invoke-static {v1, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v4, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v4, :cond_5

    iput-boolean v0, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    invoke-virtual {p0, v2}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v2, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v2, :cond_7

    iput-boolean v0, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    :cond_7
    return-void
.end method

.method public final getAttentiveTimeoutLocked()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBinderServiceInstance()Lcom/android/server/power/PowerManagerService$BinderService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    return-object p0
.end method

.method public getDefaultGroupScreenOffTimeoutOverrideLocked(JJ)J
    .locals 2

    iget-object p3, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz p3, :cond_1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_1

    iget-wide p3, p3, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public getDreamsBatteryLevelDrain()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    return p0
.end method

.method public getGlobalWakefulnessLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    return p0
.end method

.method public getLastShutdownReasonInternal()I
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "sys.boot.reason"

    const/4 v7, 0x0

    invoke-static {p0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v8, "shutdown,thermal,battery"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v7, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v8, "reboot,userrequested"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v8, "shutdown"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v7, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v8, "shutdown,userrequested"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v7, v3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v8, "reboot"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v7, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v8, "shutdown,battery"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v7, v5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v8, "shutdown,thermal"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    return v6

    :pswitch_0
    return v0

    :pswitch_1
    return v5

    :pswitch_2
    return v3

    :pswitch_3
    return v4

    :pswitch_4
    return v1

    :pswitch_5
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e3d61bf -> :sswitch_6
        -0x418b4b49 -> :sswitch_5
        -0x37ba085b -> :sswitch_4
        -0x32cb60d3 -> :sswitch_3
        -0xa17f9aa -> :sswitch_2
        0x28e9a3c -> :sswitch_1
        0x489a31a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getLocalServiceInstance()Lcom/android/server/power/PowerManagerService$LocalService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    return-object p0
.end method

.method public getPowerGroupSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getScreenDimDurationLocked(J)J
    .locals 6

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v4, v0, p1

    if-ltz v4, :cond_1

    :cond_0
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    :cond_1
    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_2
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    return-wide p0

    :cond_3
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    long-to-float p1, p1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr p1, p0

    float-to-long p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getScreenOffTimeoutLocked(JJ)J
    .locals 7

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v5, v2, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeout:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_1

    move-wide v0, v5

    :cond_1
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2
    cmp-long v2, p1, v3

    if-ltz v2, :cond_3

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3
    cmp-long p1, p3, v3

    if-ltz p1, :cond_4

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    int-to-long p1, p1

    iget-wide p3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    cmp-long v2, p3, v3

    if-ltz v2, :cond_5

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_5
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_6
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getScreenOffTimeoutLocked: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PowerManagerService"

    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, v0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    :cond_7
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getSleepTimeoutLocked(J)J
    .locals 5

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getStartingLimitationOfBrightness(II)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    if-ge p1, p2, :cond_2

    if-ltz p0, :cond_2

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    return p2
.end method

.method public getWakefulnessLocked(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerGroup;

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    return p0
.end method

.method public handleSettingsChangedLocked()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final handleUidStateChangeLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    return-void
.end method

.method public final isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v0

    iget p0, p1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-nez p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    iget-wide p0, p1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    add-long/2addr p0, v0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget p1, p1, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isBeingKeptFromInattentiveSleepLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isGloballyInteractiveInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isWakeUpPreventionNeededLocked()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string/jumbo p0, "Screen__On : Cancel (wakeUpPreventionEnabled)"

    invoke-static {p0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;)V

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0x70

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "Screen__On : Cancel (proximity)"

    invoke-static {v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    if-eqz v2, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3

    const/16 v4, 0x64

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    :goto_1
    if-eqz v3, :cond_4

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Screen__On : Cancel (coverType: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;)V

    return v1

    :cond_4
    return v0
.end method

.method public final maybeUpdateForegroundProfileLastActivityLocked(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mForegroundProfile:I

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->updateKnoxTimeoutValue(I)V

    const-string/jumbo p0, "PowerManagerService"

    const-string/jumbo p1, "create ProfilePowerState for Workspace"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    cmp-long p0, p1, v1

    if-lez p0, :cond_1

    iput-wide p1, v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    :cond_1
    return-void
.end method

.method public final monitor()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final napInternal(IJZ)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/power/PowerGroup;

    move-object v2, p0

    move v6, p1

    move-wide v4, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JIZ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyScreenTimeoutPolicyChangesLocked()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v0, v0, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableScreenTimeoutPolicyListenerApi:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v3}, Lcom/android/server/power/PowerGroup;->hasWakeLockKeepingScreenOnLocked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v5, v4, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v5

    move v6, v0

    :goto_1
    :try_start_0
    iget-object v7, v4, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, v4, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, v4, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v8, v7}, Landroid/hardware/display/DisplayManagerInternal;->getGroupIdForDisplay(I)I

    move-result v7

    if-ne v7, v2, :cond_1

    iget-object v7, v4, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iput v3, v7, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    iget-object v8, v7, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    iget-object v8, v8, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v9, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v7}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_4
    return-void
.end method

.method public final notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(IIILandroid/os/IWakeLockCallback;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_0
    return-void
.end method

.method public final notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v2, p7

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v4, :cond_8

    iget v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit16 v5, v4, 0x81

    if-eqz v5, :cond_1

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const-string v4, "(draw)"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    const-string v5, "CHG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0xaa9

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v8, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v11, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v12, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v13, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v14, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    move-object v4, v10

    move-object v10, v13

    move-object v13, v14

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v2, v4

    goto :goto_1

    :goto_2
    invoke-virtual {v7, v8}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v14

    invoke-virtual {v7, v3}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v17

    if-eqz v10, :cond_5

    if-eqz v2, :cond_5

    if-ltz v14, :cond_5

    if-ltz v17, :cond_5

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v11

    sget-object v11, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    sget-object v7, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v4, v6

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    move-object v7, v6

    move-object v6, v2

    const/16 v2, 0x3e8

    move/from16 v3, p5

    if-ne v3, v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, p2, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    move/from16 v18, v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    :try_start_0
    iget-object v2, v6, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v2, v2, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v9, v6, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v16, p6

    move-object v15, v7

    move v11, v12

    move/from16 v19, v17

    move/from16 v20, v18

    move-object/from16 v17, p3

    move-object/from16 v18, p8

    move-object v12, v8

    invoke-interface/range {v9 .. v20}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_6

    :cond_4
    move-object v2, v6

    move v11, v12

    move v12, v14

    new-instance v6, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;

    move-object v9, v10

    move-object v10, v8

    move-object v8, v9

    move-object/from16 v15, p3

    move/from16 v14, p6

    move-object/from16 v16, p8

    move v9, v11

    move-object v11, v13

    move-object v13, v7

    move-object v7, v2

    invoke-direct/range {v6 .. v18}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    move-object v2, v6

    move-object v6, v7

    iget-object v3, v6, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :cond_5
    move/from16 v3, p5

    move-object/from16 v5, p9

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v11

    move v11, v12

    if-ne v15, v5, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v15, :cond_7

    if-eqz v5, :cond_7

    invoke-interface {v15}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-interface {v5}, Landroid/os/IWakeLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    if-ne v12, v14, :cond_7

    :goto_5
    const/16 v16, -0x1

    move v12, v11

    move-object v14, v13

    move v11, v9

    move-object v13, v10

    move-object v10, v4

    move-object v9, v8

    move v8, v7

    move-object v7, v6

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V

    move-object v4, v7

    move-object v7, v2

    move-object v2, v4

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    move v4, v3

    move-object v6, v5

    move/from16 v3, p2

    move/from16 v5, p6

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(IIILandroid/os/IWakeLockCallback;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object v12, v10

    move v10, v9

    move-object v9, v4

    const/4 v15, -0x1

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V

    move/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v10, p8

    move-object v7, v2

    move-object v2, v6

    move-object/from16 v6, p9

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(IIILandroid/os/IWakeLockCallback;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_8
    return-void
.end method

.method public final notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, v4, v5, v1}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    invoke-static {p0, v1, v4, v5, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, v4, v5, v2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, v4, v5, v1}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    invoke-static {p0, v1, v4, v5, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, v4, v5, v2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit16 v1, v0, 0x81

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const-string v0, "(draw)"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string/jumbo v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa9

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    move v11, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongFinishedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :cond_2
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x1f4

    const/16 v3, 0x3e8

    const/4 v6, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_a

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/server/power/AttentionDetector;->systemReady(Landroid/content/Context;)V

    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string/jumbo v11, "PowerManagerService.Broadcasts"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v11}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v17, Lcom/android/server/power/Notifier;

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v14}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;Lcom/android/server/policy/WindowManagerPolicy;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;)V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v15, Lcom/android/server/power/PowerGroup;

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    move-object/from16 v17, v7

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    move-object/from16 v21, v10

    invoke-direct/range {v15 .. v21}, Lcom/android/server/power/PowerGroup;-><init>(Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;JLcom/android/server/power/feature/PowerManagerFlags;)V

    invoke-virtual {v5, v6, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v5, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;

    invoke-direct {v5, v0}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v7, v5}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayGroupListener(Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;)V

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v5, v5, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableScreenTimeoutPolicyListenerApi:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v5}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v7, Lcom/android/server/power/PowerManagerService$DisplayListener;

    invoke-direct {v7, v0}, Lcom/android/server/power/PowerManagerService$DisplayListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v5, :cond_1

    new-instance v7, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;

    invoke-direct {v7, v0}, Lcom/android/server/power/PowerManagerService$DreamManagerStateListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v5, v7}, Landroid/service/dreams/DreamManagerInternal;->registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V

    :cond_1
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    const-string/jumbo v7, "PowerManagerService.WirelessChargerDetector"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v7}, Lcom/android/server/power/PowerManagerService$Injector;->createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {v8, v1, v5, v7}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;Landroid/os/Handler;)V

    iput-object v8, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    new-instance v5, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-direct {v5, v0, v7, v8}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;I)V

    iput-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const-class v5, Lcom/android/server/lights/LightsManager;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/lights/LightsManager;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LightsService$LightImpl;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v7, "display_manager"

    const-string/jumbo v8, "disable_screen_wake_locks_while_cached"

    invoke-interface {v5, v7, v8, v4}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDisableScreenWakeLocksWhileCached:Z

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDeviceConfigProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "display_manager"

    invoke-interface {v5, v4, v7, v8}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Lcom/android/server/power/PowerManagerService$3;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v7, v1}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->addPowerGroupsForNonDefaultDisplayGroupLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;

    invoke-direct {v1, v0}, Lcom/android/server/power/PowerManagerService$ForegroundProfileObserver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const-string/jumbo v5, "PowerManagerService"

    invoke-interface {v4, v1, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v1, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/android/server/power/PowerManagerService$10;

    invoke-virtual {v1, v4}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    :cond_2
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    new-instance v8, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v8, v0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/power/WirelessChargerMotionDetector;

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/android/server/power/WirelessChargerMotionDetector;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/BatteryManagerInternal;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerMotionDetector:Lcom/android/server/power/WirelessChargerMotionDetector;

    :cond_3
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDetectorCallback:Lcom/android/server/power/PowerManagerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    new-instance v8, Lcom/android/server/power/AbuseWakeLockDetector;

    invoke-direct {v8, v4, v5, v7, v1}, Lcom/android/server/power/AbuseWakeLockDetector;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v8, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDetector:Lcom/android/server/power/AbuseWakeLockDetector;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/power/SmartStayController;

    new-instance v8, Lcom/android/server/power/SmartStayController$Injector;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/android/server/power/SmartStayController;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/server/power/SmartStayController$Injector;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController;->systemReady()V

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v4, v5}, Lcom/android/server/power/HqmDataDispatcher;->init(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/HqmDataDispatcher$Clock;)V

    new-instance v1, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-direct {v1, v0, v4, v5}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mQuickTilesSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "activity"

    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/power/ForegroundPackageObserver;

    invoke-direct {v5, v1, v4}, Lcom/android/server/power/ForegroundPackageObserver;-><init>(Landroid/app/ActivityManager;Landroid/app/IActivityManager;)V

    iput-object v5, v0, Lcom/android/server/power/PowerManagerService;->mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    const-string/jumbo v4, "SemInputDeviceManagerService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/power/ScreenCurtainController;

    new-instance v11, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {v7 .. v12}, Lcom/android/server/power/ScreenCurtainController;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;Lcom/android/server/power/ScreenCurtainController$Clock;Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;)V

    iput-object v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutCallbacks:Lcom/android/server/power/PowerManagerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    invoke-direct {v1, v4, v5, v7, v8}, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updateQuickTilesSettingsLocked()V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v1, v1, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    new-instance v9, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v9, v0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v4, v1, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x10e015d

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v10, v5

    iput-wide v10, v1, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    cmp-long v5, v10, v7

    if-gez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Screen timeout override is smaller than the minimum timeout : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "ScreenTimeoutOverridePolicy"

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    :cond_4
    iput-object v9, v1, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mPolicyCallback:Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    :cond_5
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    iput-object v1, v2, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "power_manager_constants"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->systemReady()V

    :cond_6
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iput-object v5, v2, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    iget-object v5, v2, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v7, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenUndimDetector;)V

    const-string/jumbo v8, "attention_manager_service"

    invoke-static {v8, v5, v7}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v5, v2, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const v7, 0x2000000a

    const-string/jumbo v8, "UndimDetectorWakeLock"

    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mQuickTilesSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "sysui_quick_qs_tiles"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mQuickTilesSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screensaver_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screensaver_activate_on_sleep"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screensaver_activate_on_dock"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screensaver_activate_on_postured"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "sleep_timeout"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "attentive_timeout"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "doze_always_on"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "double_tap_to_wake"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "device_demo_mode"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v6, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    if-eqz v2, :cond_7

    const-string/jumbo v5, "external_display_screen_timeout"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7
    const-string/jumbo v5, "user_activity_timeout"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "intelligent_sleep_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "display_outdoor_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "aod_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_8
    const-string/jumbo v5, "sem_power_saving_adjust_brightness_factor"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v4, v0}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v4, v0}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NO_USER_ACTIVITY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.USER_ACTIVITY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    iput-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    if-eqz v2, :cond_9

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.server.power.ACTION_INTERNAL_DISPLAY_OFF_BY_POWERKEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mInternalDisplayOffByPowerKeyIntent:Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_9
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SemInputDeviceManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "/sys/class/lcd/panel/display_on"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v6, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->CHECK_FRAME:Z

    const-string/jumbo v0, "PowerManagerUtil"

    const-string/jumbo v1, "disable FrameCheck"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_a
    const/16 v2, 0x208

    if-ne v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iput-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    const/16 v2, 0x258

    if-ne v1, v2, :cond_c

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "boot_count"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "boot_count"

    add-int/2addr v6, v4

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-exit v2

    goto/16 :goto_6

    :goto_3
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_c
    if-ne v1, v3, :cond_10

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_7
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v4, v3, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_d
    :goto_4
    const/16 v3, 0x3e8

    move-wide v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IIIJ)Z

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0xa

    const/16 v5, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    :cond_e
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Lcom/android/server/power/PowerManagerService$DeviceStateListener;

    invoke-direct {v3, v0}, Lcom/android/server/power/PowerManagerService$DeviceStateListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Lcom/android/server/power/PowerManagerService$6;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    new-instance v2, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenCurtainController;I)V

    iget-object v0, v0, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast v0, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_f
    monitor-exit v7

    return-void

    :goto_5
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_10
    :goto_6
    return-void
.end method

.method public final onPowerGroupEventLocked(ILcom/android/server/power/PowerGroup;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v1, p2

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget v10, v1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-ne v7, v8, :cond_0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v15

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v9

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    if-nez v7, :cond_1

    if-ne v9, v8, :cond_1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v6, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move v2, v9

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, v1, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/16 v12, 0xa

    move-object/from16 v16, v11

    move v11, v1

    move-object/from16 v1, v16

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/power/Notifier;->onGroupWakefulnessChangeStarted(IIIJ)V

    goto :goto_0

    :cond_1
    move v2, v9

    move-object v1, v11

    if-ne v7, v8, :cond_3

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v4, v3, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, v3, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v5, v4, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->delete(I)V

    :cond_2
    iget-object v4, v3, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v4, v4, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v4}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    iget-object v4, v3, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    iget-object v3, v3, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$LocalService;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    goto :goto_0

    :cond_3
    if-ne v7, v3, :cond_4

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v4, v3, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v4, v4, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v4}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    iget-object v4, v3, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    iget-object v3, v3, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$LocalService;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_4
    :goto_0
    if-eq v15, v2, :cond_9

    const/16 v3, 0xb

    if-eq v2, v8, :cond_8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-ne v7, v8, :cond_6

    goto :goto_1

    :cond_6
    const/16 v3, 0xc

    :cond_7
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_8
    if-nez v7, :cond_7

    const/16 v3, 0xa

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "groupId: "

    invoke-static {v10, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v1, v2

    const/16 v2, 0x3e8

    const/16 v5, 0x3e8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(IILjava/lang/String;Ljava/lang/String;IJ)V

    :cond_9
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method public final onStart()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "power"

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBinderService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-class v0, Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLocalService:Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    return-void
.end method

.method public onUserActivity()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    iput v2, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readConfigurationLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const v2, 0x1110030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    const v1, 0x10e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    const v1, 0x1110163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const v1, 0x1110160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const v1, 0x111015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const v1, 0x111015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const v1, 0x111015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedWhilePosturedByDefaultConfig:Z

    const v1, 0x1110161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const v1, 0x10e00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const v1, 0x10e00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const v1, 0x10e00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const v1, 0x111015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    const v1, 0x1110154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    const v1, 0x1110068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBrightWhenDozingConfig:Z

    const v1, 0x10e0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:J

    const-wide/16 v1, 0x4e20

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    const v1, 0x3eaa7efa    # 0.333f

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    const v1, 0x111026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    const v1, 0x10e0157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    const v1, 0x10e0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    return-void
.end method

.method public final recalculateGlobalWakefulnessLocked()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget v2, v2, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    if-nez v1, :cond_3

    move v1, v4

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V
    .locals 7

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    if-gtz v3, :cond_0

    iget v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    iget v2, v2, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[api] applyWakeLockFlagsOnReleaseLocked : userActivityNoUpdateLocked is called : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PowerManagerService"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IIIJ)Z

    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public final restartNofifyLongTimerLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    iget p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr p1, v2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    const-wide/32 v3, 0xea60

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final scheduleSandmanLocked()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget-boolean v3, v2, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget v2, v2, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iput v2, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sensorBlockedByCoverLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setEnsureTransitionToDozingReleaserLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    if-nez p1, :cond_1

    const-string/jumbo p1, "PowerManagerService"

    const-string/jumbo v1, "postDelayed mEnsureTransitionToDozingReleaserRunning"

    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaser:Lcom/android/server/power/PowerManagerService$6;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaser:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    :cond_1
    return-void
.end method

.method public final setHalAutoSuspendModeLocked(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUseAutoSuspend:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final setHalInteractiveModeLocked(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting HAL interactive mode to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PowerManagerService"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "setHalInteractiveModeLocked called by dual screen policy change"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mForceSetHalInteractiveMode:Z

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setHalInteractive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_4

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v1, :cond_4

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProxPowerOff(II)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    invoke-static {p1, p0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractiveAsync(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setLCDFlashModeInternal(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashModeLock:Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    if-eq p1, p2, :cond_1

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPowerModeInternal(IZ)Z
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mEffectivePolicyRaw:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget-boolean v0, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    monitor-exit v1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method

.method public final setUserActivityTimeoutLocked(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUserActivityTimeoutLocked SRUK : now="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 10

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int v2, v0, v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    const/16 v4, 0x2710

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_d

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v4, :cond_7

    iget-boolean v2, v3, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v3, :cond_0

    iget v2, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v2, v5, :cond_0

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v7

    :goto_1
    if-eqz v2, :cond_2

    move v3, v7

    goto :goto_2

    :cond_2
    move v3, v6

    goto :goto_2

    :cond_3
    move v2, v6

    move v3, v2

    :goto_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-gez v8, :cond_4

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v4, v5, :cond_4

    const/4 v8, 0x5

    if-le v4, v8, :cond_4

    or-int/lit8 v3, v3, 0x2

    move v2, v7

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    iget v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v8, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-gez v8, :cond_5

    iget v4, v4, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-le v4, v5, :cond_5

    or-int/lit8 v3, v3, 0x4

    move v2, v7

    :cond_5
    iget-boolean v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabledByFreecess:Z

    if-eqz v4, :cond_6

    or-int/lit8 v3, v3, 0x8

    move v2, v7

    :cond_6
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    or-int/lit8 v3, v3, 0x10

    move v2, v7

    goto :goto_3

    :cond_7
    move v2, v6

    move v3, v2

    :cond_8
    :goto_3
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v0, v2, :cond_9

    iput-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    iput v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    move v6, v7

    :cond_9
    if-eqz v6, :cond_c

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/2addr v0, v1

    if-ne v0, v7, :cond_c

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    sub-long/2addr v0, v2

    goto :goto_4

    :cond_a
    const-wide/16 v0, 0x0

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(disabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->-$$Nest$mgetDisableReasonString(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_b
    const-string p1, "(enabled)"

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DIS"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0xaa9

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_c
    return v6

    :cond_d
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDisableScreenWakeLocksWhileCached:Z

    if-eqz p0, :cond_f

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result p0

    if-eqz p0, :cond_f

    iget p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v1, v3, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    if-eqz v1, :cond_e

    if-lt p0, v4, :cond_e

    iget-boolean p0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez p0, :cond_e

    iget p0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq p0, v5, :cond_e

    const/16 v0, 0xc

    if-lt p0, v0, :cond_e

    move p0, v7

    goto :goto_6

    :cond_e
    move p0, v6

    :goto_6
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v0, p0, :cond_f

    iput-boolean p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    iput v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    return v7

    :cond_f
    return v6
.end method

.method public setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/server/power/PowerGroup;

    invoke-virtual/range {p1 .. p9}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldNapAtBedTimeLocked(Lcom/android/server/power/PowerGroup;)Z
    .locals 1

    iget-boolean p1, p1, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-nez p0, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z
    .locals 12

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-wide v2, p1, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v2, p2, v2

    if-ltz v2, :cond_2

    iget v2, p1, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Screen__Off(s) - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/android/server/power/Slog;->$r8$clinit:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "!@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "PowerManagerService"

    invoke-static {v4, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    const-string/jumbo v0, "Sleeping power group (groupId="

    const-string/jumbo v2, "sleepPowerGroup"

    const-wide/32 v9, 0x20000

    invoke-static {v9, v10, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string/jumbo v2, "PowerGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    iput-boolean v11, p1, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v2, p2

    move/from16 v5, p4

    move v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return v11

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateAttentiveStateLocked(IJ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    iget-wide v5, v3, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    add-long/2addr v5, v1

    iget-wide v7, v0, Lcom/android/server/power/PowerManagerService;->mAttentiveWarningDurationConfig:J

    sub-long v7, v5, v7

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v9

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mInattentiveSleepWarningOverlayController:Lcom/android/server/power/InattentiveSleepWarningController;

    iget-boolean v11, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    iget-object v12, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v11

    if-nez v11, :cond_2

    iget-boolean v9, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v4}, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/InattentiveSleepWarningController;Z)V

    invoke-virtual {v12, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    :goto_0
    move v4, v15

    goto :goto_1

    :cond_2
    cmp-long v9, v9, v13

    if-ltz v9, :cond_3

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v9

    if-nez v9, :cond_3

    cmp-long v9, p2, v7

    if-gez v9, :cond_5

    :cond_3
    iget-boolean v9, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    new-instance v9, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v15}, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/InattentiveSleepWarningController;Z)V

    invoke-virtual {v12, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    goto :goto_0

    :cond_5
    :goto_1
    cmp-long v1, v1, v13

    if-ltz v1, :cond_b

    if-nez v4, :cond_6

    move/from16 v1, p1

    and-int/lit16 v1, v1, 0x4ab2

    if-eqz v1, :cond_b

    :cond_6
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptFromInattentiveSleepLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    cmp-long v0, p2, v7

    if-gez v0, :cond_8

    move-wide v5, v7

    goto :goto_2

    :cond_8
    cmp-long v0, p2, v5

    if-gez v0, :cond_a

    iget-boolean v0, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3}, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/InattentiveSleepWarningController;)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v15, v3, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    goto :goto_2

    :cond_a
    const-wide/16 v5, -0x1

    :goto_2
    cmp-long v0, v5, v13

    if-ltz v0, :cond_b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_b
    :goto_3
    return-void
.end method

.method public final updateGlobalWakefulnessLocked(IILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p6

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->recalculateGlobalWakefulnessLocked()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v8

    if-ne v8, v7, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, ")..."

    const-string/jumbo v12, "PowerManagerService"

    const/4 v13, 0x3

    if-eqz v7, :cond_4

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    if-eq v7, v9, :cond_3

    if-eq v7, v10, :cond_2

    if-ne v7, v13, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v16, v10

    const-string v10, "Going to sleep due to "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (uid "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", screenOffTimeout="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", activityTimeoutWM="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", maxDimRatio="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", maxDimDur="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:J

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTimeRealtime:J

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    const-string/jumbo v11, "goToSleep"

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected wakefulness: "

    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 v16, v10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Nap time (uid "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "nap"

    goto :goto_0

    :cond_3
    move/from16 v16, v10

    move-object/from16 v17, v14

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Waking up from "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " (uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", reason="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", details="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTimeRealtime:J

    const-string/jumbo v11, "wakeUp"

    goto :goto_0

    :cond_4
    move/from16 v16, v10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Sleeping (uid "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    if-eq v8, v10, :cond_5

    iput-wide v5, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    :cond_5
    const-string/jumbo v11, "reallyGoToSleep"

    :goto_0
    const-wide/32 v12, 0x20000

    invoke-static {v12, v13, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    iput v7, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessRaw:I

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    const/4 v14, 0x0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    move v15, v9

    goto :goto_1

    :cond_6
    move v15, v14

    :goto_1
    and-int/2addr v11, v15

    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    if-eqz v11, :cond_7

    invoke-virtual {v11, v7, v1, v5, v6}, Lcom/android/server/power/Notifier;->onGlobalWakefulnessChangeStarted(IIJ)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    :goto_2
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iput v7, v5, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    if-eq v7, v9, :cond_9

    iget-object v6, v5, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v5, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-object v11, v5, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v6, v11}, Landroid/attention/AttentionManagerInternal;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    iget-object v6, v5, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    invoke-virtual {v5}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    :cond_9
    if-eqz v7, :cond_c

    if-eq v7, v9, :cond_a

    const/4 v10, 0x3

    if-eq v7, v10, :cond_c

    goto :goto_5

    :cond_a
    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, v5, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, v4, v2}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    if-eqz v3, :cond_b

    iget-object v4, v5, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x3d

    move/from16 v6, p5

    invoke-virtual {v4, v5, v6, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_b
    const/16 v3, 0x11a

    :try_start_2
    invoke-static {v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_5

    :cond_c
    invoke-static {v8}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v14

    :goto_3
    if-ge v14, v1, :cond_f

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_e

    const/16 v4, 0xa

    if-eq v3, v4, :cond_e

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_f
    const/16 v0, 0xaa4

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_10
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    :goto_6
    return-void

    :goto_7
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final updateIsPoweredLocked(I)V
    .locals 14

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v3}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v4}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v4}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v4}, Landroid/os/BatteryManagerInternal;->getBatteryLevelCritical()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCritical:Z

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v4}, Landroid/os/BatteryManagerInternal;->getBatteryOnline()I

    move-result v4

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryOnline:I

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v4}, Landroid/os/BatteryManagerInternal;->getBatteryHealth()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v4

    if-ne v4, v6, :cond_1

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrain:I

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v2, v3, :cond_15

    :cond_2
    const-string/jumbo v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[api] updateIsPoweredLocked : mIsPowered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mPlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-static {v4, v5, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget-object v7, v3, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v8, v3, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    const/4 v9, 0x4

    if-eqz v4, :cond_3

    if-ne v5, v9, :cond_3

    iput-boolean v11, v3, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    iput-boolean v11, v3, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    invoke-virtual {v3}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_3
    iput-boolean v10, v3, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    iget-boolean v4, v3, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_4

    iput-boolean v10, v3, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    iput-boolean v10, v3, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    iput v4, v3, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    iput v4, v3, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    :cond_5
    :goto_1
    iget-boolean v4, v3, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    if-eqz v4, :cond_6

    if-nez v8, :cond_6

    iget-boolean v3, v3, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    :cond_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerMotionDetector:Lcom/android/server/power/WirelessChargerMotionDetector;

    if-eqz v3, :cond_a

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const-string/jumbo v7, "WirelessChargerMotionDetector"

    const/16 v8, 0x2e

    if-ne v5, v9, :cond_8

    iget-boolean v4, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    if-nez v4, :cond_7

    iget-object v4, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

    invoke-virtual {v4, v5, v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    iput-boolean v11, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    goto :goto_3

    :cond_7
    iget-boolean v3, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsDeviceMoving:Z

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    const-string v3, "Device is not moved, skip wakeup when connect charger"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v3, v10

    goto :goto_4

    :cond_8
    if-ne v2, v9, :cond_a

    iget-boolean v5, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsDeviceMoving:Z

    if-eqz v5, :cond_9

    iget-boolean v4, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v4, :cond_a

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

    invoke-virtual {v4, v5, v8}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v10, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mIsWirelessChargerSContextRegistered:Z

    goto :goto_3

    :cond_9
    if-nez v4, :cond_a

    const-string v4, "Device is not moved, skip wakeup when disconnect charger"

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/power/WirelessChargerMotionDetector;->mPassedWakeupTime:J

    goto :goto_2

    :cond_a
    :goto_3
    move v3, v11

    :goto_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    if-nez v1, :cond_b

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v7, :cond_c

    goto :goto_5

    :cond_c
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mKeepDreamingWhenUnplugging:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v7

    if-ne v7, v6, :cond_d

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    if-ne v1, v6, :cond_e

    goto :goto_5

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-nez v1, :cond_f

    goto :goto_5

    :cond_f
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v11, :cond_10

    if-eq v2, v6, :cond_11

    :cond_10
    if-ne v1, v6, :cond_12

    if-ne v2, v11, :cond_12

    :cond_11
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryOnline:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_12

    goto :goto_5

    :cond_12
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_5
    move-wide v2, v4

    goto :goto_6

    :cond_14
    if-eqz v3, :cond_13

    const-string v1, " powered change"

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "android.server.power:PLUGGED:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x3e8

    const/16 v8, 0x3e8

    move-wide v12, v4

    move-object v5, v2

    move-wide v2, v12

    const/4 v4, 0x3

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    :goto_6
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/16 v6, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    :cond_15
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    iget-object v5, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iput-boolean v11, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    iget-boolean v6, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eq v6, v2, :cond_16

    move v6, v11

    goto :goto_7

    :cond_16
    move v6, v10

    :goto_7
    iget v7, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    if-eq v7, v3, :cond_17

    move v7, v11

    goto :goto_8

    :cond_17
    move v7, v10

    :goto_8
    iget-boolean v8, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eq v8, v4, :cond_18

    move v10, v11

    :cond_18
    if-nez v6, :cond_19

    if-nez v7, :cond_19

    if-nez v10, :cond_19

    monitor-exit v5

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_19
    iput-boolean v2, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    iput v3, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iput-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    monitor-exit v5

    goto :goto_a

    :goto_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1a
    :goto_a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    if-eqz v1, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkBatteryLevelLow: isPowered="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", batteryLevelLow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ScreenOnKeeper"

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v1, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    if-eqz v3, :cond_1b

    if-eqz v0, :cond_1b

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    invoke-virtual {v1, v11}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    return-void

    :goto_b
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1b
    return-void
.end method

.method public final updateKnoxTimeoutValue(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "knox_screen_off_timeout"

    if-eqz v1, :cond_0

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    if-eqz v1, :cond_1

    int-to-long p0, v0

    iput-wide p0, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    int-to-long v5, v0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v4, 0x0

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IIJJ)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final updatePowerGroupsLocked(I)Z
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v2

    const v3, 0x1183f

    and-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_32

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v5, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_1
    :goto_0
    move v1, v5

    :goto_1
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerGroup;

    iget v6, v3, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v7, v3, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v8, :cond_2

    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    const-string/jumbo v10, "boot"

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    const/high16 v8, 0x7fc00000    # Float.NaN

    :goto_2
    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    if-nez v11, :cond_5

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "com.sec.feature.cover.flip"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.cover.sview"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v11, :cond_4

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    move v11, v5

    goto :goto_4

    :cond_4
    :goto_3
    const-string v11, "/sys/class/sec/hall_ic/hall_detect"

    invoke-static {v11}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "CLOSE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v4

    :goto_4
    iput-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "isCoverClosedBySysfs called on closed = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    :cond_5
    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-boolean v12, v11, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mEmergencyModeEnabled:Z

    if-nez v12, :cond_8

    iget-boolean v11, v11, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mUltraPowerSavingModeEnabled:Z

    if-eqz v11, :cond_6

    goto :goto_5

    :cond_6
    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessForClearCoverConfig:F

    goto :goto_5

    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    :cond_8
    :goto_5
    if-nez v6, :cond_9

    iget-wide v11, v0, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v13}, Landroid/hardware/display/DisplayManagerInternal;->getLastUserSetScreenBrightnessTime()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_9

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    invoke-static {v11}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v11

    iput v11, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    invoke-static {v11}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v11

    iput v11, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mForceSlowChange:Z

    iput-boolean v11, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mForceSlowChange:Z

    goto :goto_6

    :cond_9
    const/high16 v11, -0x40800000    # -1.0f

    iput v11, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    iput v11, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    :goto_6
    iget v11, v3, Lcom/android/server/power/PowerGroup;->mLastGoToSleepReason:I

    iput v11, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iget-boolean v11, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    const/4 v12, -0x1

    if-eqz v11, :cond_e

    iget-object v11, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v13, v5

    move v14, v12

    :goto_7
    const/16 v15, 0x20

    const v16, 0xffff

    if-ge v13, v11, :cond_b

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v9, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int v9, v9, v16

    if-ne v9, v15, :cond_a

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v9, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    if-ge v14, v9, :cond_a

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v14, v9, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_b
    iput v14, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v11, v5

    move v13, v12

    :goto_8
    if-ge v11, v9, :cond_d

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int v14, v14, v16

    if-ne v14, v15, :cond_c

    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v14, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    if-ge v13, v14, :cond_c

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v13, v13, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    iput v13, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    goto :goto_9

    :cond_e
    iput v12, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v12, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    :goto_9
    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    iput v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelCritical:Z

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->sensorBlockedByCoverLocked()Z

    move-result v9

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    iput v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->sensorBlockedByCoverLocked()Z

    move-result v9

    if-eqz v9, :cond_f

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    packed-switch v9, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitByCoverConfig:I

    iput v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    goto :goto_b

    :cond_f
    :goto_a
    iput v12, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    :goto_b
    if-nez v6, :cond_10

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    if-eqz v9, :cond_10

    move v9, v4

    goto :goto_c

    :cond_10
    move v9, v5

    :goto_c
    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-eqz v9, :cond_12

    iget-boolean v9, v3, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    if-eqz v9, :cond_12

    iget v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v9, :cond_11

    if-ne v9, v4, :cond_12

    :cond_11
    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnabledTime:J

    sub-long/2addr v11, v13

    const-wide/32 v13, 0xdbba0

    cmp-long v9, v11, v13

    if-lez v9, :cond_12

    iput-boolean v5, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    const/4 v12, 0x2

    invoke-direct {v11, v0, v12}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    invoke-virtual {v9, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    if-nez v6, :cond_13

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mEarlyWakeUp:Z

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    iput-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mEarlyWakeUp:Z

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    iput v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    :cond_13
    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mHbmBlock:Z

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v9

    iput v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v9

    iput v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    iget v9, v0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    invoke-static {v9}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v9

    iput v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hdrMaxBrightness:F

    sget-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD:Z

    if-nez v9, :cond_14

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    if-eqz v9, :cond_14

    iget-boolean v9, v9, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenCurtainEnabled:Z

    :cond_14
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerGroup;

    iget v7, v7, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_15

    move v7, v4

    goto :goto_d

    :cond_15
    move v7, v5

    :goto_d
    iget-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iget v11, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideReasonFromDreamManager:I

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManagerFloat:F

    iget-boolean v14, v0, Lcom/android/server/power/PowerManagerService;->mUseNormalBrightnessForDoze:Z

    iget-boolean v15, v0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    iget-boolean v5, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    const/4 v4, 0x7

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget-object v5, v5, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object v5, v5, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v5, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v5

    goto :goto_e

    :cond_16
    new-instance v5, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v5}, Landroid/os/PowerSaveState$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v5

    :goto_e
    sget-boolean v18, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    iget-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    move/from16 v22, v2

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mBrightWhenDozingConfig:Z

    move/from16 v23, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    move-wide/from16 v25, v1

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mBatterySavingAdjustBrightnessFactor:F

    iget v2, v3, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    move/from16 v27, v4

    iget v4, v3, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    move/from16 v28, v4

    if-eqz v18, :cond_17

    move/from16 v24, v2

    move/from16 v30, v15

    :goto_f
    const/4 v2, 0x1

    :goto_10
    const/4 v4, 0x0

    :goto_11
    const v15, 0x7fffffff

    goto :goto_14

    :cond_17
    if-nez v2, :cond_19

    iget v4, v3, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    move/from16 v30, v15

    const/4 v15, 0x4

    if-eq v4, v15, :cond_18

    const/4 v15, 0x6

    if-eq v4, v15, :cond_18

    const/4 v4, 0x1

    goto :goto_12

    :cond_18
    const/4 v4, 0x6

    :goto_12
    move/from16 v24, v2

    move v2, v4

    goto :goto_10

    :cond_19
    move/from16 v30, v15

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1e

    and-int/lit8 v4, v28, 0x40

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_13

    :cond_1a
    if-eqz v27, :cond_1b

    const/4 v4, 0x0

    goto :goto_13

    :cond_1b
    if-eqz v24, :cond_1c

    const/4 v4, 0x3

    goto :goto_13

    :cond_1c
    const v4, 0x7fffffff

    :goto_13
    iget v15, v3, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 v24, v2

    const/4 v2, 0x2

    if-ne v15, v2, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v2, 0x1

    goto :goto_11

    :cond_1e
    move/from16 v24, v2

    const/4 v2, 0x1

    const v4, 0x7fffffff

    goto :goto_11

    :goto_14
    if-ne v4, v15, :cond_26

    invoke-static/range {v24 .. v24}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v4

    if-eqz v4, :cond_22

    iget v2, v3, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_21

    const/16 v4, 0xe

    if-eq v2, v4, :cond_20

    const/4 v15, 0x6

    if-eq v2, v15, :cond_21

    const/4 v4, 0x7

    if-eq v2, v4, :cond_1f

    const/4 v2, 0x1

    goto :goto_15

    :cond_1f
    const/4 v2, 0x7

    goto :goto_15

    :cond_20
    const/4 v2, 0x4

    goto :goto_15

    :cond_21
    const/4 v2, 0x6

    :cond_22
    :goto_15
    and-int/lit8 v4, v28, 0x2

    if-nez v4, :cond_25

    if-eqz v20, :cond_25

    iget v4, v3, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    const/16 v17, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_25

    if-eqz v21, :cond_23

    goto :goto_16

    :cond_23
    const-wide/16 v20, 0x0

    cmp-long v4, v25, v20

    if-nez v4, :cond_24

    iget v4, v3, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    const/16 v29, 0x4

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_24

    iget-object v4, v3, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v3, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    goto :goto_17

    :cond_24
    const/4 v4, 0x2

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v4, 0x3

    :cond_26
    :goto_17
    iget-object v15, v3, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v15, v15, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v15}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_27

    iget-object v15, v3, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v2, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyReason:I

    :cond_27
    iget-object v2, v3, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iput v8, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    iput-object v10, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverrideTag:Ljava/lang/CharSequence;

    iput-boolean v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iput-boolean v9, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2a

    iput v11, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iput v12, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    iget v4, v3, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_29

    if-nez v30, :cond_29

    const/4 v15, 0x4

    if-ne v11, v15, :cond_28

    const/4 v4, 0x3

    iput v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v4, 0x2

    iput v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    goto :goto_18

    :cond_28
    const/4 v4, 0x2

    :goto_18
    iget v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v15, 0x6

    if-ne v7, v15, :cond_29

    iput v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iput v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    :cond_29
    iput v13, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    iput-boolean v14, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    goto :goto_19

    :cond_2a
    const/4 v4, 0x0

    iput v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/high16 v7, 0x7fc00000    # Float.NaN

    iput v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    const/4 v7, 0x1

    iput v7, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    iput-boolean v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    :goto_19
    iget-boolean v4, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iput v1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iget-object v1, v3, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, v3, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 v5, v23

    invoke-virtual {v1, v4, v2, v5}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v1

    iget-object v2, v3, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iget v4, v3, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object v5, v3, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v7, v2, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v10

    if-nez v10, :cond_2b

    iget-object v10, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v11, v7, v4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v10, v4, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2b
    iget-object v7, v7, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    iget v10, v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    if-ne v5, v10, :cond_2c

    goto :goto_1a

    :cond_2c
    const/4 v10, 0x3

    if-ne v5, v10, :cond_2d

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    :cond_2d
    iget v10, v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    iput v10, v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    iput v5, v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    iget-wide v10, v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long v10, v8, v10

    long-to-int v10, v10

    iput v10, v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    iput-wide v8, v7, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    :goto_1a
    iget-object v7, v2, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, v2, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iput v4, v8, Landroid/os/Message;->arg1:I

    iput v5, v8, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, v2, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, v3, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iget-boolean v4, v3, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v1, v4, :cond_2e

    const-string/jumbo v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "displayReady: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " groupId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-boolean v4, v3, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v4, v1, :cond_2f

    iput-boolean v1, v3, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 v4, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v4, 0x0

    :goto_1b
    iget-boolean v5, v3, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    if-eqz v1, :cond_30

    if-eqz v4, :cond_30

    if-eqz v5, :cond_30

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-wide/32 v1, 0x20000

    const-string/jumbo v4, "Screen turning on"

    invoke-static {v1, v2, v4, v6}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v3, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_30

    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Screen on took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    add-int/lit8 v1, v19, 0x1

    move/from16 v2, v22

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_31
    move/from16 v22, v2

    move v4, v5

    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    goto :goto_1c

    :cond_32
    move/from16 v22, v2

    move v4, v5

    :goto_1c
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez v22, :cond_33

    const/16 v17, 0x1

    return v17

    :cond_33
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updatePowerStateLocked()V
    .locals 14

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/server/power/Slog;->$r8$clinit:I

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/32 v1, 0x20000

    const-string/jumbo v0, "updatePowerState"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    and-int/lit16 v4, v4, 0x120

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v5, v6}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    :goto_0
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v5, v4, :cond_3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    goto :goto_2

    :goto_1
    move-object v6, p0

    goto/16 :goto_5

    :cond_3
    :goto_2
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    and-int/lit16 v4, v4, 0x800

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    if-eqz v4, :cond_4

    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    cmp-long v9, v7, v12

    if-lez v9, :cond_5

    const-wide/16 v12, 0x1388

    add-long/2addr v7, v12

    cmp-long v9, v7, v10

    if-lez v9, :cond_5

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_4
    move-object v6, p0

    goto :goto_4

    :cond_5
    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    move-object v6, p0

    :try_start_4
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IIIJ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v0, p0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, p0

    :goto_3
    move-object p0, v0

    goto :goto_5

    :goto_4
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move p0, v3

    :cond_6
    :try_start_7
    iget v0, v6, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr p0, v0

    iput v3, v6, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v6, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    invoke-virtual {v6, v0, v4, v5}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(IJ)V

    invoke-virtual {v6, v0, v4, v5}, Lcom/android/server/power/PowerManagerService;->updateAttentiveStateLocked(IJ)V

    invoke-virtual {v6, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6, v4, v5}, Lcom/android/server/power/PowerManagerService;->updateProfilesLocked(J)V

    invoke-virtual {v6, p0}, Lcom/android/server/power/PowerManagerService;->updatePowerGroupsLocked(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const v4, 0x143ff

    and-int/2addr p0, v4

    if-nez p0, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    :try_start_8
    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p0, :cond_8

    :try_start_9
    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    :try_start_a
    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService;->notifyScreenTimeoutPolicyChangesLocked()V

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    iput-boolean v3, v6, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    return-void

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    goto/16 :goto_1

    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    iput-boolean v3, v6, Lcom/android/server/power/PowerManagerService;->mUpdatePowerStateInProgress:Z

    throw v0

    :cond_9
    :goto_6
    return-void
.end method

.method public final updateProfilesLocked(J)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-wide v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    iget-wide v7, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    if-lez v6, :cond_1

    iget-wide v6, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    iget-wide v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    :goto_1
    iget-wide v6, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    add-long/2addr v6, v4

    cmp-long v4, v6, p1

    if-gtz v4, :cond_3

    iget v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v5, :cond_2

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v5, v5, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    iget v3, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    iput v3, v6, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_3
    :goto_2
    iput-boolean v1, v3, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLockingNotified:Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final updateQuickTilesSettingsLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_quick_qs_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "ScreenCurtainTileService"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    const-string v5, "KeepScreenOnTileService"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUseScreenCurtain:Z

    if-eq v0, v3, :cond_7

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUseScreenCurtain:Z

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ForegroundPackageObserver;->addObserver(Ljava/util/Observer;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ForegroundPackageObserver;->deleteObserver(Ljava/util/Observer;)V

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mUseKeepScreenOn:Z

    if-eq v0, v2, :cond_a

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUseKeepScreenOn:Z

    const-string/jumbo v0, "PowerManagerService"

    if-eqz v2, :cond_8

    const-string/jumbo v1, "start ScreenOnKeeper"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget v5, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    new-instance v6, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/power/ScreenOnKeeper;

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/ScreenOnKeeper;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;ILcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;Lcom/android/server/power/PowerManagerService$Injector$1;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    return-void

    :cond_8
    const-string/jumbo v1, "stop ScreenOnKeeper"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    iget-boolean v1, v0, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    iget-object v1, v0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    iget-object v1, v0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ScreenOnKeeper;I)V

    iget-object v0, v0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    :cond_a
    return-void
.end method

.method public final updateSettingsLocked()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const-string/jumbo v2, "screensaver_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const-string/jumbo v5, "screensaver_activate_on_sleep"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const-string/jumbo v5, "screensaver_activate_on_dock"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedWhilePosturedByDefaultConfig:Z

    const-string/jumbo v5, "screensaver_activate_on_postured"

    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateWhilePosturedSetting:Z

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v5, 0x3a98

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    const-string/jumbo v1, "sleep_timeout"

    const/4 v5, -0x1

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    const-string/jumbo v1, "attentive_timeout"

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutConfig:I

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mAttentiveTimeoutSetting:J

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "theater_mode_on"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    const-string/jumbo v1, "user_activity_timeout"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    const-string/jumbo v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    iget v6, v6, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v7, 0x0

    const-string/jumbo v8, "SmartStayController"

    if-eqz v1, :cond_7

    iget-boolean v1, v5, Lcom/android/server/power/SmartStayController;->mSmartStayEnabled:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SmartStay already started"

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const-string/jumbo v1, "SmartStay start!"

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v5, Lcom/android/server/power/SmartStayController;->mSmartStayEnabled:Z

    iget-object v1, v5, Lcom/android/server/power/SmartStayController;->mInjector:Lcom/android/server/power/SmartStayController$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v8, "smart stay"

    invoke-direct {v1, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lcom/android/server/power/SmartStayController;->mSmartStayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v8, v5, Lcom/android/server/power/SmartStayController;->mSmartStayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v5, Lcom/android/server/power/SmartStayController;->mSmartStayHandler:Landroid/os/Handler;

    iput v6, v5, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    goto :goto_6

    :cond_7
    iget-boolean v1, v5, Lcom/android/server/power/SmartStayController;->mSmartStayEnabled:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "SmartStay stop"

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, v5, Lcom/android/server/power/SmartStayController;->mSmartStayEnabled:Z

    iget-object v1, v5, Lcom/android/server/power/SmartStayController;->mSmartStayHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v5, Lcom/android/server/power/SmartStayController;->mSmartStayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iget-object v1, v5, Lcom/android/server/power/SmartStayController;->mSmartStayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    iput-object v7, v5, Lcom/android/server/power/SmartStayController;->mSmartStayHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, v5, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v2, v5, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    :cond_8
    :goto_6
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    const-string/jumbo v5, "display_outdoor_mode"

    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    move v5, v2

    :goto_7
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    const-string/jumbo v6, "PowerManagerService"

    if-eq v1, v5, :cond_a

    if-eqz v5, :cond_a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnabledTime:J

    const-string/jumbo v1, "[api] updateSettingsLocked : Update OutdoorMode enabled time"

    invoke-static {v6, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "double_tap_to_wake"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v4

    goto :goto_8

    :cond_b
    move v1, v2

    :goto_8
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v5, :cond_c

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerMode(IZ)Z

    :cond_c
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "1"

    goto :goto_9

    :cond_d
    const-string v1, "0"

    :goto_9
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSystemProperties:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "sys.retaildemo.enabled"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WAKEUP_WHEN_PLUG_CHANGED:Z

    if-eqz v5, :cond_10

    const-string/jumbo v7, "aod_mode"

    invoke-static {v0, v7, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    move v4, v2

    :goto_a
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAodMode:Z

    :cond_10
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    if-eqz v3, :cond_11

    const-string v3, "600000"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "external_display_screen_timeout"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    :cond_11
    const-string/jumbo v3, "sem_power_saving_adjust_brightness_factor"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingAdjustBrightnessFactor:F

    const-string/jumbo v3, "pms_settings_screen_time_out_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingScreenOffTimeoutSetting:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[api] updateSettingsLocked : mDreamsEnabledSetting: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDreamsActivateOnSleepSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDreamsActivateOnDockSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenOffTimeoutSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSleepTimeoutSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mStayOnWhilePluggedInSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTheaterModeEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAlwaysOnEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mAlwaysOnEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSmartStayEnabledSetting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDoubleTapWakeEnabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " retailDemoValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOffTimeoutForDex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBatterySavingAdjustBrightnessFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingAdjustBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mBatterySavingScreenOffTimeoutSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService;->mBatterySavingScreenOffTimeoutSetting:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mAodMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mAodMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_12
    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return-void
.end method

.method public final updateSuspendBlockerLocked()V
    .locals 12

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    iget v4, v3, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit8 v4, v4, -0x10

    iput v4, v3, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    :goto_1
    move v3, v1

    goto/16 :goto_4

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_2
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDualScreenPolicy:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayState:I

    iget-object v10, v6, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    iget v11, v10, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit16 v11, v11, -0xf1

    iput v11, v10, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    iget-object v11, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v11}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v7, :cond_4

    const/16 v4, 0x10

    invoke-virtual {v10, v4}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    goto :goto_3

    :cond_4
    iget-object v6, v6, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v7, v1, :cond_5

    iget v11, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v11, v5, :cond_5

    const/16 v4, 0x20

    invoke-virtual {v10, v4}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    goto :goto_3

    :cond_5
    sget-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    if-nez v11, :cond_6

    sget-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    if-eqz v11, :cond_7

    if-ne v8, v1, :cond_7

    :cond_6
    if-ne v7, v1, :cond_7

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eq v6, v1, :cond_7

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7

    const/16 v4, 0x40

    invoke-virtual {v10, v4}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    goto :goto_3

    :cond_7
    if-ne v9, v5, :cond_8

    const/16 v4, 0x80

    invoke-virtual {v10, v4}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    :goto_3
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/power/SuspendBlockerMonitor;->setEvent(I)V

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerGroup;

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mShouldWaitForTransitionToAodUi:Z

    iget-object v8, v4, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v8

    if-eqz v8, :cond_d

    iget v4, v4, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-nez v4, :cond_b

    :cond_a
    :goto_5
    move v4, v2

    goto :goto_7

    :cond_b
    if-eqz v6, :cond_c

    goto :goto_5

    :cond_c
    :goto_6
    move v4, v1

    goto :goto_7

    :cond_d
    iget-object v4, v4, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v6, v1, :cond_a

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v4, v5, :cond_a

    if-eqz v7, :cond_a

    goto :goto_6

    :goto_7
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD:Z

    if-eqz v5, :cond_e

    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_MISC_POWER_HAL:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    if-eqz v5, :cond_e

    iget-boolean v5, v5, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    if-eqz v5, :cond_e

    move v4, v2

    :cond_e
    if-eqz v3, :cond_f

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_f

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_f
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    const-string/jumbo v6, "unknown"

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mBootingSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-nez v5, :cond_10

    invoke-virtual {v7, v6}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    :cond_10
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    if-eqz v0, :cond_11

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v8, :cond_11

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_11
    const-string/jumbo v6, "holding display"

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    if-eqz v3, :cond_12

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v9, :cond_12

    invoke-virtual {v8, v6}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_12
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v9, :cond_14

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->areAllPowerGroupsReadyLocked()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDefaultDisplayReadyByProximity:Z

    if-eqz v9, :cond_14

    :cond_13
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    :cond_14
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_15

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    if-eqz v4, :cond_15

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingBootingSuspendBlocker:Z

    :cond_15
    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    :cond_16
    if-nez v3, :cond_17

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v0, :cond_17

    invoke-virtual {v8, v6}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    :cond_17
    if-nez v3, :cond_18

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    :cond_18
    return-void
.end method

.method public final updateUserActivitySummaryLocked(IJ)V
    .locals 40

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const v3, 0x14027

    and-int v3, p1, v3

    if-nez v3, :cond_0

    goto/16 :goto_15

    :cond_0
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v9

    iget-boolean v11, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    :goto_0
    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    const-wide/16 v19, 0x0

    if-ge v15, v12, :cond_2a

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/PowerGroup;

    iget v4, v12, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 v21, v11

    iget v11, v12, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-nez v4, :cond_2

    move-object/from16 v22, v3

    move/from16 v23, v4

    invoke-virtual {v0, v5, v6, v9, v10}, Lcom/android/server/power/PowerManagerService;->getDefaultGroupScreenOffTimeoutOverrideLocked(JJ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v24

    move-wide/from16 v26, v24

    move-wide/from16 v24, v5

    move-wide/from16 v5, v26

    :cond_1
    move-wide/from16 v28, v3

    move-wide/from16 v26, v7

    goto :goto_2

    :cond_2
    move-object/from16 v22, v3

    move/from16 v23, v4

    iget-wide v3, v12, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    cmp-long v24, v3, v16

    if-nez v24, :cond_3

    move-wide v3, v5

    move-wide/from16 v24, v3

    goto :goto_1

    :cond_3
    move-wide/from16 v24, v5

    :goto_1
    iget-wide v5, v12, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    cmp-long v26, v5, v16

    if-nez v26, :cond_4

    move-wide v5, v9

    :cond_4
    cmp-long v26, v7, v19

    if-lez v26, :cond_1

    cmp-long v26, v3, v19

    if-lez v26, :cond_1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    move-wide/from16 v28, v3

    :goto_2
    iget-boolean v3, v0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    const/4 v4, 0x2

    move/from16 v30, v3

    iget v3, v12, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-eqz v30, :cond_6

    if-ne v3, v4, :cond_6

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    int-to-long v5, v5

    move-wide/from16 v28, v5

    iget-wide v4, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    cmp-long v6, v4, v19

    if-ltz v6, :cond_5

    move-wide/from16 v31, v7

    move-wide/from16 v6, v28

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide/from16 v31, v7

    move-wide/from16 v6, v28

    move-wide v4, v6

    :goto_3
    move-wide/from16 v6, v19

    goto :goto_4

    :cond_6
    move-wide/from16 v31, v7

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mExternalDesktopMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    if-nez v3, :cond_8

    iget v4, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutForDex:I

    int-to-long v4, v4

    iget-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    cmp-long v8, v6, v19

    if-ltz v8, :cond_7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_7
    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(J)J

    move-result-wide v6

    goto :goto_4

    :cond_8
    move-wide v6, v5

    move-wide/from16 v4, v28

    :goto_4
    move-wide/from16 v28, v9

    if-eqz v11, :cond_21

    iget-wide v8, v12, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    iget-wide v10, v12, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    move/from16 v33, v3

    move-wide/from16 v34, v4

    iget-wide v3, v12, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v5, v8, v3

    if-ltz v5, :cond_b

    add-long v36, v8, v34

    sub-long v38, v36, v6

    cmp-long v5, v1, v38

    if-gez v5, :cond_9

    move-wide/from16 v36, v38

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    cmp-long v5, v1, v36

    if-gez v5, :cond_a

    cmp-long v5, v8, v10

    if-ltz v5, :cond_a

    const/4 v5, 0x2

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    move-wide/from16 v36, v19

    goto :goto_5

    :goto_6
    if-nez v5, :cond_d

    cmp-long v3, v10, v3

    if-ltz v3, :cond_d

    add-long v36, v10, v34

    cmp-long v3, v1, v36

    if-gez v3, :cond_d

    iget-object v3, v12, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    iput-wide v10, v12, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    const/4 v3, 0x1

    iput v3, v12, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    sub-long v36, v36, v6

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    const/4 v5, 0x2

    :cond_d
    :goto_7
    if-nez v5, :cond_f

    cmp-long v3, v26, v19

    if-ltz v3, :cond_10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v8, v12, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v8, v3, v8

    if-ltz v8, :cond_e

    add-long v36, v3, v26

    cmp-long v3, v1, v36

    if-gez v3, :cond_e

    const/4 v10, 0x4

    goto :goto_8

    :cond_e
    move v10, v5

    :goto_8
    move v5, v10

    :cond_f
    move-wide/from16 v3, v36

    :goto_9
    const/4 v10, 0x4

    goto :goto_a

    :cond_10
    move-wide/from16 v3, v16

    const/4 v5, 0x4

    goto :goto_9

    :goto_a
    if-eq v5, v10, :cond_12

    if-eqz v21, :cond_12

    and-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_11

    iget-wide v8, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    cmp-long v5, v8, v16

    if-nez v5, :cond_11

    iput-wide v3, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_11
    move-wide/from16 v3, v16

    const/4 v5, 0x4

    :cond_12
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_13

    iget v8, v12, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 v8, v8, 0x20

    if-nez v8, :cond_13

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    iget-wide v10, v8, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    cmp-long v9, v3, v10

    if-eqz v9, :cond_13

    iget-boolean v9, v8, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    if-eqz v9, :cond_13

    invoke-virtual {v8}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v8, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_13
    :goto_b
    move v11, v5

    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move-wide/from16 v19, v9

    iget-wide v9, v8, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    sub-long v9, v3, v9

    move-wide/from16 v26, v9

    iget-wide v9, v8, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    move-wide/from16 v34, v9

    iget-wide v9, v8, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    add-long v9, v34, v9

    cmp-long v11, v19, v26

    if-gez v11, :cond_16

    :goto_c
    move v11, v5

    :cond_15
    const/4 v5, 0x0

    goto :goto_d

    :cond_16
    cmp-long v9, v9, v26

    if-gez v9, :cond_17

    goto :goto_b

    :cond_17
    iget-object v9, v8, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_c

    :cond_18
    iget-object v9, v8, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v9, v8, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    add-int/2addr v9, v10

    iput v9, v8, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    iput-wide v3, v8, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    new-instance v3, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget v4, v8, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-direct {v3, v8, v4}, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;-><init>(Lcom/android/server/power/AttentionDetector;I)V

    iput-object v3, v8, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget-wide v3, v8, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v8, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking user attention, ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v8, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    const-string v9, "AttentionDetector"

    invoke-static {v3, v4, v9}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-wide v9, v8, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    move v11, v5

    iget-wide v4, v8, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    add-long/2addr v9, v4

    iget-object v4, v8, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v3, v9, v10, v4}, Landroid/attention/AttentionManagerInternal;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v8, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_d
    move-wide/from16 v3, v26

    :goto_e
    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result v8

    if-eqz v8, :cond_19

    move v11, v5

    move-wide/from16 v3, v16

    :cond_19
    iget-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v8, :cond_1e

    if-nez v33, :cond_1e

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    iget v9, v12, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    iput v11, v8, Lcom/android/server/power/SmartStayController;->mUserActivitySummary:I

    iget v10, v8, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    const/4 v5, 0x1

    if-ne v10, v5, :cond_1e

    and-int/lit8 v5, v11, 0x1

    if-nez v5, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v5, v8, Lcom/android/server/power/SmartStayController;->mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v19, 0xabe

    sub-long v19, v3, v19

    cmp-long v5, v1, v19

    if-gez v5, :cond_1b

    move-wide/from16 v3, v19

    goto :goto_f

    :cond_1b
    iget-object v5, v8, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_f

    :cond_1c
    const/16 v30, 0x2

    and-int/lit8 v5, v9, 0x2

    if-eqz v5, :cond_1d

    goto :goto_f

    :cond_1d
    iget-object v5, v8, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, v8, Lcom/android/server/power/SmartStayController;->mSmartStayHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8}, Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/SmartStayController;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v5, v9, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1e
    :goto_f
    if-eqz v11, :cond_1f

    const/4 v1, 0x1

    goto :goto_10

    :cond_1f
    const/4 v1, 0x0

    :goto_10
    or-int v18, v18, v1

    cmp-long v1, v13, v16

    if-nez v1, :cond_20

    move-wide v13, v3

    goto :goto_11

    :cond_20
    cmp-long v1, v3, v16

    if-eqz v1, :cond_22

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    goto :goto_11

    :cond_21
    const/4 v11, 0x0

    :cond_22
    :goto_11
    iget v1, v12, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    if-eq v1, v11, :cond_29

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_27

    if-eqz v23, :cond_23

    goto :goto_12

    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    if-eqz v11, :cond_26

    const/4 v10, 0x1

    if-eq v11, v10, :cond_25

    const/4 v4, 0x2

    if-eq v11, v4, :cond_24

    const/4 v10, 0x4

    if-eq v11, v10, :cond_26

    goto :goto_12

    :cond_24
    new-instance v4, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v1, v6, v7}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;J)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_12

    :cond_25
    new-instance v4, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda4;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_12

    :cond_26
    new-instance v4, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda4;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v1, v5}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_27
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UserActivityState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    const-string v3, " -> "

    const-string v4, " groupId="

    invoke-static {v2, v11, v3, v4, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string/jumbo v2, "PowerManagerService"

    move/from16 v3, v23

    invoke-static {v1, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez v3, :cond_29

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Lcom/android/server/power/PowerManagerService$6;

    const/4 v10, 0x4

    if-ne v11, v10, :cond_28

    cmp-long v2, v13, v16

    if-nez v2, :cond_28

    invoke-virtual {v0, v12}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v2, v22

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_28
    move-object/from16 v2, v22

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_13

    :cond_29
    move-object/from16 v2, v22

    :goto_13
    iput v11, v12, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    add-int/lit8 v15, v15, 0x1

    move-object v3, v2

    move/from16 v11, v21

    move-wide/from16 v5, v24

    move-wide/from16 v9, v28

    move-wide/from16 v7, v31

    const/4 v4, 0x1

    move-wide/from16 v1, p2

    goto/16 :goto_0

    :cond_2a
    move-object v2, v3

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move-wide/from16 v3, v16

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v1, :cond_2f

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget-wide v6, v5, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    iget-wide v8, v5, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    add-long/2addr v8, v6

    cmp-long v10, v8, p2

    if-lez v10, :cond_2c

    cmp-long v10, v3, v16

    if-eqz v10, :cond_2b

    cmp-long v10, v8, v3

    if-gez v10, :cond_2c

    :cond_2b
    move-wide v3, v8

    :cond_2c
    iget-wide v8, v5, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    add-long/2addr v6, v8

    cmp-long v5, v6, p2

    if-lez v5, :cond_2e

    cmp-long v5, v3, v16

    if-eqz v5, :cond_2d

    cmp-long v5, v6, v3

    if-gez v5, :cond_2e

    :cond_2d
    move-wide v3, v6

    :cond_2e
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_2f
    cmp-long v0, v3, v19

    if-lez v0, :cond_30

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :cond_30
    if-eqz v18, :cond_31

    cmp-long v0, v13, v19

    if-ltz v0, :cond_31

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v2, v0, v13, v14}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_31
    :goto_15
    return-void
.end method

.method public final updateWakeLockDisabledStatesLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v6, v5

    if-eq v6, v3, :cond_0

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v2, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_4
    return-void
.end method

.method public final updateWakeLockSummaryLocked(I)V
    .locals 12

    const v0, 0x10003

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iput p1, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iput p1, v2, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    move v3, v2

    :goto_2
    const/4 v4, 0x2

    const/4 v5, -0x1

    if-ge v2, v1, :cond_12

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->getPowerGroupId()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v5, :cond_2

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->contains(I)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerGroup;

    iget-boolean v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v9, :cond_4

    :cond_3
    :goto_3
    move v4, p1

    goto :goto_4

    :cond_4
    iget v10, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v11, 0xffff

    and-int/2addr v10, v11

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7

    const/4 v11, 0x6

    if-eq v10, v11, :cond_9

    const/16 v11, 0xa

    if-eq v10, v11, :cond_8

    const/16 v4, 0x1a

    if-eq v10, v4, :cond_6

    const/16 v4, 0x20

    if-eq v10, v4, :cond_5

    const/16 v4, 0x40

    if-eq v10, v4, :cond_a

    const/16 v4, 0x80

    if-eq v10, v4, :cond_a

    const/16 v4, 0x100

    if-eq v10, v4, :cond_a

    goto :goto_3

    :cond_5
    const/16 v4, 0x10

    goto :goto_4

    :cond_6
    if-nez v9, :cond_3

    :cond_7
    move v4, v11

    goto :goto_4

    :cond_8
    if-nez v9, :cond_3

    goto :goto_4

    :cond_9
    if-nez v9, :cond_3

    const/4 v4, 0x4

    :cond_a
    :goto_4
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/2addr v9, v4

    iput v9, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v5, :cond_b

    iget v5, v8, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    or-int/2addr v5, v4

    iput v5, v8, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    goto :goto_5

    :cond_b
    or-int/2addr v3, v4

    :goto_5
    move v5, p1

    :goto_6
    if-ge v5, v0, :cond_11

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    iget v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v9, :cond_f

    move v9, p1

    :goto_7
    iget-object v10, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v10}, Landroid/os/WorkSource;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    iget-object v10, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v10, v9}, Landroid/os/WorkSource;->getUid(I)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    if-ne v8, v10, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_d
    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_f

    move v10, p1

    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_f

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v11}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v8, v11, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_f
    iget v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v8, v9, :cond_10

    :goto_9
    iget v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    or-int/2addr v8, v4

    iput v8, v7, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_11
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_12
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz v1, :cond_13

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v6, v2, 0x100

    if-eqz v6, :cond_13

    and-int/lit8 v2, v2, 0xe

    if-eqz v2, :cond_13

    invoke-virtual {v1, v4}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    :cond_13
    move v1, p1

    :goto_b
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget v4, v2, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iget v6, v2, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    or-int/2addr v6, v3

    iget v7, v2, Lcom/android/server/power/PowerGroup;->mLastGoToSleepReason:I

    invoke-static {v4, v6, v7}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(III)I

    move-result v4

    iput v4, v2, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v1, v2, v5}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    :goto_c
    if-ge p1, v0, :cond_15

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v2

    iget v3, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    invoke-static {v2, v3, v5}, Lcom/android/server/power/PowerManagerService;->adjustWakeLockSummary(III)I

    move-result v2

    iput v2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mWakeLockSummary:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_15
    return-void
.end method

.method public final updateWakefulnessLocked(I)Z
    .locals 7

    const v0, 0x24eb7

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/PowerGroup;

    iget v1, v2, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->isAttentiveTimeoutExpired(Lcom/android/server/power/PowerGroup;J)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v5, 0x9

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    :goto_1
    move p1, p0

    goto :goto_2

    :cond_3
    move-object v1, p0

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, v2, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    if-eqz p0, :cond_4

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->dreamPowerGroupLocked(Lcom/android/server/power/PowerGroup;JIZ)Z

    move-result p0

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    const/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->dozePowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    move-result p0

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object p0, v1

    goto :goto_0

    :cond_5
    return p1
.end method

.method public final userActivityFromNative(JIII)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mIsUserActivityNativeInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[api] userActivityFromNative : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/os/PowerManager;->userActivityEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, ","

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/PowerManager;->userActivityFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    const/16 v8, 0x3e8

    move-object v4, p0

    move-wide v9, p1

    move v6, p3

    move v5, p4

    move/from16 v7, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IIIIJ)V

    return-void
.end method

.method public final userActivityInternal(IIIIJ)V
    .locals 8

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iput-wide p5, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    :cond_0
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "userActivityInternal PowerManager.USER_ACTIVITY_FLAG_INDIRECT : 2 (event: "

    const-string v4, " flags: "

    const-string v5, ") eventTime = "

    invoke-static {p2, p3, v1, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mLastAndroidAutoBoostTime :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    sub-long v0, p5, v0

    const-wide/16 v4, 0x76c

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.ANDROID_AUTO_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-wide p5, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    :cond_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_2

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    if-ne p1, v6, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IIIJ)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_3
    monitor-exit v7

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    if-nez p1, :cond_5

    monitor-exit v7

    return-void

    :cond_5
    iget p1, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne p1, v6, :cond_6

    monitor-exit v7

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v2, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_7
    monitor-exit v7

    return-void

    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final userActivityNoUpdateLocked(IIIJ)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/power/PowerGroup;

    move-object v3, p0

    move v7, p1

    move v8, p2

    move v9, p3

    move-wide v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object p0, v3

    move-wide p4, v5

    move p1, v7

    move p2, v8

    move p3, v9

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    const-string/jumbo v6, "UserActivityStateListenerState: "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-wide v8, v1, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    cmp-long v8, v2, v8

    const/4 v9, 0x0

    if-ltz v8, :cond_24

    iget-wide v10, v1, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v8, v2, v10

    if-ltz v8, :cond_24

    iget-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v8, :cond_0

    goto/16 :goto_a

    :cond_0
    const-wide/32 v10, 0x20000

    const-string/jumbo v8, "userActivity"

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v8, v2, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-lez v8, :cond_5

    if-ne v4, v12, :cond_1

    and-int/lit16 v8, v5, 0x4000

    if-eqz v8, :cond_3

    :cond_1
    if-nez v4, :cond_2

    and-int/lit16 v8, v5, 0x2000

    if-nez v8, :cond_3

    :cond_2
    if-ne v4, v13, :cond_5

    const v8, 0x8000

    and-int/2addr v8, v5

    if-eqz v8, :cond_5

    :cond_3
    and-int/lit16 v8, v5, 0x1000

    if-eqz v8, :cond_4

    const/4 v8, -0x1

    goto :goto_0

    :cond_4
    move v8, v9

    :goto_0
    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerBoost(II)V

    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v16, v10

    goto/16 :goto_9

    :cond_5
    :goto_1
    if-eq v4, v12, :cond_6

    if-ne v4, v13, :cond_7

    :cond_6
    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastNormalTouchBoostTime:J

    sub-long v14, v2, v14

    const-wide/16 v16, 0x64

    cmp-long v8, v14, v16

    if-lez v8, :cond_7

    const-string/jumbo v8, "NORMAL_TOUCH_BOOSTER"

    const-string/jumbo v14, "TRUE"

    invoke-static {v8, v14}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastNormalTouchBoostTime:J

    :cond_7
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move/from16 v14, p6

    invoke-virtual {v8, v7, v4, v14}, Lcom/android/server/power/Notifier;->onUserActivity(III)V

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mAttentionDetector:Lcom/android/server/power/AttentionDetector;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eqz v4, :cond_9

    if-eq v4, v13, :cond_9

    if-eq v4, v12, :cond_9

    if-eq v4, v15, :cond_9

    if-eq v4, v14, :cond_8

    :goto_2
    move-wide/from16 v16, v10

    goto :goto_3

    :cond_8
    iget-object v8, v8, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_9
    move-wide/from16 v16, v10

    :try_start_1
    iget-object v10, v8, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v8, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-object v11, v8, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v10, v11}, Landroid/attention/AttentionManagerInternal;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    iget-object v10, v8, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_a
    iput-wide v2, v8, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    invoke-virtual {v8}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    :goto_3
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDetector:Lcom/android/server/power/AbuseWakeLockDetector;

    invoke-virtual {v8}, Lcom/android/server/power/AbuseWakeLockDetector;->onUserActivity()V

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz v8, :cond_12

    iget v10, v0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_b

    move v10, v13

    goto :goto_4

    :cond_b
    move v10, v9

    :goto_4
    if-nez v10, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_11

    if-eq v4, v13, :cond_10

    if-eq v4, v12, :cond_f

    if-eq v4, v15, :cond_e

    if-eq v4, v14, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v8, v15}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    goto :goto_5

    :cond_e
    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    goto :goto_5

    :cond_f
    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    goto :goto_5

    :cond_10
    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    goto :goto_5

    :cond_11
    invoke-virtual {v8, v14}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_12
    :goto_5
    iget-boolean v8, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v8, :cond_13

    if-nez v7, :cond_13

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    iget-object v10, v8, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v9, v8, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    :cond_13
    if-nez v7, :cond_15

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    if-eqz v8, :cond_15

    iget-boolean v10, v8, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    if-nez v10, :cond_15

    if-eq v4, v12, :cond_14

    if-ne v4, v13, :cond_15

    :cond_14
    iget-object v10, v8, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast v10, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/power/ScreenCurtainController;->mLastUserActivityTime:J

    :cond_15
    if-nez v7, :cond_18

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    if-eqz v7, :cond_18

    if-eqz v4, :cond_16

    if-eq v4, v12, :cond_17

    goto :goto_6

    :cond_16
    and-int/lit16 v8, v5, 0x2000

    if-nez v8, :cond_17

    goto :goto_6

    :cond_17
    iput-wide v2, v7, Lcom/android/server/power/ScreenOnKeeper;->mLastScreenTouchTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_18
    :goto_6
    const-string/jumbo v7, "PowerManagerService"

    if-ne v4, v12, :cond_1a

    :try_start_2
    iget-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerCalledTime:J

    cmp-long v8, v2, v10

    if-lez v8, :cond_1a

    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerCalledTime:J

    iget v8, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    if-nez v8, :cond_19

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v10, v9

    :goto_7
    if-ge v10, v8, :cond_19

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Landroid/os/PowerManagerInternal$UserActivityStateListener;

    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    invoke-interface {v11, v12}, Landroid/os/PowerManagerInternal$UserActivityStateListener;->onChanged(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :cond_19
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    :try_start_3
    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerTimeoutRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerTimeoutRunnable:Lcom/android/server/power/PowerManagerService$6;

    iget-object v10, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v18, 0xbb8

    add-long v10, v10, v18

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1a
    iget-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    if-eqz v6, :cond_1b

    const-string/jumbo v6, "userActivityNoUpdateLocked: mUserInactiveOverrideFromWindowManager : false"

    invoke-static {v7, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, v0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    const-wide/16 v10, -0x1

    iput-wide v10, v0, Lcom/android/server/power/PowerManagerService;->mOverriddenTimeout:J

    :cond_1b
    iget v6, v1, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eqz v6, :cond_23

    if-eq v6, v15, :cond_23

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->maybeUpdateForegroundProfileLastActivityLocked(J)V

    and-int/2addr v5, v13

    if-eqz v5, :cond_1e

    iget-wide v5, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_22

    iget-wide v5, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_22

    iput-wide v2, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    iput v4, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v1, 0x4

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne v4, v13, :cond_1d

    or-int/lit16 v1, v1, 0x1004

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1d
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v13

    :cond_1e
    :try_start_4
    iget-wide v5, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_22

    iput-wide v2, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    iput v4, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v5, v1, 0x4

    iput v5, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-ne v4, v13, :cond_1f

    or-int/lit16 v1, v1, 0x1004

    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_1f
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    if-lez v1, :cond_21

    if-nez v4, :cond_20

    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_21

    :cond_20
    const-string/jumbo v1, "call changes for MDM"

    invoke-static {v7, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutLocked(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_21
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v13

    :cond_22
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :cond_23
    :goto_8
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :goto_9
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_24
    :goto_a
    return v9
.end method

.method public final wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    move/from16 v2, p6

    const-string v3, "::"

    iput v6, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    iget-boolean v4, v1, Lcom/android/server/power/PowerManagerService;->mForceSuspendActive:Z

    if-nez v4, :cond_b

    iget-boolean v4, v1, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-wide v4, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    cmp-long v4, p2, v4

    if-ltz v4, :cond_b

    iget v4, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x2

    iget v9, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-ne v9, v4, :cond_2

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    if-nez v9, :cond_4

    const/16 v5, 0xf

    if-eq v6, v5, :cond_3

    const/16 v5, 0x71

    if-ne v6, v5, :cond_4

    :cond_3
    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v1, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal;->ignoreProximitySensorUntilChanged()V

    iput-boolean v7, v1, Lcom/android/server/power/PowerManagerService;->mInterceptedKeyForProximity:Z

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededLocked()Z

    move-result v5

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    iput v10, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    return-void

    :cond_5
    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const-string v11, ""

    if-ne v5, v4, :cond_6

    if-nez p9, :cond_6

    const/16 v12, 0x3e8

    if-ne v2, v12, :cond_6

    :try_start_0
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v12, v3

    if-ne v12, v4, :cond_6

    aget-object v4, v3, v7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    aget-object v3, v3, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v3

    goto :goto_0

    :catch_0
    move-object v12, v11

    goto :goto_2

    :cond_6
    move-object v12, v11

    :goto_0
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    move v4, v5

    move-object/from16 v5, p7

    goto :goto_1

    :cond_7
    move v4, v5

    move-object v5, v12

    :goto_1
    iget-object v13, v1, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-instance v0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v3, p1

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerGroup;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    :try_start_4
    invoke-virtual {v13, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_1
    move-object v0, v3

    goto :goto_2

    :catch_2
    move-object/from16 v0, p1

    :catch_3
    :goto_2
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p2

    long-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Screen__On  - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {v5, v12, v13}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_8
    move-object v12, v11

    :goto_3
    const-string/jumbo v13, "ms) groupId="

    invoke-static {v3, v12, v5, v13, v4}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "PowerManagerService"

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    iget-wide v12, v4, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_9

    iget-boolean v12, v4, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    if-nez v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "detected fast on off , ignore "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    sub-int/2addr v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " th ON profiler "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->clearAll()V

    iput v3, v4, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    iput v3, v4, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v4, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTimeAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    add-int/2addr v3, v7

    iput v3, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    iget-boolean v3, v1, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-nez v3, :cond_a

    const/16 v3, 0x6d

    if-ne v6, v3, :cond_a

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v3, v10}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    :cond_a
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const-string/jumbo v3, "Waking up power group from "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wakePowerGroup"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_5
    const-string/jumbo v4, "PowerGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v3}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (groupId="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", details="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "Screen turning on"

    invoke-static {v10, v11, v3, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v7, p7

    move v4, v2

    move v5, v6

    move-wide/from16 v2, p2

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_b
    :goto_4
    return-void
.end method

.method public wasDeviceIdleForInternal(J)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    iget-wide v3, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    add-long/2addr v3, p1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
