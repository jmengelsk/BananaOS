.class public final Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# static fields
.field public static final DEBUG_INPUT:Z

.field public static final DEBUG_KEYGUARD:Z

.field public static final DEBUG_WAKEUP:Z

.field public static final POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

.field public static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

.field public mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public mAcquireInProgress:Z

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerService:Landroid/app/IActivityManager;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

.field public mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public volatile mBackKeyHandled:Z

.field public mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

.field public volatile mBootAnimationDismissable:Z

.field public mBootMessageNeedsHiding:Z

.field public mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field public mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

.field public mCameraLensCoverState:I

.field public mCarDockIntent:Landroid/content/Intent;

.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;

.field public mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDefaultDisplay:Landroid/view/Display;

.field public mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public final mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

.field public mDeskDockIntent:Landroid/content/Intent;

.field public volatile mDeviceGoingToSleep:Z

.field public mDexDisplay:Landroid/view/Display;

.field public mDexDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDexDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public volatile mDismissImeOnBackKeyPressed:Z

.field public mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field public final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

.field public mDoublePressOnPowerBehavior:I

.field public mDoublePressOnStemPrimaryBehavior:I

.field public mDoubleTapOnHomeBehavior:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mEnableBugReportKeyboardShortcut:Z

.field public mEnableCarDockHomeCapture:Z

.field public volatile mEndCallKeyHandled:Z

.field public final mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

.field public mEndcallBehavior:I

.field public mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public mExternalDesktopMode:I

.field public mExtraDisplay:Landroid/view/Display;

.field public mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mExtraDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

.field public mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field public mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

.field public mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field public mGoToSleepOnButtonPressTheaterMode:Z

.field public final mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

.field public mHandleVolumeKeysInWM:Z

.field public mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

.field public mHasFeatureAuto:Z

.field public mHasFeatureHdmiCec:Z

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public mHasSoftInput:Z

.field public mHavePendingMediaKeyRepeatWithWakeLock:Z

.field public mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

.field public mHomeIntent:Landroid/content/Intent;

.field public mIncallBackBehavior:I

.field public mIncallPowerBehavior:I

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public volatile mIsGoingToSleepDefaultDisplay:Z

.field public mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field public mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field public final mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

.field public mKeyguardDrawnOnce:Z

.field public mKeyguardDrawnTimeout:I

.field public mKeyguardOccludedChanged:Z

.field public mKidsModeEnabled:Z

.field public mLidKeyboardAccessibility:I

.field public mLidNavigationAccessibility:I

.field public final mLock:Ljava/lang/Object;

.field public mLockAfterDreamingTransitionFinished:Z

.field public mLockNowPending:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenTimeout:I

.field public mLockScreenTimerActive:Z

.field public mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mLongPressOnBackBehavior:I

.field public mLongPressOnHomeBehavior:I

.field public mLongPressOnPowerAssistantTimeoutMs:J

.field public mLongPressOnPowerBehavior:I

.field public mLongPressOnStemPrimaryBehavior:I

.field public mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

.field public final mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

.field public volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPendingKeyguardOccluded:Z

.field public volatile mPendingWakeKey:I

.field public final mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

.field public volatile mPictureInPictureVisible:Z

.field public mPowerButtonSuppressionDelayMillis:I

.field public mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

.field public volatile mPowerKeyHandled:Z

.field public mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPowerVolUpBehavior:I

.field public mPreloadedRecentApps:Z

.field public mPreviousVolumeDown:Z

.field public mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

.field public volatile mRecentsVisible:Z

.field public mRingerToggleChord:I

.field public mSafeMode:Z

.field public final mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field public final mScreenOnListeners:Landroid/util/SparseArray;

.field public mSearchKeyTargetActivity:Landroid/content/ComponentName;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsKeyBehavior:I

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field public mShortPressOnPowerBehavior:I

.field public mShortPressOnSleepBehavior:I

.field public mShortPressOnStemPrimaryBehavior:I

.field public mShortPressOnWindowBehavior:I

.field public mShouldEarlyShortPressOnPower:Z

.field public mShouldEarlyShortPressOnStemPrimary:Z

.field public mShouldHandleVolumeLongpress:Z

.field public mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

.field public mSilenceRingerOnSleepKey:Z

.field public mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mStylusButtonsEnabled:Z

.field public mSupportLongPressPowerWhenNonInteractive:Z

.field public mSupportShortPressPowerWhenDefaultDisplayOn:Z

.field public mSystemBooted:Z

.field public mSystemKeyRequested:Z

.field public mSystemNavigationKeysEnabled:Z

.field public mSystemReady:Z

.field public mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

.field public volatile mTopFocusedDisplayId:I

.field public mTriplePressOnPowerBehavior:I

.field public mTriplePressOnStemPrimaryBehavior:I

.field public mUiMode:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUseTvRouting:Z

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVeryLongPressOnPowerBehavior:I

.field public mVibrator:Landroid/os/Vibrator;

.field public final mVisibleBackgroundUsersEnabled:Z

.field public mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

.field public mVrHeadsetHomeIntent:Landroid/content/Intent;

.field public volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

.field public mWakeGestureEnabledSetting:Z

.field public mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field public mWakeOnAssistKeyPress:Z

.field public mWakeOnBackKeyPress:Z

.field public mWakeOnDpadKeyPress:Z

.field public mWakeUpToLastStateTimeout:J

.field public mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

.field public mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public static -$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v0, "waitForAllWindowsDrawn"

    const-wide/16 v3, 0x20

    const/4 v1, -0x1

    invoke-static {v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static bridge synthetic -$$Nest$mpowerPress(Lcom/android/server/policy/PhoneWindowManager;JIILandroid/view/KeyEvent;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIILandroid/view/KeyEvent;)V

    return-void
.end method

.method public static -$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stemPrimaryLongPress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    const-string/jumbo v2, "PhoneWindowManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    return-void
.end method

.method public static -$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 12

    const-string/jumbo v0, "stemPrimaryPress: "

    const-string/jumbo v1, "PhoneWindowManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const-string/jumbo v0, "stemPrimaryTriplePressAction: "

    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    sget-object v1, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {p1}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x10

    const-string/jumbo v0, "Stem primary - Triple Press - Toggle Accessibility"

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x108

    const/4 v3, 0x2

    if-ne p1, v3, :cond_8

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    const-string/jumbo v4, "stemPrimaryDoublePressAction: "

    invoke-static {p1, v4, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    filled-new-array {v0}, [I

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    new-array v4, p1, [J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, -0x2

    const/16 v6, 0x32

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    invoke-virtual {p0, p1, v11}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    :goto_0
    if-nez v5, :cond_10

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p1, :cond_5

    const-string/jumbo p1, "No recent task available! Show wallpaper."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    goto/16 :goto_1

    :cond_6
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Starting task from recents. id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", persistentId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", topActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", baseIntent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {p0, v0, v11}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start task "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from recents"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_8
    if-ne p1, v2, :cond_10

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    const-string/jumbo v4, "stemPrimarySinglePressAction: behavior="

    invoke-static {p1, v4, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_9

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemKeyPressed(I)V

    :cond_a
    const-string/jumbo p0, "stemPrimarySinglePressAction: skip due to keyguard"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-eq p1, v2, :cond_f

    if-eq p1, v3, :cond_c

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_e

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    const v0, 0x10204000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not resolve activity with : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " name."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string/jumbo p0, "mPrimaryShortPressTargetActivity must not be null and correctly specified"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const-string/jumbo p1, "android.intent.action.ALL_APPS"

    const/high16 v0, 0x10200000

    invoke-static {v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_10
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

    const/16 v0, 0x7d3

    const/16 v1, 0x7da

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreviousVolumeDown:Z

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v3, 0x64

    invoke-direct {v1, v3, v0}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    new-instance v1, Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-direct {v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    const/16 v1, 0x320

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method public static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "MULTI_PRESS_POWER_SIDE_KEY_BEHAVIOR"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "MULTI_PRESS_POWER_EMERGENCY_SOS"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "MULTI_PRESS_POWER_PANIC_CALL"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "MULTI_PRESS_POWER_QUICK_LAUNCH_CAMERA"

    return-object p0

    :cond_0
    const-string/jumbo p0, "MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY"

    return-object p0

    :cond_1
    const-string/jumbo p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object p0

    :cond_2
    const-string/jumbo p0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object p0

    :cond_3
    const-string/jumbo p0, "MULTI_PRESS_POWER_NOTHING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private powerPress(JIILandroid/view/KeyEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v6, p3

    move-object/from16 v5, p5

    const/4 v3, 0x1

    if-ne v6, v3, :cond_2

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "SideFpsEventHandler"

    const-string/jumbo v8, "notifyPowerPressed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v7, :cond_0

    iget-object v7, v4, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v8, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v7, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    iget-object v4, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed()V

    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x3

    const-string/jumbo v10, "PhoneWindowManager"

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v11, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eq v6, v8, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean v11, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-eqz v11, :cond_7

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    const/16 v11, 0x67

    if-ne v4, v11, :cond_7

    goto :goto_2

    :cond_4
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    if-eqz v4, :cond_7

    iget v4, v11, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 v11, 0x66

    if-ne v4, v11, :cond_7

    goto :goto_2

    :cond_5
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    if-eqz v4, :cond_6

    iget v4, v11, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v12, 0x68

    if-eq v4, v12, :cond_8

    :cond_6
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v4, :cond_7

    iget v4, v11, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v11, 0x65

    if-ne v4, v11, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    const-string/jumbo v0, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_2
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    const/16 v11, 0x1a

    const-string/jumbo v13, "PhoneWindowManagerExt"

    if-ne v6, v3, :cond_13

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v15, v14, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v12, v15, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-boolean v12, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    if-eqz v5, :cond_11

    iget-object v7, v15, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    if-nez v7, :cond_9

    invoke-virtual {v15}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    :cond_9
    iget-object v7, v15, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v7, v5}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_11

    iget v7, v15, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/2addr v7, v8

    if-nez v7, :cond_b

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    if-eqz v4, :cond_c

    if-nez v12, :cond_c

    :goto_3
    move v7, v3

    goto :goto_4

    :cond_c
    sget-boolean v7, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    :goto_4
    invoke-virtual {v15}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v12

    if-nez v12, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v15

    if-eqz v15, :cond_f

    const-string/jumbo v7, "silenceRinger"

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v7, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-static {v7}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/telecom/SemTelecomManager;

    if-nez v7, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v7, v11}, Lcom/samsung/android/telecom/SemTelecomManager;->silenceRinger(I)V

    goto :goto_5

    :cond_f
    if-eqz v7, :cond_11

    invoke-virtual {v12}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v0, "endCall"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v0, v11}, Lcom/samsung/android/telecom/SemTelecomManager;->endCall(I)V

    goto :goto_6

    :cond_11
    :goto_5
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_FINGERPRINT_SIDE_TOUCH:Z

    if-eqz v7, :cond_13

    iget-boolean v7, v14, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    if-nez v7, :cond_12

    goto :goto_7

    :cond_12
    :goto_6
    const-string/jumbo v0, "consumed by powerPress, interactive="

    invoke-static {v0, v10, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_13
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "powerPress: eventTime="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " interactive="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " count="

    const-string v14, " mShortPressOnPowerBehavior="

    invoke-static {v6, v12, v14, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " systemKeyRequested="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    invoke-static {v10, v7, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-ne v6, v8, :cond_18

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-nez v8, :cond_15

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    if-nez v8, :cond_15

    iget-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    if-nez v8, :cond_15

    iget-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    if-eqz v8, :cond_14

    goto :goto_8

    :cond_14
    move v3, v4

    goto :goto_9

    :cond_15
    :goto_8
    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    if-eqz v7, :cond_14

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    if-eqz v1, :cond_16

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ERRNAME"

    const-string/jumbo v4, "User pressed h/w key for logging"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ERRCODE"

    const/16 v5, -0x83

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ERRMSG"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "lockScreen"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "sendBroadcast to issuetracker."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const-string/jumbo v1, "dumpstate.is_running"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v0, "Running dump due to requestCustomFullBugreport."

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const-string v1, "Called requestCustomFullBugreport, reason=key_combination"

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_9
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    return-void

    :cond_18
    move v1, v3

    move v3, v4

    if-ne v6, v9, :cond_19

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    move-wide/from16 v1, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    return-void

    :cond_19
    const/4 v2, 0x4

    if-ne v6, v2, :cond_1a

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    move-wide/from16 v1, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    return-void

    :cond_1a
    const/4 v2, 0x5

    if-ne v6, v2, :cond_1b

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    move-wide/from16 v1, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    return-void

    :cond_1b
    move v4, v3

    move-wide/from16 v2, p1

    if-le v6, v9, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v5

    if-gt v6, v5, :cond_1c

    const-string/jumbo v0, "No behavior defined for power press count "

    invoke-static {v6, v0, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    if-ne v6, v1, :cond_2f

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    if-eqz v5, :cond_1e

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-boolean v5, v5, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    if-eqz v4, :cond_1d

    if-nez v5, :cond_20

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring short press of power button because the default display is not on. defaultDisplayOn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", beganFromDefaultDisplayOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-boolean v5, v5, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    if-eqz v4, :cond_2e

    if-eqz v5, :cond_1f

    goto/16 :goto_f

    :cond_1f
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v4, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_20

    invoke-virtual {v4, v1}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed(Z)V

    :cond_20
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    if-nez v4, :cond_2d

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v4, v11, v9}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result v4

    if-eqz v4, :cond_21

    goto/16 :goto_e

    :cond_21
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZLjava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "glanceable_hub_enabled"

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_22

    move v4, v1

    goto :goto_a

    :cond_22
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v5

    if-nez v5, :cond_23

    goto/16 :goto_10

    :cond_23
    invoke-virtual {v5}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v6

    if-eqz v6, :cond_25

    :cond_24
    const/4 v4, 0x0

    goto :goto_b

    :cond_25
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v7, v8}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v7

    if-eqz v7, :cond_26

    if-eqz v4, :cond_26

    if-nez v6, :cond_26

    invoke-virtual {v5}, Landroid/service/dreams/DreamManagerInternal;->dreamConditionActive()Z

    move-result v4

    if-eqz v4, :cond_26

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "extra_trigger_hub"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    :cond_26
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZLjava/lang/Runnable;)V

    return-void

    :goto_b
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    return-void

    :pswitch_2
    const/4 v4, 0x0

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZLjava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v4, :cond_2a

    iget-object v5, v4, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v6, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    if-eqz v6, :cond_2a

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v4, :cond_29

    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-object v7, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_28

    iget-boolean v4, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz v4, :cond_27

    goto :goto_c

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_c
    iput-boolean v1, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    :cond_29
    iget-boolean v1, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_2a
    const/4 v4, 0x0

    goto :goto_d

    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    return-void

    :goto_d
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    return-void

    :pswitch_4
    const/4 v4, 0x0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    const/16 v1, 0x11

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V

    return-void

    :cond_2c
    invoke-virtual {v0, v4, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onShortPowerPressedGoHome()V

    return-void

    :pswitch_5
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onShortPowerPressedGoHome()V

    return-void

    :pswitch_6
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    return-void

    :pswitch_7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    return-void

    :pswitch_8
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    return-void

    :cond_2d
    :goto_e
    const-string/jumbo v0, "skip single press power, requestedSystemKey"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring short press of power button because the device is not interactive. interactive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", beganFromNonInteractive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final applyKeyguardOcclusionChange()I
    .locals 7

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    const-string/jumbo v1, "PhoneWindowManager"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transition/occluded commit occluded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccludedChanged:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDexKeyguardOccluded:Z

    iget-object v5, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setDexOccluded(Z)V

    :cond_1
    iget-object v3, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v2, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dexOccluded:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean v4, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccludedChanged:Z

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "setKeyguardOccluded occluded="

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "setOccluded"

    filled-new-array {v1, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x7920

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(ZZ)V

    :cond_4
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    return v4
.end method

.method public final applyLidSwitchState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lid_behavior"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final attemptToDreamOrAwakeFromShortPowerButtonPress(ZLjava/lang/Runnable;)V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "PhoneWindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t access dream manager dreaming when attempting to start or stop dream from short power press (isScreenOn=true, awakeWhenDream="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->canStartDreaming(Z)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const-string/jumbo p1, "short press power"

    invoke-virtual {v0, p0, p1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo p0, "PhoneWindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t start dreaming and the device is not dreaming when attempting to start or stop dream from short power press (isScreenOn=true, awakeWhenDream="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->requestDream()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final bindKeyguard()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final createHomeDockIntent()Landroid/content/Intent;
    .locals 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_5

    return-object v1

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x10080

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v0, v3, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_6
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_7

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    const-string/jumbo v3, "android.dock_home"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    return-object v1
.end method

.method public final dismissKeyboardShortcutsMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string/jumbo v1, "PhoneWindowManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PWM.dismissKeyguardLw"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to call callback"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 11

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSafeMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mSystemReady="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mSystemBooted="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const-string/jumbo v2, "mCameraLensCoverState="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "CAMERA_LENS_COVERED"

    goto :goto_0

    :cond_1
    const-string v1, "CAMERA_LENS_UNCOVERED"

    goto :goto_0

    :cond_2
    const-string v1, "CAMERA_LENS_COVER_ABSENT"

    :goto_0
    const-string/jumbo v2, "mWakeGestureEnabledSetting="

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    const-string/jumbo v2, "mUiMode="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {v1}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mEnableCarDockHomeCapture="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    const-string/jumbo v2, "mLidKeyboardAccessibility="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mLidNavigationAccessibility="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " getLidBehavior="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lid_behavior"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, "LID_BEHAVIOR_LOCK"

    goto :goto_1

    :cond_4
    const-string v1, "LID_BEHAVIOR_SLEEP"

    goto :goto_1

    :cond_5
    const-string v1, "LID_BEHAVIOR_NONE"

    :goto_1
    const-string/jumbo v5, "mLongPressOnBackBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string v1, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    goto :goto_2

    :cond_7
    const-string v1, "LONG_PRESS_BACK_NOTHING"

    :goto_2
    const-string/jumbo v5, "mLongPressOnHomeBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz v1, :cond_d

    if-eq v1, v3, :cond_c

    if-eq v1, v2, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v5, :cond_9

    const/16 v7, 0x65

    if-eq v1, v7, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const-string v1, "LONG_PRESS_HOME_BIXBY_TOUCH"

    goto :goto_3

    :cond_9
    const-string v1, "LONG_PRESS_HOME_SEARCLE"

    goto :goto_3

    :cond_a
    const-string v1, "LONG_PRESS_HOME_NOTIFICATION_PANEL"

    goto :goto_3

    :cond_b
    const-string v1, "LONG_PRESS_HOME_ASSIST"

    goto :goto_3

    :cond_c
    const-string v1, "LONG_PRESS_HOME_ALL_APPS"

    goto :goto_3

    :cond_d
    const-string v1, "LONG_PRESS_HOME_NOTHING"

    :goto_3
    const-string/jumbo v7, "mDoubleTapOnHomeBehavior="

    invoke-static {p1, v1, v0, v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v1, :cond_10

    if-eq v1, v3, :cond_f

    if-eq v1, v2, :cond_e

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_e
    const-string v1, "DOUBLE_TAP_HOME_PIP_MENU"

    goto :goto_4

    :cond_f
    const-string v1, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    goto :goto_4

    :cond_10
    const-string v1, "DOUBLE_TAP_HOME_NOTHING"

    :goto_4
    const-string/jumbo v7, "mShortPressOnPowerBehavior="

    invoke-static {p1, v1, v0, v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v7, 0x5

    if-eqz v1, :cond_16

    if-eq v1, v3, :cond_15

    if-eq v1, v2, :cond_14

    if-eq v1, v6, :cond_13

    if-eq v1, v5, :cond_12

    if-eq v1, v7, :cond_11

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_11
    const-string/jumbo v1, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    goto :goto_5

    :cond_12
    const-string/jumbo v1, "SHORT_PRESS_POWER_GO_HOME"

    goto :goto_5

    :cond_13
    const-string/jumbo v1, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    goto :goto_5

    :cond_14
    const-string/jumbo v1, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    goto :goto_5

    :cond_15
    const-string/jumbo v1, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    goto :goto_5

    :cond_16
    const-string/jumbo v1, "SHORT_PRESS_POWER_NOTHING"

    :goto_5
    const-string/jumbo v8, "mLongPressOnPowerBehavior="

    invoke-static {p1, v1, v0, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-eqz v1, :cond_1c

    if-eq v1, v3, :cond_1b

    if-eq v1, v2, :cond_1a

    if-eq v1, v6, :cond_19

    if-eq v1, v5, :cond_18

    if-eq v1, v7, :cond_17

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_17
    const-string v1, "LONG_PRESS_POWER_ASSISTANT"

    goto :goto_6

    :cond_18
    const-string v1, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    goto :goto_6

    :cond_19
    const-string v1, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    goto :goto_6

    :cond_1a
    const-string v1, "LONG_PRESS_POWER_SHUT_OFF"

    goto :goto_6

    :cond_1b
    const-string v1, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    goto :goto_6

    :cond_1c
    const-string v1, "LONG_PRESS_POWER_NOTHING"

    :goto_6
    const-string/jumbo v5, "mSettingsKeyBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    if-eqz v1, :cond_1f

    if-eq v1, v3, :cond_1e

    if-eq v1, v2, :cond_1d

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_1d
    const-string/jumbo v1, "SETTINGS_KEY_BEHAVIOR_NOTHING"

    goto :goto_7

    :cond_1e
    const-string/jumbo v1, "SETTINGS_KEY_BEHAVIOR_NOTIFICATION_PANEL"

    goto :goto_7

    :cond_1f
    const-string/jumbo v1, "SETTINGS_KEY_BEHAVIOR_SETTINGS_ACTIVITY"

    :goto_7
    const-string/jumbo v5, "mLongPressOnPowerAssistantTimeoutMs="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    const-string/jumbo v1, "mVeryLongPressOnPowerBehavior="

    invoke-static {v7, v8, p1, v0, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v1, :cond_21

    if-eq v1, v3, :cond_20

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_20
    const-string/jumbo v1, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    goto :goto_8

    :cond_21
    const-string/jumbo v1, "VERY_LONG_PRESS_POWER_NOTHING"

    :goto_8
    const-string/jumbo v5, "mDoublePressOnPowerBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTriplePressOnPowerBehavior="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSupportShortPressPowerWhenDefaultDisplayOn="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    const-string/jumbo v5, "mPowerVolUpBehavior="

    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_23

    if-eq v1, v2, :cond_22

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_22
    const-string/jumbo v1, "POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS"

    goto :goto_9

    :cond_23
    const-string/jumbo v1, "POWER_VOLUME_UP_BEHAVIOR_MUTE"

    goto :goto_9

    :cond_24
    const-string/jumbo v1, "POWER_VOLUME_UP_BEHAVIOR_NOTHING"

    :goto_9
    const-string/jumbo v5, "mShortPressOnSleepBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v1, :cond_26

    if-eq v1, v3, :cond_25

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_25
    const-string/jumbo v1, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    goto :goto_a

    :cond_26
    const-string/jumbo v1, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    :goto_a
    const-string/jumbo v5, "mShortPressOnWindowBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_27

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_27
    const-string/jumbo v1, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    goto :goto_b

    :cond_28
    const-string/jumbo v1, "SHORT_PRESS_WINDOW_NOTHING"

    :goto_b
    const-string/jumbo v5, "mShortPressOnStemPrimaryBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    if-eqz v1, :cond_2b

    if-eq v1, v3, :cond_2a

    if-eq v1, v2, :cond_29

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_29
    const-string/jumbo v1, "SHORT_PRESS_PRIMARY_LAUNCH_TARGET_ACTIVITY"

    goto :goto_c

    :cond_2a
    const-string/jumbo v1, "SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS"

    goto :goto_c

    :cond_2b
    const-string/jumbo v1, "SHORT_PRESS_PRIMARY_NOTHING"

    :goto_c
    const-string/jumbo v5, "mDoublePressOnStemPrimaryBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz v1, :cond_2e

    if-eq v1, v3, :cond_2d

    if-eq v1, v2, :cond_2c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_2c
    const-string v1, "DOUBLE_PRESS_PRIMARY_LAUNCH_DEFAULT_FITNESS_APP"

    goto :goto_d

    :cond_2d
    const-string v1, "DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP"

    goto :goto_d

    :cond_2e
    const-string v1, "DOUBLE_PRESS_PRIMARY_NOTHING"

    :goto_d
    const-string/jumbo v5, "mTriplePressOnStemPrimaryBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    if-eqz v1, :cond_30

    if-eq v1, v3, :cond_2f

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_2f
    const-string/jumbo v1, "TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY"

    goto :goto_e

    :cond_30
    const-string/jumbo v1, "TRIPLE_PRESS_PRIMARY_NOTHING"

    :goto_e
    const-string/jumbo v5, "mLongPressOnStemPrimaryBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    if-eqz v1, :cond_32

    if-eq v1, v3, :cond_31

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_31
    const-string v1, "LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT"

    goto :goto_f

    :cond_32
    const-string v1, "LONG_PRESS_PRIMARY_NOTHING"

    :goto_f
    const-string/jumbo v5, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    const-string/jumbo v5, "mHasSoftInput="

    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    const-string/jumbo v5, "mDismissImeOnBackKeyPressed="

    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mIncallPowerBehavior="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_33

    const-string/jumbo v1, "hangup"

    goto :goto_10

    :cond_33
    const-string/jumbo v1, "sleep"

    :goto_10
    const-string/jumbo v5, "mIncallBackBehavior="

    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_34

    const-string/jumbo v1, "hangup"

    goto :goto_11

    :cond_34
    const-string v1, "<nothing>"

    :goto_11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mEndcallBehavior="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_35

    const-string/jumbo v7, "home|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    and-int/2addr v1, v2

    if-eqz v1, :cond_36

    const-string/jumbo v1, "sleep|"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "<nothing>"

    goto :goto_12

    :cond_37
    sub-int/2addr v1, v3

    invoke-virtual {v5, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDisplayHomeButtonHandlers="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v4

    :goto_13
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_38

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mKeyguardOccluded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mKeyguardOccludedChanged="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mPendingKeyguardOccluded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const-string/jumbo v5, "mAllowLockscreenWhenOnDisplays="

    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mLockScreenTimeout="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mLockScreenTimerActive="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    const-string/jumbo v5, "mKidsModeEnabled="

    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v5, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_39

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mKeyMapping.size=0"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    :cond_39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mKeyMapping={"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v4

    :goto_14
    if-ge v7, v5, :cond_3a

    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    iget-object v8, v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ",dispatchWhenNonInteractive="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    iget-boolean v8, v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_3a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_15
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "    SingleKey rules:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v4

    :goto_16
    iget-object v7, v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_3b

    iget-object v7, v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "      "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_3b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "    Deferred key action executor:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_3c

    const-string v1, "      empty"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    :cond_3c
    move v5, v4

    :goto_17
    iget-object v7, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_3e

    iget-object v7, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    iget-boolean v8, v7, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mExecutable:Z

    iget v9, v7, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mKeyCode:I

    if-eqz v8, :cond_3d

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": executable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_3d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "      "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " actions queued"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_3e
    :goto_19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v1, :cond_3f

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "WakeGestureListener"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "mTriggerRequested="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mSensor="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v5

    goto :goto_1a

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3f
    :goto_1a
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v1, :cond_40

    const-string v5, "    BurnInProtection"

    const-string v7, "      mBurnInProtectionActive="

    invoke-static {p1, v5, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    const-string v8, "      mHorizontalBurnInOffsetsBounds=("

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "      mVerticalBurnInOffsetsBounds=("

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "      mBurnInRadiusMaxSquared="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    const-string v10, "      mLastBurnInOffset=("

    invoke-static {v5, v9, p1, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "      mOfsetChangeDirections=("

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_40
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_49

    const-string v5, "    KeyguardServiceDelegate"

    const-string v7, "      showing="

    invoke-static {p1, v5, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    const-string v8, "      inputRestricted="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    const-string v8, "      occluded="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    const-string v8, "      secure="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    const-string v8, "      dreaming="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    const-string v8, "      systemIsReady="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    const-string v8, "      deviceHasKeyguard="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    const-string v8, "      enabled="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    const-string v8, "      offReason="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    invoke-static {v7}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "      currentUser="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    const-string v8, "      bootCompleted="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    const-string v8, "      screenState="

    invoke-static {v5, v7, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-eqz v7, :cond_44

    if-eq v7, v3, :cond_43

    if-eq v7, v2, :cond_42

    if-eq v7, v6, :cond_41

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    :cond_41
    const-string/jumbo v7, "SCREEN_STATE_TURNING_OFF"

    goto :goto_1b

    :cond_42
    const-string/jumbo v7, "SCREEN_STATE_ON"

    goto :goto_1b

    :cond_43
    const-string/jumbo v7, "SCREEN_STATE_TURNING_ON"

    goto :goto_1b

    :cond_44
    const-string/jumbo v7, "SCREEN_STATE_OFF"

    :goto_1b
    const-string v8, "      interactiveState="

    invoke-static {p1, v7, v8, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v7, v7, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-eqz v7, :cond_48

    if-eq v7, v3, :cond_47

    if-eq v7, v2, :cond_46

    if-eq v7, v6, :cond_45

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_45
    const-string v2, "INTERACTIVE_STATE_GOING_TO_SLEEP"

    goto :goto_1c

    :cond_46
    const-string v2, "INTERACTIVE_STATE_AWAKE"

    goto :goto_1c

    :cond_47
    const-string v2, "INTERACTIVE_STATE_WAKING"

    goto :goto_1c

    :cond_48
    const-string v2, "INTERACTIVE_STATE_SLEEP"

    :goto_1c
    invoke-static {v5, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_49

    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "      KeyguardStateMonitor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "        mIsShowing="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    const-string v5, "        mSimSecure="

    invoke-static {v2, v3, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    const-string v5, "        mInputRestricted="

    invoke-static {v2, v3, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    const-string v5, "        mTrusted="

    invoke-static {v2, v3, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    const-string v5, "        mCurrentUserId="

    invoke-static {v2, v3, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    invoke-static {v2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Looper state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v3, "      "

    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p1, v3, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ModifierShortcutManager shortcuts:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, v1, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    iget-boolean v5, v3, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShift:Z

    iget-object v6, v1, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v5, :cond_4a

    const-string/jumbo v7, "SHIFT+"

    goto :goto_1e

    :cond_4a
    const-string v7, ""

    :goto_1e
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v3, v3, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShortcutChar:C

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1, v3, v6, v5}, Lcom/android/server/policy/ModifierShortcutManager;->shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_4b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Resolves to: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    :cond_4b
    const-string v3, "<No KeyboardShortcutInfo available for this shortcut>"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1f
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_1d

    :cond_4c
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 9

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    const-wide v5, 0x10800000005L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    const-wide v5, 0x10800000006L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const-wide v5, 0x10800000007L

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000000cL

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v2

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000000dL

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000000eL

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_0

    const-wide v5, 0x10b00000014L

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    const-wide v7, 0x10800000001L

    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    const-wide v7, 0x10800000002L

    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    const-wide v7, 0x10800000003L

    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    const-wide v2, 0x10e00000005L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final enableKeyguard(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    :cond_1
    return-void
.end method

.method public final enableScreen(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->onScreenOn()V

    :cond_2
    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->enableScreenIfNeeded()V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final exitKeyguardSecurely(Lcom/android/server/wm/WindowManagerService$3;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    invoke-direct {v0}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    iput-object p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    :cond_0
    return-void
.end method

.method public final finishedBootAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedBootAnim()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    :cond_1
    return-void
.end method

.method public final finishedGoingToSleep(II)V
    .locals 4

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x11170

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneWindowManager"

    const-string v2, "Finished going to sleep... (groupId="

    const-string v3, " why="

    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "screen_timeout"

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExternalDesktopMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(IZ)V

    :cond_3
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    iput v1, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->clearAppLockedUnLockedApp()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "PhoneWindowManagerExt"

    const-string p2, " ClearAppLockedUnLockedApp failed , Remote exception "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final finishedWakingUp(II)V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "Finished waking up... (groupId="

    const-string v1, " why="

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result p2

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "PhoneWindowManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExternalDesktopMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptWakeInteractiveState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    :cond_4
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_8

    iget-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    iput p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    iput v0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    goto :goto_2

    :cond_7
    iput p2, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    :cond_8
    :goto_3
    return-void
.end method

.method public final getAccessibilityShortcutTimeout()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string/jumbo v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "skip_accessibility_shortcut_dialog_timeout_restriction"

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v1, v2, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getAppLaunchBookmarks()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    instance-of v4, v3, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/hardware/input/InputGestureData$KeyTrigger;

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getModifierState()I

    move-result v3

    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v4, v2, v5}, Lcom/android/server/policy/ModifierShortcutManager;->shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/view/KeyboardShortcutGroup;

    iget-object p1, v0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    const v0, 0x1040708

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p0
.end method

.method public final getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    return-object p0
.end method

.method public final getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v1

    :cond_1
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    return-object p0
.end method

.method public final getMaxMultiPressPowerCount()I
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    const/16 v2, 0x6a

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const/16 v3, 0x66

    if-ne v1, v3, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz p0, :cond_4

    iget p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v3, 0x68

    if-eq p0, v3, :cond_7

    :cond_4
    iget p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-ne p0, v2, :cond_5

    goto :goto_0

    :cond_5
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz p0, :cond_6

    const/16 p0, 0x1a

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuickLaunchCameraEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    if-eqz p0, :cond_8

    iget p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const/16 v0, 0x69

    if-ne p0, v0, :cond_8

    :cond_7
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getResolvedLongPressOnPowerBehavior()I
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "com.sec.facuifunction.app.ui.UIHardKey"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    return v1

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    return v4

    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string/jumbo v5, "clockwork_long_press_to_assistant_enabled"

    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v3, "PhoneWindowManager"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "longPressToAssistant = "

    invoke-static {v0, v2, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-ne v0, v4, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return p0

    :cond_9
    :goto_3
    return v2
.end method

.method public final getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result p0

    return p0

    :cond_0
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq p1, v1, :cond_1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getTelecommService()Landroid/telecom/TelecomManager;
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public final goHome()Z
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    const-string/jumbo v2, "PhoneWindowManager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v0, "Not going home because user setup is in progress."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v4, "persist.sys.uts-test-mode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    const-string/jumbo v4, "UTS-TEST-MODE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_3

    :goto_1
    return v3

    :catch_0
    :cond_3
    return v1
.end method

.method public final handleHomeShortcuts(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .locals 13

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string/jumbo v7, "PhoneWindowManager"

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v8, "handleHomeButton in display#%d mHomePressed = %b"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v6, 0x65

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-nez v2, :cond_b

    iget p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz p2, :cond_3

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p2, p2, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eq p2, v8, :cond_4

    if-eq p2, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {p0, v3, v3, p2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZILandroid/view/InputDevice;)V

    :cond_5
    :goto_1
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    iget-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz p0, :cond_6

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    :goto_2
    move v3, v4

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    const-string p0, "Ignoring HOME; event canceled."

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz p2, :cond_9

    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz p0, :cond_9

    :cond_8
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object p2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_9
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0, v9, v9}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string/jumbo p0, "skip single press home, requestedSystemKey"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :goto_3
    return v3

    :cond_b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p2

    if-eqz p2, :cond_f

    iget v2, p2, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 v5, 0x7d9

    if-eq v2, v5, :cond_e

    const/16 v5, 0x7f8

    if-ne v2, v5, :cond_c

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v5, v2

    move v10, v3

    :goto_4
    if-ge v10, v5, :cond_f

    aget v11, v2, v10

    iget v12, p2, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    if-ne v12, v11, :cond_d

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    return v3

    :cond_f
    if-nez v1, :cond_13

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-eqz p0, :cond_11

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p2, p2, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eq p2, v8, :cond_10

    if-eq p2, v6, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {p0, v4, v3, p2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZILandroid/view/InputDevice;)V

    :cond_11
    :goto_6
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object p2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p2, v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :cond_12
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne p1, v4, :cond_18

    iget p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p1, :cond_18

    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-eqz p0, :cond_18

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_18

    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_18

    if-nez p0, :cond_15

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0, v9, v8}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string/jumbo p0, "skip long press home, requestedSystemKey"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_14
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p2, v0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "keyguardOn, isShowing="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isInputRestricted="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p1, :cond_16

    move p1, v3

    goto :goto_7

    :cond_16
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p2, :cond_17

    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    iput-boolean p2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    :cond_17
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    :goto_7
    invoke-static {v7, p0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-eqz p0, :cond_18

    iget-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-nez p0, :cond_18

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showingSearcleToastIfNeeded()V

    :catch_1
    :cond_18
    :goto_8
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string/jumbo p0, "can dispatching home key event, requestedSystemKey"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_19
    :goto_9
    return v4
.end method

.method public final handleKeyGesture(Landroid/view/KeyEvent;ZZI)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x3

    const-string/jumbo v5, "PhoneWindowManager"

    const/4 v6, 0x0

    const/16 v7, 0x450

    if-ne v3, v7, :cond_2

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/InputDevice;->getVendorId()I

    move-result v3

    const/16 v9, 0x4e8

    if-ne v3, v9, :cond_2

    invoke-virtual {v8}, Landroid/view/InputDevice;->getProductId()I

    move-result v3

    const v8, 0xa035

    if-ne v3, v8, :cond_2

    :cond_0
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3, v7, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    const-string/jumbo v0, "skip AI_HOT_KEY gesture, requestedSystemKey"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "dispatch AI_HOT_KEY"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_3

    move v8, v9

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual {v3, v7, v10, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IIZ)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_4

    const-string/jumbo v0, "handleKeyGesture, blockKeyPolicy"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_5

    move v10, v9

    goto :goto_1

    :cond_5
    move v10, v6

    :goto_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    iget-object v12, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v10, :cond_6

    iput-boolean v6, v12, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    :cond_6
    invoke-virtual {v3, v8, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    move-result v13

    const/4 v14, 0x2

    const-string/jumbo v15, "PhoneWindowManagerExt"

    if-eqz v13, :cond_7

    const-string/jumbo v3, "interceptKeyTq : Key was blocked by interaction control"

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v3, v14

    goto :goto_3

    :cond_7
    iget-object v13, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v13, v8, v6, v6}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v3, 0x1a

    if-ne v8, v3, :cond_9

    if-eqz v10, :cond_8

    iput-boolean v9, v12, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    :cond_8
    move v3, v7

    goto :goto_3

    :cond_9
    move v3, v9

    goto :goto_3

    :cond_a
    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v12

    if-nez v12, :cond_b

    const/16 v12, 0x83

    if-lt v8, v12, :cond_b

    const/16 v12, 0x8e

    if-gt v8, v12, :cond_b

    const-string v3, "Ignoring function key - device is not setup. ("

    const-string v10, ")"

    invoke-static {v8, v3, v10, v15}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const/16 v12, 0x19

    if-eq v8, v12, :cond_c

    const/16 v12, 0x18

    if-ne v8, v12, :cond_8

    :cond_c
    if-nez v11, :cond_d

    if-nez v10, :cond_8

    :cond_d
    iget-object v8, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    goto :goto_2

    :goto_3
    if-eq v3, v7, :cond_e

    const-string/jumbo v0, "handleKeyGesture, beforeInterceptKey policy="

    invoke-static {v3, v0, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/high16 v5, 0x1000000

    const-string/jumbo v7, "SingleKeyGesture"

    if-nez v3, :cond_24

    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eq v3, v4, :cond_10

    :cond_f
    xor-int/2addr v2, v9

    iput-boolean v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    move/from16 v2, p3

    iput-boolean v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    :cond_10
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "interceptKeyDown, info : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    if-ne v2, v4, :cond_11

    const-string/jumbo v4, "init HandleLongPressInfo"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->reset()V

    :cond_11
    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-ne v3, v2, :cond_13

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v3, :cond_32

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-nez v3, :cond_32

    sget-boolean v3, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Long press key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iput-boolean v9, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x1

    const/16 v18, 0x1

    move/from16 v20, p4

    move/from16 v17, v2

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v1, v6, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v6

    :cond_13
    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v3, :cond_16

    iget v3, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v2, v3, :cond_14

    goto :goto_4

    :cond_14
    sget-boolean v3, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Press another key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    :cond_16
    :goto_4
    iput v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const-wide/16 v10, 0x0

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v3, :cond_18

    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v2, v4, :cond_18

    sget-boolean v4, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Intercept key by rule "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iput-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    :cond_18
    iput-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    :cond_19
    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v3, :cond_1a

    goto/16 :goto_c

    :cond_1a
    invoke-virtual {v3, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyDown(Landroid/view/KeyEvent;)V

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iget-wide v12, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    sub-long/2addr v3, v12

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    iget-object v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget-wide v12, v8, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long v15, v12, v10

    if-eqz v15, :cond_1b

    goto :goto_5

    :cond_1b
    sget-wide v12, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_5
    cmp-long v3, v3, v12

    if-ltz v3, :cond_1c

    iput v9, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    goto :goto_6

    :cond_1c
    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    :goto_6
    iput-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-ne v3, v9, :cond_1d

    iput-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    :cond_1d
    if-ne v3, v9, :cond_1f

    invoke-virtual {v8}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x2

    move/from16 v20, p4

    move/from16 v17, v2

    move-object/from16 v16, v3

    move/from16 v18, v4

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v2, v6, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    iget-object v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    :cond_1e
    move/from16 v17, v2

    :goto_7
    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x0

    move/from16 v20, p4

    move-object/from16 v16, v2

    move/from16 v18, v3

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v1, v9, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    iget-object v0, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v6

    :cond_1f
    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v3, v14}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    if-eqz v3, :cond_21

    and-int v3, p4, v5

    if-eqz v3, :cond_20

    move v3, v9

    goto :goto_8

    :cond_20
    move v3, v6

    :goto_8
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    if-nez v3, :cond_21

    iget-wide v12, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    cmp-long v3, v12, v10

    if-eqz v3, :cond_21

    iget-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    const-wide/16 v12, 0x32

    add-long/2addr v10, v12

    cmp-long v3, v4, v10

    if-gez v3, :cond_21

    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    sub-int/2addr v3, v9

    iput v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    const-string/jumbo v3, "interceptKeyDown keyCode="

    const-string v8, ", mKeyReleaseTime("

    invoke-static {v2, v3, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ") -  eventTime("

    const-string v10, ")="

    invoke-static {v3, v8, v4, v5, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-le v3, v9, :cond_22

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Trigger multi press, mTriggeredMultiPressTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v3

    if-le v3, v9, :cond_32

    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v4

    if-ne v3, v4, :cond_32

    sget-boolean v3, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Trigger multi press "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for it reached the max count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v3, v4, v7}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_23
    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x0

    move/from16 v20, p4

    move/from16 v17, v2

    move-object/from16 v16, v3

    move/from16 v18, v4

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v1, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v6

    :cond_24
    iput v6, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v2, :cond_25

    goto/16 :goto_c

    :cond_25
    iget-boolean v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-nez v2, :cond_28

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    iget-object v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v8}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v12

    add-long/2addr v12, v10

    cmp-long v8, v2, v12

    if-gez v8, :cond_26

    iget-object v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9

    :cond_26
    iget-object v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v8}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    :goto_9
    iget-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    iget-object v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    add-long/2addr v10, v12

    cmp-long v2, v2, v10

    if-gez v2, :cond_27

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a

    :cond_27
    iget-boolean v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v3

    iget-boolean v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    or-int/2addr v3, v8

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    :cond_28
    :goto_a
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v8, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v2, v8, :cond_29

    invoke-virtual {v3, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(Landroid/view/KeyEvent;)V

    :cond_29
    iget-boolean v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    const/4 v3, 0x0

    if-nez v2, :cond_34

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto/16 :goto_d

    :cond_2a
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget-object v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v8, v8, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne v2, v8, :cond_33

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    sub-long/2addr v10, v12

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-ltz v2, :cond_2c

    sget-boolean v1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "The duration of the press is too slow. Resetting."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return v6

    :cond_2c
    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v8, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x0

    move/from16 v20, p4

    move-object/from16 v16, v2

    move/from16 v17, v8

    move/from16 v18, v10

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v2, v4, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v2

    if-ne v2, v9, :cond_2e

    sget-boolean v2, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "press key "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v18, 0x1

    move/from16 v20, p4

    move-object/from16 v16, v2

    move/from16 v17, v4

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v1, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return v6

    :cond_2e
    and-int v2, p4, v5

    if-eqz v2, :cond_2f

    move v2, v9

    goto :goto_b

    :cond_2f
    move v2, v6

    :goto_b
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v10, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    sub-long/2addr v4, v10

    if-nez v2, :cond_30

    const-wide/16 v10, 0x12c

    cmp-long v8, v4, v10

    if-lez v8, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "multi-press key "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " count="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " longInterval="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget v5, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x0

    move/from16 v20, p4

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v1, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return v6

    :cond_30
    iget v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v4

    if-ge v3, v4, :cond_31

    new-instance v15, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget v5, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v19

    const/16 v21, 0x0

    move/from16 v20, p4

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v3, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    sget-wide v7, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    invoke-virtual {v4, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_31
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    if-eqz v3, :cond_32

    if-nez v2, :cond_32

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    :cond_32
    :goto_c
    return v6

    :cond_33
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return v6

    :cond_34
    :goto_d
    iput-boolean v6, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iput v6, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    new-instance v10, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v11, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v12, v11, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget v13, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v1, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v3, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return v6
.end method

.method public handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getDeviceId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v9

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v12

    new-instance v13, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayIdDesktopWindowingMode(I)I

    move-result v11

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v12

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v12, :cond_4

    move v13, v3

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    sget-boolean v14, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string/jumbo v15, "PhoneWindowManager"

    const/16 p2, 0x0

    const-string v2, " displayId="

    const-string v7, " keyguardOn="

    if-nez v14, :cond_5

    const-string/jumbo v14, "handleKeyGestureEvent, type="

    invoke-static {v9, v14, v7, v2, v12}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v11, v15}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string/jumbo v14, "handleKeyGestureEvent, gestureType="

    const-string v5, " start="

    invoke-static {v9, v11, v14, v2, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " complete="

    const-string v14, " longPress="

    invoke-static {v2, v1, v5, v4, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " modifierState="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " canLaunchApp="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v7, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v7}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v5

    aget v7, v5, p2

    if-eq v9, v3, :cond_35

    const/4 v5, 0x2

    if-eq v9, v5, :cond_33

    const/4 v14, 0x3

    if-eq v9, v14, :cond_32

    const/4 v14, 0x4

    if-eq v9, v14, :cond_2d

    const/4 v6, 0x5

    if-eq v9, v6, :cond_2c

    const/4 v6, 0x6

    if-eq v9, v6, :cond_2c

    const/4 v6, 0x7

    if-eq v9, v6, :cond_2b

    const/16 v6, 0x8

    if-eq v9, v6, :cond_2a

    const/16 v6, 0x3f

    if-eq v9, v6, :cond_29

    const/16 v6, 0x1b

    if-eq v9, v6, :cond_28

    const/16 v6, 0x1c

    if-eq v9, v6, :cond_27

    const/16 v6, 0x1f

    if-eq v9, v6, :cond_26

    const/16 v6, 0x20

    if-eq v9, v6, :cond_24

    const/16 v6, 0x38

    if-eq v9, v6, :cond_22

    const/16 v6, 0x39

    const/16 v12, 0xa

    if-eq v9, v6, :cond_20

    const/16 v6, 0x4b

    const/4 v14, 0x0

    if-eq v9, v6, :cond_1e

    const/16 v6, 0x4c

    if-eq v9, v6, :cond_1d

    const/4 v6, -0x1

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    packed-switch v9, :pswitch_data_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received a key gesture "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " that was not registered by this handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptStopLockTaskModePinnedChord()V

    return-void

    :cond_7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    const-string/jumbo v1, "window locked by metaShift with L"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0, v14}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PKBD0035"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    return-void

    :pswitch_2
    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    return-void

    :cond_8
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkAccessibilityShortcutVolupPowerTriggered()V

    return-void

    :pswitch_3
    if-eqz v4, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->closeSystemDialogs()V

    return-void

    :pswitch_4
    if-eqz v4, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_5
    const/16 v2, 0x12

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_9
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :pswitch_6
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_10

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void

    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_37

    :try_start_0
    invoke-interface {v0, v3, v2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    return-void

    :pswitch_7
    move-object/from16 v5, p1

    if-eqz v4, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_37

    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToFullscreen(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    :pswitch_8
    move-object/from16 v5, p1

    if-eqz v4, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_37

    :try_start_2
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToDesktop(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :pswitch_9
    move-object/from16 v5, p1

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v2, v7}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string/jumbo v9, "shortcutSetting("

    const-string/jumbo v10, "PhoneWindowManagerExt"

    if-eqz v8, :cond_c

    const-string v1, ") has no shortcut"

    invoke-static {v7, v9, v1, v10}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    const-string/jumbo v8, "None"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v1, ") is none"

    invoke-static {v7, v9, v1, v10}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_6

    :cond_d
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v2}, Lcom/android/server/policy/KeyboardShortcutManager;->determineLaunchType(ILjava/lang/String;)I

    move-result v8

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v1, v7, v11, v8, v2}, Lcom/android/server/policy/KeyboardShortcutManager;->launchCustomizationShortcut(IIILjava/lang/String;)Z

    move-result v1

    :goto_6
    if-eqz v1, :cond_e

    const-string/jumbo v0, "handleKeyGestureEvent: consumed by Keyboard shortcut manager"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v1

    if-eqz v4, :cond_37

    if-eqz v13, :cond_37

    if-eqz v1, :cond_37

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v4, v2, Lcom/android/server/policy/ModifierShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_f

    :goto_7
    const/4 v2, 0x0

    goto :goto_9

    :cond_f
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v4, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayIdDesktopWindowingMode(I)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v4

    sget-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    iget-object v2, v2, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v4, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_8
    move v2, v3

    goto :goto_9

    :cond_10
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Not launching app because the activity to which it refers to was not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ModifierShortcutManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_9
    if-eqz v2, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    goto/16 :goto_10

    :pswitch_a
    if-eqz v4, :cond_37

    if-eqz v13, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_11

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_a

    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_a
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_4
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not resolve activity with : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :pswitch_b
    move-object/from16 v5, p1

    if-eqz v4, :cond_37

    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const-string/jumbo v3, "launchAllAppsViaA11y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void

    :pswitch_c
    if-eqz v4, :cond_37

    const/16 v1, 0xd

    if-ne v9, v1, :cond_12

    move v6, v3

    :cond_12
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, -0x3

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_13

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v7, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_13
    if-gez v11, :cond_14

    move v11, v7

    :cond_14
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v11, v7}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v1

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v11, v3}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v2

    sub-float v4, v2, v1

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    int-to-float v5, v6

    mul-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v11}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v5

    add-float/2addr v5, v4

    invoke-static {v5, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v11, v1}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.FROM_BRIGHTNESS_KEY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_d
    if-eqz v4, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_37

    :try_start_5
    invoke-interface {v0, v8}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    return-void

    :pswitch_e
    move-object/from16 v5, p1

    if-eqz v1, :cond_16

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_GLOBAL_ACTION:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->interceptGlobalActionChord()V

    :cond_15
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptKeyCombinationScreenshotChord()V

    return-void

    :cond_16
    if-eqz v2, :cond_17

    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->getFlags()I

    move-result v1

    if-eq v1, v3, :cond_17

    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->getEventTimes()[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkKeyCombinationScreenshotChord(IJZ)V

    return-void

    :cond_17
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_GLOBAL_ACTION:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    iget-object v1, v0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :pswitch_f
    if-eqz v4, :cond_37

    if-ne v11, v3, :cond_1a

    :cond_19
    :goto_b
    move v13, v3

    goto :goto_d

    :cond_1a
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_19

    move v3, v5

    goto :goto_b

    :goto_d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    if-ne v11, v6, :cond_1c

    const/4 v15, 0x0

    goto :goto_e

    :cond_1c
    move v15, v11

    :goto_e
    iget-object v12, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    return-void

    :cond_1d
    if-eqz v4, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v0}, Lcom/android/server/policy/VoiceAccessShortcutController;->toggleVoiceAccess(I)Z

    return-void

    :cond_1e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-eqz v1, :cond_1f

    move v2, v3

    goto :goto_f

    :cond_1f
    const/4 v2, 0x0

    :goto_f
    xor-int/lit8 v1, v2, 0x1

    const-string v2, "Key gesture DND"

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    return-void

    :cond_20
    if-eqz v1, :cond_21

    const/16 v1, 0x2713

    const-string v2, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS - Global Actions"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    return-void

    :cond_21
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_22
    const/16 v2, 0x18

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_23
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_24
    move-object/from16 v5, p1

    if-eqz v4, :cond_37

    const-string/jumbo v1, "screen is off by meta with L"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->getEventTimes()[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    const/16 v2, 0x19

    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplay:Landroid/view/Display;

    if-eqz v1, :cond_25

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->getEventTimes()[J

    move-result-object v2

    aget-wide v6, v2, v3

    const/16 v8, 0x19

    const/4 v9, 0x0

    move v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/os/PowerManager;->goToSleep(IJII)V

    :cond_25
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PKBD0013"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz v4, :cond_37

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    if-eqz v1, :cond_37

    :try_start_6
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    const-string v1, "Error taking bugreport"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    :cond_27
    move-object/from16 v5, p1

    if-eqz v4, :cond_37

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_37

    const/4 v2, 0x0

    :try_start_7
    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToStageSplit(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :cond_28
    move-object/from16 v5, p1

    if-eqz v4, :cond_37

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_37

    :try_start_8
    invoke-interface {v0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToStageSplit(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    return-void

    :cond_29
    if-eqz v4, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    sget-object v2, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)V

    return-void

    :cond_2a
    if-eqz v4, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_37

    const/16 v1, 0x2a

    if-ne v7, v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PKBD0063"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    return-void

    :cond_2b
    if-eqz v4, :cond_37

    if-eqz v13, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->showSystemSettings()V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_37

    const/16 v1, 0x25

    if-ne v7, v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v7}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PKBD0061"

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    if-eqz v4, :cond_37

    if-eqz v13, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    const-string/jumbo v5, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_37

    const/16 v1, 0x1d

    if-ne v7, v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v7}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PKBD0056"

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    move-object/from16 v5, p1

    if-nez v12, :cond_37

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v8}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v0, "skip single press recent, requestedSystemKey"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    if-eqz v1, :cond_2f

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_37

    :try_start_9
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    return-void

    :cond_2f
    if-eqz v4, :cond_30

    invoke-virtual {v5}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    if-nez v1, :cond_37

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void

    :cond_30
    if-eqz v6, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1, v7, v14}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v0, "skip long press recent, requestedSystemKey"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent()V

    return-void

    :cond_32
    move-object/from16 v5, p1

    if-eqz v4, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v1

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x48

    const/16 v16, 0x101

    move-wide v7, v5

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v4, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {v4, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v4}, Landroid/view/KeyEvent;->recycle()V

    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    return-void

    :cond_33
    if-eqz v4, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_10

    :cond_34
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_37

    const/16 v1, 0x3d

    if-ne v7, v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PKBD0055"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    return-void

    :cond_35
    if-eqz v4, :cond_37

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, v11, v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_37

    const/16 v1, 0x24

    if-ne v7, v1, :cond_36

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v7}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PKBD0060"

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    const/16 v1, 0x42

    if-ne v7, v1, :cond_37

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PKBD0054"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    :catch_3
    :cond_37
    :goto_10
    :pswitch_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_b
        :pswitch_a
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3b
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleShortPressOnHome(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    const-string/jumbo p1, "short press on home"

    invoke-virtual {v0, p0, p1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/input/InputManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    const-class v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    const-class v3, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/dreams/DreamManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorPrivacyManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.type.watch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.leanback"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.hdmi.cec"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    new-instance v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11102b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    const v4, 0x11102b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    const v4, 0x11102b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110172

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const-string/jumbo v4, "persist.debug.force_burn_in"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, -0x1

    const/4 v7, 0x6

    const/16 v8, 0x8

    if-nez v3, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v4, :cond_2

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    const/4 v4, -0x8

    const/4 v9, -0x4

    move v14, v4

    move/from16 v16, v14

    move v15, v8

    move/from16 v17, v9

    :goto_1
    move/from16 v18, v3

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v9, 0x10e005c

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const v10, 0x10e0060

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v11, 0x10e005e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    const v12, 0x10e005d

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move v14, v4

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    goto :goto_1

    :goto_2
    new-instance v12, Lcom/android/server/policy/BurnInProtectionHelper;

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct/range {v12 .. v18}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    :cond_3
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v9, v3}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v9, "end_button_behavior"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "incall_power_button_behavior"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "incall_back_button_behavior"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "wake_gesture_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "screen_off_timeout"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "default_input_method"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "volume_hush_gesture"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "system_navigation_keys_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "power_button_short_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "power_button_double_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "power_button_triple_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "power_button_long_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "power_button_long_press_duration_ms"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "power_button_very_long_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "stem_primary_button_short_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "stem_primary_button_double_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "stem_primary_button_triple_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "stem_primary_button_long_press"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "key_chord_power_volume_up"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "stylus_buttons_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v9, "nav_bar_kids_mode"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    new-instance v4, Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {v4, v6, v9, v10}, Lcom/android/server/policy/ModifierShortcutManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0091

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.category.HOME"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x1110173

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.VR_HOME"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v4, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v4, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111026c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110270

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104035c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x10e0139

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    :cond_4
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e016b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110250

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    move v3, v6

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x11101c6

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x10e0196

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v9, v3

    iput-wide v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x10e0166

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x10403cb

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/wm/WindowManagerInternal;

    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_4
    move-object v13, v2

    goto :goto_6

    :cond_7
    :goto_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_4

    :goto_6
    new-instance v9, Lcom/android/server/policy/DisplayFoldController;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-direct/range {v9 .. v14}, Lcom/android/server/policy/DisplayFoldController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;Landroid/graphics/Rect;Landroid/os/Handler;)V

    iput-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-virtual {v3, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-virtual {v3, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    new-instance v2, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    :cond_8
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v2, v0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v5, v1}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v2, Lcom/android/server/policy/TalkbackShortcutController;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/android/server/policy/TalkbackShortcutController;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    new-instance v2, Lcom/android/server/policy/VoiceAccessShortcutController;

    invoke-direct {v2, v1}, Lcom/android/server/policy/VoiceAccessShortcutController;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

    new-instance v2, Lcom/android/server/policy/WindowWakeUpPolicy;

    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v2, v1, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;-><init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    new-instance v5, Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {v5, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x10e00ca

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v9, v1

    sput-wide v9, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    sput-object v3, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    sget-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    iput-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v5, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    if-eq v3, v6, :cond_9

    goto :goto_7

    :cond_9
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v3}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    if-nez v2, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    :goto_8
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    :cond_d
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    filled-new-array/range {v9 .. v37}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    new-instance v5, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v0
.end method

.method public final initKeyCombinationRules()V
    .locals 6

    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-direct {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    :cond_1
    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$6;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$6;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    :cond_2
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$6;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$6;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final initializeHdmiStateInternal()V
    .locals 9

    const-string/jumbo v0, "PhoneWindowManager"

    const-string v1, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    const-string v2, "/sys/devices/virtual/switch/hdmi/state"

    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v2, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xf

    :try_start_1
    new-array v2, v2, [C

    invoke-virtual {v5, v2}, Ljava/io/FileReader;->read([C)I

    move-result v6

    if-le v6, v3, :cond_0

    new-instance v7, Ljava/lang/String;

    sub-int/2addr v6, v3

    invoke-direct {v7, v2, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v5

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_1

    :catch_3
    move-exception v5

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_2

    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    goto :goto_0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    goto :goto_0

    :goto_3
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    throw p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$11;

    const-string/jumbo v1, "mdss_mdp/drm/card"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$11;

    const-string/jumbo v1, "displayport/extcon/extcon"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :catch_5
    :cond_3
    :goto_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public final interceptGlobalActionChord()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-eqz v0, :cond_0

    const-string/jumbo p0, "PhoneWindowManager"

    const-string v0, "Global Action is canceled because of factory mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string/jumbo v8, "PhoneWindowManager"

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "interceptKeyTi keyCode="

    const-string v9, " action="

    invoke-static {v4, v7, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " repeatCount="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " keyguardOn="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " canceled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v7

    const-wide/16 v9, -0x1

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v7, v2}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-wide/from16 v16, v9

    goto/16 :goto_1d

    :cond_2
    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide v13

    cmp-long v5, v11, v13

    if-gez v5, :cond_3

    sub-long/2addr v13, v11

    return-wide v13

    :cond_3
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    iget-object v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v12, v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v12

    cmp-long v14, v12, v9

    move-wide/from16 v16, v9

    const/16 v10, 0x18

    const/16 v15, 0x19

    const/16 v19, 0x1

    if-ltz v14, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "interceptKeyTi interceptKeyResult="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_5

    :goto_0
    const/4 v10, 0x0

    goto/16 :goto_18

    :cond_5
    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_19

    :cond_6
    const/4 v12, 0x3

    if-eq v7, v12, :cond_14

    const/16 v12, 0xa4

    if-eq v7, v12, :cond_d

    const/16 v12, 0x108

    if-eq v7, v12, :cond_7

    if-eq v7, v10, :cond_d

    if-eq v7, v15, :cond_d

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Illegal keycode provided to prepareToSendSystemKeyToApplication: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    iget-object v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string/jumbo v21, "android.permission.OVERRIDE_SYSTEM_KEY_BEHAVIOR_IN_FOCUSED_WINDOW"

    const/16 v22, -0x1

    const/16 v24, 0x0

    move/from16 v23, v0

    move-object/from16 v20, v11

    invoke-static/range {v20 .. v26}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    move/from16 v0, v19

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual {v1, v3, v11, v12}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    goto :goto_2

    :cond_a
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v19

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    xor-int/lit8 v0, v0, 0x1

    :goto_4
    if-eqz v0, :cond_c

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :goto_5
    move/from16 v0, v19

    const/4 v10, 0x0

    goto/16 :goto_1a

    :cond_d
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_f

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_15

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_f
    :goto_6
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_10

    const/4 v13, 0x0

    goto :goto_7

    :cond_10
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/hdmi/HdmiControlManager;

    :goto_7
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v0

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    if-eqz v0, :cond_12

    invoke-virtual {v13}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_11

    move/from16 v7, v19

    goto :goto_8

    :cond_11
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v0, v3, v7}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    goto :goto_5

    :cond_12
    :try_start_0
    const-string/jumbo v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_13

    const-string/jumbo v3, "Unable to find IAudioService interface."

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v2, v3, v7, v8}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Error dispatching volume key in handleVolumeKey for event:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_14
    iget-object v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v12, v7}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    :cond_15
    :goto_9
    const/16 v0, 0x1a

    if-eq v7, v0, :cond_16

    const/16 v0, 0xdf

    if-eq v7, v0, :cond_16

    const/16 v0, 0xe0

    if-eq v7, v0, :cond_16

    move/from16 v0, v19

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-lez v14, :cond_18

    iget-object v14, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    if-eqz v14, :cond_18

    iget-object v14, v14, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v15, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    new-instance v10, Landroid/view/KeyEvent;

    invoke-direct {v10, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v13, 0x10000000

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v13, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v9, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "EXTRA_BEGAN_FROM_NON_INTERACTIVE"

    invoke-virtual {v9, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v10, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    move/from16 v10, v19

    if-ne v9, v10, :cond_17

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    :goto_b
    const/4 v0, 0x1

    goto :goto_c

    :cond_17
    const/4 v10, 0x0

    goto :goto_b

    :cond_18
    const/4 v10, 0x0

    const/4 v13, 0x0

    move v0, v10

    :goto_c
    if-eqz v0, :cond_1a

    goto/16 :goto_18

    :cond_19
    const/4 v10, 0x0

    const/4 v13, 0x0

    :cond_1a
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    if-nez v9, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual {v9}, Landroid/view/InputDevice;->isExternal()Z

    move-result v9

    if-eqz v9, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_1d

    const/4 v9, 0x1

    :goto_d
    const/4 v12, 0x4

    goto :goto_e

    :cond_1d
    move v9, v10

    goto :goto_d

    :goto_e
    if-ne v0, v12, :cond_1e

    goto :goto_13

    :cond_1e
    const/high16 v12, 0x1000000

    and-int/2addr v3, v12

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    :goto_f
    const/16 v12, 0x18

    goto :goto_10

    :cond_1f
    move v3, v10

    goto :goto_f

    :goto_10
    if-eq v0, v12, :cond_20

    const/16 v14, 0x19

    if-ne v0, v14, :cond_25

    :cond_20
    if-eqz v3, :cond_21

    goto :goto_13

    :cond_21
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v9, :cond_23

    if-eqz v3, :cond_23

    if-ne v0, v12, :cond_22

    const-string v0, "HWB1013"

    :goto_11
    move-object v13, v0

    goto :goto_12

    :cond_22
    const-string v0, "HWB1015"

    goto :goto_11

    :cond_23
    :goto_12
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_13

    :cond_24
    invoke-static {v13}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    :cond_25
    :goto_13
    const/high16 v0, 0x10000

    and-int/2addr v0, v11

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v0

    if-eqz v0, :cond_26

    :goto_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_26
    const/16 v0, 0x37

    if-eq v7, v0, :cond_28

    const/16 v0, 0x38

    if-eq v7, v0, :cond_28

    const/16 v0, 0x150

    if-eq v7, v0, :cond_27

    goto :goto_16

    :cond_27
    const/16 v19, 0x1

    goto :goto_15

    :cond_28
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_TOOLBAR_SHORTCUT:Z

    if-eqz v0, :cond_27

    goto :goto_14

    :goto_15
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_29

    goto :goto_14

    :cond_29
    :goto_16
    move v0, v10

    :goto_17
    if-nez v0, :cond_2a

    :goto_18
    const/4 v0, 0x1

    goto :goto_1a

    :cond_2a
    :goto_19
    move v0, v10

    goto :goto_1a

    :cond_2b
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result v0

    :goto_1a
    if-eqz v0, :cond_2c

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-wide v16

    :cond_2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_2f

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_1b

    :cond_2d
    const/16 v3, 0x4f

    if-eq v4, v3, :cond_2e

    const/16 v14, 0x19

    if-eq v4, v14, :cond_2e

    const/16 v12, 0x18

    if-ne v4, v12, :cond_30

    :cond_2e
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v12, 0x4

    invoke-virtual {v1, v12, v4}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/high16 v18, 0x10000000

    and-int v1, v1, v18

    if-nez v1, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyCustomization: remove from consumedKeys, keyCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v9, v10

    goto :goto_1c

    :cond_2f
    :goto_1b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->remove(I)V

    :cond_30
    move v9, v0

    :goto_1c
    if-eqz v9, :cond_31

    :goto_1d
    return-wide v16

    :cond_31
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const/high16 v8, 0x40000

    and-int/2addr v8, v3

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    invoke-static {v4}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v9

    invoke-virtual {v1, v9, v4, v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_6

    :cond_4
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/16 v11, 0x1a

    const/16 v12, 0xb1

    const/16 v13, 0xdb

    const/16 v14, 0xe0

    const/4 v15, 0x4

    if-nez v9, :cond_c

    if-eqz v7, :cond_6

    if-eq v4, v11, :cond_5

    if-ne v4, v12, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    goto :goto_5

    :cond_6
    if-eqz v7, :cond_b

    if-nez v0, :cond_7

    if-ne v4, v14, :cond_b

    :cond_7
    if-eq v4, v15, :cond_9

    if-eq v4, v13, :cond_8

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    const/4 v5, 0x1

    goto :goto_4

    :pswitch_0
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    goto :goto_4

    :pswitch_1
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    goto :goto_4

    :cond_8
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    goto :goto_4

    :cond_9
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    :goto_4
    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :goto_5
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    :cond_b
    :goto_6
    return v6

    :cond_c
    const/high16 v9, 0x20000000

    and-int/2addr v9, v3

    if-eqz v9, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    move v10, v6

    :goto_7
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v17

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v12

    const/high16 v18, 0x1000000

    and-int v18, v3, v18

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    goto :goto_8

    :cond_e
    move/from16 v18, v6

    :goto_8
    sget-boolean v19, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string/jumbo v14, "PhoneWindowManager"

    const-string v6, " interactive="

    if-nez v19, :cond_f

    sget-object v21, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v11, v21

    check-cast v11, Landroid/util/ArraySet;

    invoke-virtual {v11, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_f
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_11

    if-eqz v10, :cond_10

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_9

    :cond_10
    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_11

    :goto_9
    const/4 v5, 0x1

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    :goto_a
    const-string/jumbo v11, "interceptKeyTq keycode="

    const-string v13, " keyguardActive="

    invoke-static {v4, v11, v6, v13, v10}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " policyFlags="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v5, -0x1

    if-nez v10, :cond_1a

    if-eqz v18, :cond_13

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {v1, v12}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(I)Z

    move-result v11

    if-eqz v11, :cond_14

    iput v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :goto_b
    const/4 v11, 0x1

    goto :goto_f

    :cond_14
    if-eqz v0, :cond_18

    if-eqz v7, :cond_17

    if-eq v4, v15, :cond_16

    const/16 v11, 0xdb

    if-eq v4, v11, :cond_15

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    const/4 v11, 0x1

    goto :goto_c

    :pswitch_2
    iget-boolean v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    goto :goto_c

    :pswitch_3
    iget-boolean v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    goto :goto_c

    :cond_15
    iget-boolean v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    goto :goto_c

    :cond_16
    iget-boolean v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    :goto_c
    if-nez v11, :cond_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    if-eqz v0, :cond_19

    if-eqz v7, :cond_19

    iput v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :cond_19
    const/4 v11, 0x0

    goto :goto_f

    :cond_1a
    :goto_d
    if-eqz v10, :cond_1c

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v4, v0, :cond_1b

    if-nez v7, :cond_1b

    const/4 v0, 0x0

    goto :goto_e

    :cond_1b
    const/4 v0, 0x1

    :goto_e
    iput v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move v11, v0

    const/4 v0, 0x0

    goto :goto_f

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    :goto_f
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v15

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_1d

    const/4 v5, 0x1

    :goto_10
    move/from16 v23, v0

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    goto :goto_10

    :goto_11
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/16 v24, 0x2

    const/16 v25, 0x12

    move/from16 v26, v7

    const-string/jumbo v7, "PhoneWindowManagerExt"

    const/16 v27, 0x8

    move/from16 v28, v9

    const/4 v9, 0x3

    if-eq v15, v9, :cond_21

    const/16 v9, 0x1a

    if-eq v15, v9, :cond_20

    const/16 v9, 0xbb

    if-eq v15, v9, :cond_1e

    goto :goto_14

    :cond_1e
    iget v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_24

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v5, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1f

    goto :goto_14

    :cond_1f
    const-string/jumbo v0, "Recent Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    move/from16 v0, v24

    goto :goto_15

    :cond_20
    invoke-virtual {v13, v9, v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IIZ)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_24

    goto :goto_15

    :cond_21
    iget v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_23

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v9, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-nez v9, :cond_23

    iget-object v9, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v15, 0x0

    invoke-virtual {v9, v0, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_22

    goto :goto_13

    :cond_22
    const-string v0, "Home Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_23
    :goto_13
    if-eqz v10, :cond_24

    if-eqz v5, :cond_24

    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v0

    if-eqz v0, :cond_24

    move/from16 v0, v25

    goto :goto_15

    :cond_24
    :goto_14
    const/4 v0, 0x1

    :goto_15
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_25

    const/16 v23, 0x0

    goto :goto_16

    :cond_25
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_26

    const/16 v23, 0x1

    :cond_26
    :goto_16
    and-int/lit8 v0, v0, 0x2

    const-string v5, "KEY("

    const/4 v9, 0x6

    if-eqz v0, :cond_29

    if-eqz v23, :cond_28

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    const-string v3, ")"

    invoke-static {v4, v5, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    invoke-virtual {v0, v4}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_17

    :cond_27
    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    :cond_28
    :goto_17
    const-string/jumbo v0, "interceptKeyTq : return condition of policyExt wakeKey"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/16 v20, 0x0

    return v20

    :cond_29
    const/16 v13, 0x1a

    if-eq v4, v13, :cond_2a

    const/16 v0, 0xdf

    if-eq v4, v0, :cond_2a

    const/16 v13, 0xe0

    if-eq v4, v13, :cond_2a

    const/4 v0, 0x1

    goto :goto_19

    :cond_2a
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_2f

    if-nez v10, :cond_2d

    if-eqz v23, :cond_2d

    if-eqz v26, :cond_2d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    if-nez v0, :cond_2c

    const/4 v6, 0x0

    goto :goto_1b

    :cond_2c
    iget-boolean v6, v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    :goto_1b
    if-eqz v6, :cond_2d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    const/4 v5, -0x1

    iput v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    const/4 v5, 0x1

    goto :goto_1c

    :cond_2d
    move v5, v11

    :goto_1c
    if-eqz v23, :cond_2e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_2e
    return v5

    :cond_2f
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_30

    const/16 v16, 0x0

    :goto_1d
    const/16 v13, 0xb1

    goto :goto_1e

    :cond_30
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v13, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    move-object/from16 v16, v0

    goto :goto_1d

    :goto_1e
    if-ne v4, v13, :cond_32

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_32

    if-eqz v16, :cond_31

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/hdmi/HdmiControlManager;->shouldHandleTvPowerKey()Z

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v29

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v31

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v33

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v35

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v36

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v37

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v38

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v39

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v40

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v41

    const/16 v42, 0x0

    const/16 v34, 0x1a

    invoke-static/range {v29 .. v42}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0

    :cond_32
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v13, v13, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v10, :cond_33

    if-eqz v13, :cond_33

    const/4 v13, 0x1

    goto :goto_1f

    :cond_33
    const/4 v13, 0x0

    :goto_1f
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    const/16 v9, 0x450

    if-ne v15, v9, :cond_34

    move v13, v10

    :cond_34
    const/16 v15, 0x18

    const/16 v9, 0x19

    if-eq v4, v15, :cond_35

    if-ne v4, v9, :cond_36

    :cond_35
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v31

    if-eqz v31, :cond_36

    invoke-virtual/range {v31 .. v31}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v31

    if-eqz v31, :cond_36

    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v15}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v15

    if-eqz v15, :cond_36

    const-string/jumbo v13, "interceptKeyTq, interactive value has updated by proximity sensor during inCall"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :cond_36
    if-eqz v8, :cond_37

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    goto :goto_20

    :cond_37
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v15

    and-int/lit16 v15, v15, 0x400

    if-nez v15, :cond_38

    invoke-virtual {v1, v2, v13, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZZI)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_38

    const-string/jumbo v0, "interceptKeyTq : return condition of policyExt handleKeyGesture"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :cond_38
    :goto_20
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    move/from16 v33, v10

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v34

    if-nez v34, :cond_39

    move/from16 v34, v11

    const/4 v11, 0x1

    goto :goto_21

    :cond_39
    move/from16 v34, v11

    const/4 v11, 0x0

    :goto_21
    if-eqz v28, :cond_3a

    move/from16 v28, v12

    const/4 v12, 0x1

    goto :goto_22

    :cond_3a
    move/from16 v28, v12

    const/4 v12, 0x0

    :goto_22
    const/high16 v35, 0x100000

    and-int v35, v3, v35

    if-eqz v35, :cond_3b

    move-object/from16 v35, v5

    const/4 v5, 0x1

    goto :goto_23

    :cond_3b
    move-object/from16 v35, v5

    const/4 v5, 0x0

    :goto_23
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    move/from16 v36, v8

    const/16 v8, 0x450

    if-eq v3, v8, :cond_3c

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    :cond_3c
    if-nez v19, :cond_3e

    sget-object v3, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_24

    :cond_3d
    move/from16 v19, v13

    goto :goto_25

    :cond_3e
    :goto_24
    const-string/jumbo v3, "interceptKeyTq code="

    const-string v8, " down="

    move/from16 v19, v13

    const-string v13, " repeatCount="

    invoke-static {v15, v3, v8, v13, v11}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " displayId="

    invoke-static {v9, v10, v8, v6, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " powerCombination="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/high16 v6, 0x10000000

    const-string/jumbo v8, "systemKeyEventRequested ADD_PASS"

    const/4 v13, 0x3

    if-eq v15, v13, :cond_59

    move/from16 v13, v18

    if-eq v15, v13, :cond_58

    const/4 v10, 0x6

    if-eq v15, v10, :cond_57

    const/16 v10, 0x39

    if-eq v15, v10, :cond_56

    const/16 v10, 0xbb

    if-eq v15, v10, :cond_5b

    const/16 v10, 0x3f7

    if-eq v15, v10, :cond_55

    const/16 v10, 0x419

    if-eq v15, v10, :cond_52

    const/16 v10, 0x450

    if-eq v15, v10, :cond_4f

    const/16 v10, 0x433

    if-eq v15, v10, :cond_4d

    const/16 v13, 0x434

    if-eq v15, v13, :cond_4d

    const/16 v10, 0x436

    if-eq v15, v10, :cond_4b

    const/16 v10, 0x437

    if-eq v15, v10, :cond_55

    const/16 v10, 0x44c

    if-eq v15, v10, :cond_49

    const/16 v13, 0x44d

    if-eq v15, v13, :cond_49

    const/16 v10, 0x65

    packed-switch v15, :pswitch_data_4

    goto/16 :goto_2e

    :pswitch_4
    sget-boolean v13, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_LONG_PRESS:Z

    if-eqz v13, :cond_41

    if-nez v9, :cond_41

    if-nez v11, :cond_3f

    iget-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    if-eqz v9, :cond_3f

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    const-string/jumbo v3, "close_dictation"

    invoke-virtual {v0, v15, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    goto :goto_26

    :cond_3f
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-eqz v9, :cond_41

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-ne v3, v10, :cond_41

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    move-result v3

    if-eqz v3, :cond_40

    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    if-nez v3, :cond_41

    :cond_40
    new-instance v3, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v3, v2, v12}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    iput-boolean v5, v3, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    new-instance v5, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v5, v3}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    :cond_41
    :goto_26
    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_27
    const/4 v0, 0x4

    goto/16 :goto_2f

    :cond_43
    const-string/jumbo v0, "systemKeyEventRequested REMOVE_PASS"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_28
    move/from16 v0, v27

    goto/16 :goto_2f

    :pswitch_5
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-eqz v7, :cond_45

    if-eqz v5, :cond_45

    if-eqz v11, :cond_45

    if-nez v9, :cond_45

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-ne v3, v10, :cond_45

    new-instance v3, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v3, v2, v12}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    iput-boolean v5, v3, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    new-instance v5, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v5, v3}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    :cond_45
    if-eqz v11, :cond_5d

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_46
    :goto_29
    move/from16 v0, v24

    goto/16 :goto_2f

    :pswitch_6
    if-nez v9, :cond_47

    iput-boolean v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v11, :cond_47

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v30, v11

    const-wide/16 v10, 0xbb8

    invoke-virtual {v7, v13, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a

    :cond_47
    move/from16 v30, v11

    :goto_2a
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-eqz v7, :cond_48

    if-eqz v5, :cond_48

    if-eqz v30, :cond_48

    if-nez v9, :cond_48

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/16 v7, 0x65

    if-ne v3, v7, :cond_48

    new-instance v3, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v3, v2, v12}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    iput-boolean v5, v3, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    new-instance v5, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v5, v3}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    :cond_48
    if-eqz v30, :cond_5d

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_29

    :cond_49
    move/from16 v30, v11

    if-eqz v30, :cond_46

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne v15, v10, :cond_4a

    const v5, 0x10405e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    :cond_4a
    const v5, 0x10405e8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2b
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_4b
    move/from16 v30, v11

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    if-eqz v3, :cond_46

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_29

    :cond_4c
    if-eqz v30, :cond_42

    const-string/jumbo v3, "Press KEYCODE_DOUBLE_TAP"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v3, :cond_42

    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    if-eqz v3, :cond_42

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    const-string/jumbo v5, "pen_intent_com"

    const-string/jumbo v7, "pen_doubletab"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SMART_CLIP:Z

    if-eqz v3, :cond_42

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setScreenOffDoubleTabTime()V

    goto/16 :goto_27

    :cond_4d
    move/from16 v30, v11

    if-eqz v30, :cond_46

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne v15, v10, :cond_4e

    const v5, 0x1040fc6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_4e
    const v5, 0x1040fc5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_4f
    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v3, "AI_HOT systemKeyEventRequested ADD_PASS"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    goto/16 :goto_27

    :cond_50
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "AI_HOT dispatch due to keyguard"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    :cond_51
    const-string v0, "AI_HOT systemKeyEventRequested REMOVE_PASS"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_52
    move/from16 v30, v11

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    if-eqz v5, :cond_46

    if-eqz v30, :cond_46

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    if-nez v0, :cond_53

    goto/16 :goto_29

    :cond_53
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_29

    :cond_54
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10010000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.sec.android.app.premiumwatch/com.sec.android.app.premiumwatch.activity.PremiumWatch"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v5, "doubleTap"

    const/4 v8, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "launchDoubleTapPremiumWatch:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v5, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_29

    :catch_0
    move-exception v0

    const-string/jumbo v3, "No activity to launch Premium watch. "

    invoke-static {v7, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    :cond_55
    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v0

    if-eqz v0, :cond_42

    goto/16 :goto_28

    :cond_56
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5d

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPressedAltAI:Z

    goto :goto_2e

    :cond_57
    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_58
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_42

    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v0

    if-eqz v0, :cond_42

    goto/16 :goto_28

    :cond_59
    move/from16 v30, v11

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-eqz v5, :cond_5b

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v3, v15}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    if-eqz v30, :cond_5a

    if-nez v9, :cond_5a

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v10, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZILandroid/view/InputDevice;)V

    goto :goto_2d

    :cond_5a
    const/4 v9, 0x0

    if-nez v30, :cond_5b

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v0, v9, v9, v10, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZILandroid/view/InputDevice;)V

    :cond_5b
    :goto_2d
    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_5c
    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto/16 :goto_28

    :cond_5d
    :goto_2e
    const/4 v0, 0x1

    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "interceptKeyTq interceptKeyResult="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_5e

    const-string/jumbo v0, "interceptKeyTq : return condition of policyExt"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :cond_5e
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_5f

    const/4 v11, 0x1

    goto :goto_30

    :cond_5f
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_60

    const/4 v11, 0x0

    goto :goto_30

    :cond_60
    move/from16 v11, v34

    :goto_30
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    goto :goto_31

    :cond_61
    const/4 v0, 0x0

    :goto_31
    if-eqz v26, :cond_64

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-nez v3, :cond_62

    if-eqz v33, :cond_64

    goto :goto_32

    :cond_62
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_64

    :goto_32
    if-eqz v0, :cond_63

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v0, :cond_64

    :cond_63
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_64

    const/4 v5, 0x1

    goto :goto_33

    :cond_64
    const/4 v5, 0x0

    :goto_33
    const/16 v0, 0x14

    const/16 v3, 0xf

    const/4 v13, 0x4

    if-eq v4, v13, :cond_9d

    const/4 v7, 0x5

    if-eq v4, v7, :cond_9c

    const/4 v10, 0x6

    if-eq v4, v10, :cond_96

    const/16 v8, 0x7e

    if-eq v4, v8, :cond_71

    const/16 v8, 0x7f

    if-eq v4, v8, :cond_71

    const/16 v8, 0x22

    packed-switch v4, :pswitch_data_5

    const/16 v9, 0x4f

    if-eq v4, v9, :cond_71

    const/16 v9, 0x82

    if-eq v4, v9, :cond_71

    const/16 v9, 0xa4

    if-eq v4, v9, :cond_7c

    const/16 v0, 0xab

    if-eq v4, v0, :cond_7a

    const/16 v13, 0xb1

    if-eq v4, v13, :cond_79

    const/16 v6, 0xdb

    if-eq v4, v6, :cond_77

    const/16 v0, 0xe7

    if-eq v4, v0, :cond_76

    const/16 v0, 0x108

    if-eq v4, v0, :cond_75

    const/16 v0, 0x114

    const/16 v6, 0x24

    if-eq v4, v0, :cond_73

    const/16 v0, 0x143

    if-eq v4, v0, :cond_65

    packed-switch v4, :pswitch_data_6

    packed-switch v4, :pswitch_data_7

    packed-switch v4, :pswitch_data_8

    packed-switch v4, :pswitch_data_9

    packed-switch v4, :pswitch_data_a

    packed-switch v4, :pswitch_data_b

    packed-switch v4, :pswitch_data_c

    packed-switch v4, :pswitch_data_d

    :cond_65
    :goto_34
    :pswitch_7
    const/4 v10, 0x6

    goto/16 :goto_4c

    :cond_66
    :goto_35
    :pswitch_8
    const/4 v10, 0x6

    :cond_67
    :goto_36
    const/4 v11, 0x0

    goto/16 :goto_4c

    :pswitch_9
    const-string/jumbo v0, "Stylus buttons event: "

    const-string v6, " received. Should handle event? "

    invoke-static {v4, v0, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    invoke-static {v14, v0, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    if-eqz v0, :cond_66

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    goto :goto_35

    :pswitch_a
    const/16 v0, 0x23

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_66

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_66

    :cond_68
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_66

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    goto :goto_35

    :pswitch_b
    const/16 v0, 0x25

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "skip wakeUp by KEYCODE_WAKEUP, requestedSystemKey"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x6

    const/4 v11, 0x1

    :cond_69
    :goto_37
    const/16 v23, 0x0

    goto/16 :goto_4c

    :cond_6a
    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v23, 0x1

    goto/16 :goto_4c

    :pswitch_c
    invoke-virtual {v1, v2, v6}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6b

    const/4 v5, 0x0

    :cond_6b
    if-eqz v26, :cond_6c

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_6f

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9, v8}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    goto :goto_38

    :cond_6c
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    if-eqz v0, :cond_6d

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const-string/jumbo v0, "sleepRelease() silence ringer"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_6d
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-eqz v0, :cond_6e

    const/4 v8, 0x1

    if-eq v0, v8, :cond_6e

    goto :goto_38

    :cond_6e
    const-string/jumbo v0, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-virtual {v0, v6, v7, v10, v9}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_6f
    :goto_38
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :goto_39
    const/4 v10, 0x6

    :cond_70
    :goto_3a
    const/4 v11, 0x0

    goto :goto_37

    :cond_71
    :pswitch_d
    const/4 v10, 0x6

    goto/16 :goto_48

    :pswitch_e
    if-eqz v26, :cond_66

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_66

    const/16 v9, 0x1a

    invoke-virtual {v1, v2, v9}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v8}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v8, v8}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    xor-int/lit8 v9, v0, 0x1

    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    if-eqz v0, :cond_72

    const v0, 0x10408a1

    goto :goto_3b

    :cond_72
    const v0, 0x10408a0

    :goto_3b
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v6, v7, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_35

    :cond_73
    invoke-virtual {v1, v2, v6}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-nez v26, :cond_74

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    :cond_74
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    goto :goto_39

    :cond_75
    if-eqz v26, :cond_65

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_65

    if-nez v11, :cond_65

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    goto/16 :goto_34

    :cond_76
    if-nez v26, :cond_66

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v10, 0x6

    invoke-virtual {v1, v2, v10}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto/16 :goto_36

    :cond_77
    const/4 v10, 0x6

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_78

    const/4 v0, 0x1

    goto :goto_3c

    :cond_78
    const/4 v0, 0x0

    :goto_3c
    if-eqz v26, :cond_67

    if-nez v0, :cond_67

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x17

    const/4 v15, 0x0

    invoke-virtual {v0, v9, v6, v15, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v1, v2, v7}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto/16 :goto_36

    :cond_79
    const/4 v10, 0x6

    invoke-virtual {v1, v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-eqz v26, :cond_70

    if-eqz v16, :cond_70

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/hdmi/HdmiControlManager;->toggleAndFollowTvPower()V

    goto/16 :goto_3a

    :cond_7a
    const/4 v10, 0x6

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_a4

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_a4

    if-nez v26, :cond_67

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "showPictureInPictureMenu event="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_36

    :cond_7c
    :pswitch_f
    const/4 v10, 0x6

    const/16 v7, 0x19

    goto :goto_3f

    :pswitch_10
    const/4 v10, 0x6

    invoke-virtual {v1, v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object v8, v7, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v8, :cond_7d

    iget v8, v8, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/16 v9, 0x1a

    if-ne v8, v9, :cond_7d

    iget v7, v7, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    goto :goto_3d

    :cond_7d
    const/4 v7, 0x0

    :goto_3d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v6, v7}, [Ljava/lang/Object;

    move-result-object v0

    const v6, 0x11171

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-eqz v26, :cond_7e

    move/from16 v13, v19

    move/from16 v6, v36

    invoke-virtual {v1, v2, v13, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V

    goto :goto_3e

    :cond_7e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    const-string/jumbo v0, "finishPowerKeyPress"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7f
    :goto_3e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v0, :cond_69

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    goto/16 :goto_37

    :goto_3f
    if-ne v4, v7, :cond_80

    const/16 v25, 0x13

    :goto_40
    move/from16 v0, v25

    goto :goto_41

    :cond_80
    const/16 v7, 0x18

    if-ne v4, v7, :cond_81

    goto :goto_40

    :cond_81
    :goto_41
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_82

    goto :goto_42

    :cond_82
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :goto_42
    const/high16 v7, -0x80000000

    if-eqz v26, :cond_8e

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPreviousVolumeDown:Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_83

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v8, :cond_83

    invoke-virtual {v0}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    :cond_83
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v8

    if-eqz v8, :cond_89

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_89

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v7, 0x18

    if-eq v4, v7, :cond_85

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_84
    const/4 v0, 0x0

    goto :goto_43

    :cond_85
    iget-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    if-eqz v6, :cond_84

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_84

    const/4 v0, 0x1

    :goto_43
    if-eqz v0, :cond_87

    const-string/jumbo v0, "ringing: Accept the call (volume up)"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    if-nez v0, :cond_86

    goto/16 :goto_36

    :cond_86
    invoke-virtual {v0, v4}, Lcom/samsung/android/telecom/SemTelecomManager;->acceptRingingCall(I)V

    goto/16 :goto_36

    :cond_87
    const-string/jumbo v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    if-nez v0, :cond_88

    goto/16 :goto_36

    :cond_88
    invoke-virtual {v0, v4}, Lcom/samsung/android/telecom/SemTelecomManager;->silenceRinger(I)V

    goto/16 :goto_36

    :cond_89
    :try_start_1
    const-string/jumbo v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_8a

    const-string/jumbo v9, "Unable to find IAudioService interface."

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_44

    :catch_1
    move-exception v0

    const-string v9, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v14, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_44
    if-eqz v8, :cond_8b

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    if-nez v8, :cond_8c

    :cond_8b
    const/4 v13, 0x3

    if-ne v0, v13, :cond_8d

    :cond_8c
    const/4 v0, 0x1

    goto :goto_45

    :cond_8d
    const/4 v0, 0x0

    :goto_45
    if-eqz v0, :cond_8e

    if-nez v11, :cond_8e

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v7, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_4c

    :cond_8e
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_94

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_8f

    goto :goto_47

    :cond_8f
    if-eqz v11, :cond_90

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPreviousVolumeDown:Z

    if-eqz v0, :cond_a4

    :cond_90
    if-nez v11, :cond_92

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/2addr v0, v6

    if-nez v0, :cond_92

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v13, 0x4

    invoke-virtual {v0, v13, v4}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v0

    if-nez v0, :cond_91

    if-eqz v26, :cond_91

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "KeyCustomization: Not calling media session. mShouldHandleVolumeLongpress="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldHandleVolumeLongpress:Z

    invoke-static {v14, v0, v6}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto/16 :goto_4c

    :cond_92
    if-eqz v26, :cond_93

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPreviousVolumeDown:Z

    goto :goto_46

    :cond_93
    const/4 v8, 0x1

    const/4 v11, 0x0

    :goto_46
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_4c

    :cond_94
    :goto_47
    const/4 v11, 0x1

    goto/16 :goto_4c

    :goto_48
    const/16 v0, 0x26

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_95

    const/4 v11, 0x0

    :cond_95
    if-nez v11, :cond_a4

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/4 v13, 0x3

    invoke-virtual {v0, v13, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4c

    :cond_96
    const/4 v13, 0x3

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, v4, v13}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result v0

    if-eqz v0, :cond_97

    goto/16 :goto_4c

    :cond_97
    if-eqz v26, :cond_9a

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    goto :goto_49

    :cond_98
    const/4 v0, 0x0

    :goto_49
    if-eqz v33, :cond_99

    if-nez v0, :cond_99

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v8, 0x1

    goto/16 :goto_36

    :cond_99
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto/16 :goto_36

    :cond_9a
    const/4 v8, 0x1

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_67

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v17, :cond_67

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_9b

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_9b

    goto/16 :goto_36

    :cond_9b
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_67

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x0

    const/4 v13, 0x4

    invoke-virtual {v0, v6, v7, v13, v9}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto/16 :goto_3a

    :cond_9c
    const/4 v10, 0x6

    if-eqz v26, :cond_a4

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_a4

    const-string/jumbo v6, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    goto/16 :goto_36

    :cond_9d
    const/4 v10, 0x6

    const/4 v13, 0x3

    invoke-virtual {v1, v2, v13}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-eqz v26, :cond_9e

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->moveFocusToAdjacentEmbeddedActivityIfNeeded()Z

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    goto :goto_4c

    :cond_9e
    iget v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v6, :cond_9f

    const/4 v6, 0x1

    goto :goto_4a

    :cond_9f
    const/4 v6, 0x0

    :goto_4a
    if-nez v6, :cond_a3

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v8, "key_back_press"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v8, :cond_a1

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v8

    if-eqz v8, :cond_a1

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v12

    if-eqz v12, :cond_a0

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const/4 v9, 0x0

    goto :goto_4b

    :cond_a0
    iget v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_a1

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v9

    if-eqz v9, :cond_a1

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v9

    goto :goto_4b

    :cond_a1
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v8, :cond_a2

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v8, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a2
    move v9, v7

    :goto_4b
    or-int v0, v6, v9

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    :cond_a3
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-eqz v0, :cond_a4

    goto/16 :goto_36

    :cond_a4
    :goto_4c
    if-eqz v5, :cond_a5

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-nez v0, :cond_a6

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    :cond_a5
    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_4d

    :cond_a6
    const-string/jumbo v0, "Virtual Key - Press"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    :goto_4d
    if-eqz v23, :cond_ad

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v13, 0xe0

    if-eq v4, v13, :cond_a8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a7
    move v5, v9

    goto :goto_4e

    :cond_a8
    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    if-eqz v5, :cond_a7

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    if-eqz v0, :cond_a7

    move v5, v8

    :goto_4e
    if-eqz v5, :cond_ac

    if-eqz v26, :cond_ad

    move/from16 v5, p2

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_a9

    move v9, v3

    goto :goto_4f

    :cond_a9
    move v9, v10

    :goto_4f
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :cond_aa
    const-string v0, ""

    :goto_50
    const-string v3, "):"

    move-object/from16 v5, v35

    invoke-static {v4, v5, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-boolean v2, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    invoke-virtual {v3, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v2

    if-nez v2, :cond_ab

    goto :goto_51

    :cond_ab
    invoke-virtual {v3, v4, v5, v9, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    goto :goto_51

    :cond_ac
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_ad
    :goto_51
    if-eqz v11, :cond_ae

    move/from16 v2, v28

    const/4 v5, -0x1

    if-eq v2, v5, :cond_ae

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v2, v0, :cond_ae

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to move non-focused display "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to top because a key is targeting it"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTopIfAllowed(I)V

    :cond_ae
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x134
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x134
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x18
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x121
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x146
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x55
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xde
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x118
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x134
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x139
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x13f
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public final interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/PowerManagerInternal;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "interceptPowerKeyDown, powerKeyHandled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string v5, " hungUp=false handledByPowerManager="

    const-string v6, " isKeyGestureTriggered="

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isPowerKeyIntercepted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v4}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PhoneWindowManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {p3}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez p3, :cond_4

    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz p1, :cond_5

    iget p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    const/16 p2, 0x1a

    if-ne p2, p1, :cond_5

    const-string/jumbo p1, "Skip power key gesture for other policy has handled it."

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    :cond_5
    :goto_0
    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    sget-boolean p2, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "setBeganFromNonInteractive old="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    const-string/jumbo v0, "SingleKeyGesture"

    invoke-static {v0, p2, p3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_6
    iput-boolean v2, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    :cond_7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CoverPolicy"

    const-string p2, "CoverManager threw RemoteException"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return-void
.end method

.method public final isKeyEventForCurrentUser(IILjava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    sget-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot handle "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p2, " to "

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    const-string p3, " for visible background user(u"

    const-string v0, ")"

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PhoneWindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p1, 0x7f8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isKeyguardOccluded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    return p0
.end method

.method public final isKeyguardSecure(I)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    :cond_3
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final isKeyguardShowingAndNotOccluded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final isKeyguardTrustedLw()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    return p0

    :cond_1
    return v0
.end method

.method public final isScreenOn(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v4, "tv_user_setup_complete"

    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    move v2, v1

    :cond_1
    and-int p0, v0, v2

    return p0

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-eqz v4, :cond_4

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v4, "android.car.SETUP_WIZARD_IN_PROGRESS"

    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_3

    move v2, v1

    :cond_3
    and-int p0, v0, v2

    return p0

    :cond_4
    return v0
.end method

.method public final keyguardOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    iput-boolean v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final launchAllAppsAction()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    if-nez v1, :cond_1

    const-class v1, Lcom/android/server/AccessibilityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AccessibilityManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/AccessibilityManagerInternal;->performSystemAction()V

    goto :goto_3

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "android.intent.action.MAIN"

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final launchAssistAction(IIJLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const-string/jumbo v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz p5, :cond_2

    const/4 p1, 0x1

    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string/jumbo p1, "android.intent.extra.TIME"

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "invocation_type"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/SearchManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final launchHomeFromHotKey(IZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_1

    :cond_0
    move p3, v1

    goto :goto_0

    :cond_1
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dexOccluded:Z

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_5

    :cond_4
    move p3, v1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    if-ne p1, v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    goto :goto_1

    :cond_6
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dexOccluded:Z

    goto :goto_1

    :cond_7
    if-nez p1, :cond_4

    iget-boolean p3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    if-eqz p3, :cond_8

    iget-boolean p3, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p3

    :goto_1
    if-nez p3, :cond_a

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v2, :cond_9

    iget-object v3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-object v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    iput-boolean v2, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    :cond_9
    iget-object p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    iget-object p0, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_d

    new-instance p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    invoke-direct {p1}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    return-void

    :cond_a
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz p3, :cond_e

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz p3, :cond_b

    if-nez p1, :cond_e

    :cond_b
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p2, :cond_c

    const-string/jumbo p1, "dreams"

    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p1

    if-eqz p1, :cond_c

    :try_start_1
    invoke-interface {p1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_c
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_d

    :try_start_2
    invoke-interface {p0, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_d
    :goto_2
    return-void

    :cond_e
    const-string/jumbo p3, "startDockOrHome"

    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public final lockNow(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iput-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo p1, "PhoneWindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lockNow, pid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    iget-boolean v2, v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    invoke-virtual {v1, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x5

    const-string v3, "CAMERA_COVER"

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    :goto_3
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public final notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    new-array v2, p1, [J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v4, p2

    invoke-static/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public final okToAnimate(Z)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final performHapticFeedback(IILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/os/Vibrator;->performHapticFeedback(ILjava/lang/String;II)V

    return-void
.end method

.method public final powerMultiPressAction(JZILandroid/view/KeyEvent;I)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x1a

    const-string/jumbo v11, "PhoneWindowManagerExt"

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v5, "powerMultiPress behavior was wrong. "

    invoke-static {v4, v5, v11}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_7

    :pswitch_0
    move/from16 v6, p6

    invoke-virtual {v7, v5, v6}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)V

    goto/16 :goto_6

    :pswitch_1
    sget-boolean v12, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    if-eqz v12, :cond_e

    const/16 v12, 0x8

    invoke-virtual {v7, v12, v10}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v7

    const/16 v12, 0x7d2

    if-ne v7, v12, :cond_e

    const-string v7, "Launch TvMode by power key double press"

    invoke-static {v11, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v5, v3}, Lcom/android/server/policy/SideKeyDoublePress;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_6

    :pswitch_2
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    if-eqz v7, :cond_e

    const-string v7, "Launch target app by side key double press"

    invoke-static {v11, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v5, v3}, Lcom/android/server/policy/SideKeyDoublePress;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V

    goto/16 :goto_6

    :pswitch_3
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-eqz v5, :cond_e

    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.systemui.action.LAUNCH_EMERGENCY"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v12, 0x100000

    invoke-virtual {v7, v5, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    if-eqz v14, :cond_2

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v15, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v12, "com.samsung.android.emergency"

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_4
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/content/pm/ResolveInfo;

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_6

    const-string v5, "Couldn\'t find an app to process the emergency intent."

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_7

    const-string/jumbo v5, "activityInfo is null, Can not update the emergency intent."

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_4
    if-nez v5, :cond_8

    const-string v5, "Can not launch emergency SOS, the intent is null"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_8
    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    const/4 v12, -0x1

    if-eqz v7, :cond_9

    iget-object v7, v7, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v7, v7, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v13, -0x100

    const/16 v14, 0x19

    invoke-interface {v7, v12, v13, v14}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeState(III)I

    move-result v12

    :cond_9
    if-lez v12, :cond_a

    const-string v5, "Can not launch emergency SOS, volume down key is pressed"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "launch emergency SOS, behavior="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v5, :cond_e

    const/16 v5, 0x66

    if-ne v4, v5, :cond_b

    const-string v5, "HWB1003"

    goto :goto_5

    :cond_b
    const-string v5, "HWB1005"

    :goto_5
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v5, :cond_d

    invoke-virtual {v6, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuickLaunchCameraEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "Launch camera by power key double press"

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchPowerDoublePressCamera()V

    :cond_c
    invoke-virtual {v6, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    goto :goto_6

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Can not launch camera, maybe behavior was wrong. "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    invoke-static {v5, v6, v11}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_e
    :goto_6
    move v5, v9

    :goto_7
    if-eqz v5, :cond_f

    goto/16 :goto_9

    :cond_f
    const-string/jumbo v5, "PhoneWindowManager"

    if-eq v4, v9, :cond_17

    const/4 v6, 0x2

    if-eq v4, v6, :cond_15

    const/4 v1, 0x3

    if-eq v4, v1, :cond_10

    goto/16 :goto_9

    :cond_10
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_11

    const-string v1, "Executing the double press power action."

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    move v8, v9

    :cond_12
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v8, :cond_13

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_13
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    return-void

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not resolve activity with : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " name."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const-string/jumbo v4, "Starting brightness boost."

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_16

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    :cond_16
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    return-void

    :cond_17
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_18

    const-string v0, "Ignoring toggling theater mode - device not setup."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "theater_mode_on"

    invoke-static {v4, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_19

    move v4, v9

    goto :goto_8

    :cond_19
    move v4, v8

    :goto_8
    if-eqz v4, :cond_1a

    const-string/jumbo v4, "Toggling theater mode off."

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v3, :cond_1b

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    return-void

    :cond_1a
    const-string/jumbo v4, "Toggling theater mode on."

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_1b
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readConfigurationDependentBehaviors()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_SEARCLE:Z

    const/16 v2, 0x65

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_BIXBY_TOUCH_CHN:Z

    if-eqz v1, :cond_1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    goto :goto_0

    :cond_1
    const v1, 0x10e00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x0

    if-ltz v1, :cond_2

    if-le v1, v2, :cond_3

    :cond_2
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_3
    const v1, 0x10e00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v2, 0x2

    if-ltz v1, :cond_4

    if-le v1, v2, :cond_5

    :cond_4
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_5
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.picture_in_picture"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    :cond_6
    const v1, 0x10e0169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    if-ltz v0, :cond_8

    if-le v0, v2, :cond_7

    goto :goto_1

    :cond_7
    return-void

    :cond_8
    :goto_1
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    return-void
.end method

.method public requestBugreportForTv()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PhoneWindowManager"

    const-string v1, "Error taking bugreport"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final screenTurnedOff(IZ)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneWindowManager"

    const-string v1, "Display"

    const-string v2, " turned off..."

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff(Z)V

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff()V

    :cond_3
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    :cond_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff(Z)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff(Z)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final screenTurnedOn(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneWindowManager"

    const-string v1, "Display "

    const-string v2, " turned on..."

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onScreenTurnedOn(I)V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    :cond_4
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    if-nez p1, :cond_6

    :goto_0
    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_2

    iget-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOff()V

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "PhoneWindowManager"

    const-string v2, "Display "

    const-string v3, " turning on..."

    invoke-static {p1, v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    if-nez v1, :cond_1

    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onScreenTurningOn(I)V

    :cond_2
    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    if-nez p1, :cond_8

    const-string/jumbo p1, "screenTurningOn"

    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    iget v0, v0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    move v1, v3

    :cond_3
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    int-to-long v0, v0

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1388

    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo p1, "PhoneWindowManager"

    const-string/jumbo p2, "screenTurningOn(+), before calling onScreenTurningOn to KeyguardDelegate"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    invoke-direct {v1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    goto :goto_1

    :cond_5
    const-string v0, "KeyguardServiceDelegate"

    const-string/jumbo v1, "onScreenTurningOn(): no keyguard service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

    :goto_1
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput v3, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    const-string/jumbo p1, "PhoneWindowManager"

    const-string/jumbo p2, "screenTurningOn(-), after calling onScreenTurningOn to KeyguardDelegate"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    const-string/jumbo p1, "PhoneWindowManager"

    const-string/jumbo p2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    monitor-exit v4

    goto :goto_5

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo p2, "waitForAllWindowsDrawn"

    invoke-static {v2, v3, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    :goto_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v1, 0x15

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setConnectedDexDisplay(Lcom/android/server/wm/DisplayContent;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplay:Landroid/view/Display;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplay:Landroid/view/Display;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExternalDesktopMode:I

    return-void
.end method

.method public final setCurrentUserLw(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    iget-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDeferredKeyActionsExecutableAsync(IJ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v0, 0x1b

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    iput p1, p0, Landroid/os/Message;->arg1:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setSwitchingUser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setSwitchingUser(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :cond_1
    return-void
.end method

.method public final shouldDispatchInputWhenNonInteractive(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    const-string/jumbo p0, "dreams"

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    :goto_3
    return v1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "PhoneWindowManager"

    const-string/jumbo v1, "RemoteException when checking if dreaming"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return v0
.end method

.method public final shouldEnableWakeGestureLp()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lid_behavior"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    monitor-exit v0

    if-eqz p0, :cond_2

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return v1
.end method

.method public final showDismissibleKeyguard()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->showDismissibleKeyguard()V

    :cond_0
    return-void
.end method

.method public final showGlobalActions()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final showGlobalActionsInternal(I)V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_LONG_PRESS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show Global Action, type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPressedAltAI:Z

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "KEY_COMBINATION"

    goto :goto_0

    :cond_1
    const-string v2, "LONG_PRESS"

    goto :goto_0

    :cond_2
    const-string v2, "DEFAULT"

    :goto_0
    const-string/jumbo v3, "PhoneWindowManager"

    invoke-static {v0, v2, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_1
    iget-object v4, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    iget v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    iput-boolean v0, v2, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iput-boolean v3, v2, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    iput-boolean v1, v2, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    iget-boolean v0, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_8

    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showGlobalActionsMenu(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    iget-object v0, v2, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-boolean v3, v2, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, v2, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v3, v2, v1, p1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    :catch_0
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public final showRecentApps(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V

    iget-object p1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final sleepDefaultDisplayFromPowerButton(IJ)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-eq v2, v1, :cond_0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v4, :cond_1

    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v4, v2, v5

    if-gez v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Sleep from power button suppressed. Time since gesture: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p1, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PhoneWindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0, p2, p3, v1, p1}, Landroid/os/PowerManager;->goToSleep(JII)V

    const/4 p0, 0x1

    return p0
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .locals 0

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Not starting activity because user setup is in progress: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PhoneWindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final startDockOrHome(Ljava/lang/String;IZZ)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string/jumbo v0, "homekey"

    invoke-static {v0, p2}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    const-string/jumbo p4, "dreams"

    invoke-static {p4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p4

    if-eqz p4, :cond_0

    :try_start_1
    invoke-interface {p4}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-nez p4, :cond_1

    const-string/jumbo p0, "PhoneWindowManager"

    const-string/jumbo p1, "Not going home because user setup is in progress."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p4, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    sget-object p4, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    goto :goto_0

    :cond_2
    move-object p4, v0

    :goto_0
    if-eqz p4, :cond_5

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "isHomeKeyPressed() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isHomeKeyPressed() Trace\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :cond_5
    :goto_1
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startDockOrHome, Callers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    const-string/jumbo v2, "PhoneWindowManagerExt"

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p4, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p4}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object p4

    if-eqz p4, :cond_7

    if-eqz p3, :cond_6

    :try_start_2
    const-string/jumbo v0, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    :cond_7
    sget-boolean p4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz p4, :cond_8

    const-string/jumbo p4, "PhoneWindowManager"

    const-string/jumbo v0, "startDockOrHome: startReason= "

    invoke-static {v0, p1, p4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p4, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p4

    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(Ljava/lang/String;IIZZ)Z

    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final startKeyguardExitAnimation(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneWindowManager"

    const-string/jumbo v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startKeyguardExitAnimation(JJ)V

    :cond_1
    return-void
.end method

.method public final startedEarlyWakingUp(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startedEarlyWakingUp(I)V

    :cond_0
    return-void
.end method

.method public final startedGoingToSleep(II)V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Started going to sleep... (groupId="

    const-string v1, " why="

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PhoneWindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExternalDesktopMode:I

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    :cond_3
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result p2

    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    const/4 p2, 0x3

    iput p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    :cond_4
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    if-eqz p0, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final startedWakingUp(II)V
    .locals 6

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneWindowManager"

    const-string/jumbo v1, "Started waking up... (groupId="

    const-string v2, " why="

    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const p1, 0x11170

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExternalDesktopMode:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptWakeInteractiveState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    :cond_3
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput v0, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    if-eqz v1, :cond_9

    iput-boolean v0, v1, Lcom/android/server/wm/TspStateController;->mAwake:Z

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    const-string v3, "0"

    const-string v4, "1"

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-eqz v2, :cond_5

    move-object v2, v4

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    const/4 v5, 0x5

    invoke-virtual {v1, v5, v2, p1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    :cond_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-boolean v2, v1, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    if-eqz v2, :cond_7

    move-object v3, v4

    :cond_7
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v1, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TspStateController;->setOrientation(ZZ)V

    :cond_9
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x6f

    if-ne p2, p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    return-void

    :cond_a
    const/4 p1, 0x7

    if-ne p2, p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    :cond_b
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final systemBooted()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v3, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    :cond_0
    iget-object v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v2, v0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {v3, v0, v2}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    if-nez v2, :cond_6

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;Z)V

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    :goto_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    :cond_8
    return-void

    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final systemReady()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v3, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    :goto_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "ModifierShortcutManager"

    :try_start_0
    iget-object v4, v0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1170007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const-string/jumbo v5, "bookmarks"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-ne v6, v3, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string/jumbo v6, "bookmark"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string/jumbo v6, "package"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "class"

    invoke-interface {v4, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "shortcut"

    invoke-interface {v4, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "category"

    invoke-interface {v4, v7, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "shift"

    invoke-interface {v4, v7, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "role"

    invoke-interface {v4, v7, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->Bookmark:[I

    invoke-virtual {v13, v4, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v13, v14, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v13, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v15, :cond_4

    invoke-virtual {v5, v15}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Shortcut required for bookmark with category="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " className="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " role="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " shiftName="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " keycode= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " modifierState= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v7, "true"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    :cond_6
    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v7, v3

    goto :goto_3

    :cond_7
    move v7, v14

    :goto_3
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    new-instance v10, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;

    invoke-direct {v10, v9, v7, v6, v8}, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;-><init>(CZLjava/lang/String;Ljava/lang/String;)V

    move-object v6, v10

    goto :goto_4

    :cond_8
    if-eqz v10, :cond_9

    new-instance v6, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;

    invoke-direct {v6, v9, v7, v10}, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;-><init>(CZLjava/lang/String;)V

    goto :goto_4

    :cond_9
    if-eqz v12, :cond_a

    new-instance v6, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    invoke-direct {v6, v9, v7, v12}, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;-><init>(CZLjava/lang/String;)V

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "adding shortcut "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " shift="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " char="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    new-instance v10, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    const-string v4, "Got exception parsing bookmarks."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    const-class v0, Lcom/android/server/vr/VrManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerService$LocalService;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_b
    const-class v0, Lcom/android/server/DockObserver$DockObserverLocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DockObserver$DockObserverLocalService;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/DockObserver$DockObserverLocalService;->this$0:Lcom/android/server/DockObserver;

    iget v0, v0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput v0, v2, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    :cond_c
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_d

    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    :cond_d
    :try_start_3
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSettings()V

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v4, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    :cond_e
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iput-boolean v3, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_f
    :goto_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    return-void

    :goto_8
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public final toggleNotificationPanel()V
    .locals 4

    const-string/jumbo v0, "togglePanelForDisplay displayId="

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFocusedDisplayId:I

    const-string/jumbo v2, "PhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanelForDisplay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final toggleRecentApps()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "PhoneWindowManager"

    const-string/jumbo v1, "toggleRecentApps"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method public final updateLockScreenTimeout()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    if-eqz v1, :cond_0

    const-string/jumbo p0, "PhoneWindowManager"

    const-string/jumbo v1, "lockNow pending, ignore updating lockscreen timeout"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    iget-object v4, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    iget-object v6, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    iput-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    :cond_3
    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    if-eqz v1, :cond_4

    move v2, v5

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v2, :cond_6

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .locals 9

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "end_button_behavior"

    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const-string/jumbo v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    const-string/jumbo v1, "incall_back_button_behavior"

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    const-string/jumbo v1, "system_navigation_keys_enabled"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    const-string/jumbo v1, "volume_hush_gesture"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    const-string/jumbo v1, "power_button_suppression_delay_after_gesture_wake"

    const/16 v5, 0x320

    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x11102b1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_2
    :goto_1
    const-string/jumbo v1, "wake_gesture_enabled"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v5, v1, :cond_4

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    :cond_4
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    const-string/jumbo v1, "default_input_method"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v5, v1, :cond_6

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    const-string/jumbo v5, "power_button_short_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e016a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const-string/jumbo v5, "power_button_double_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    :goto_5
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    const-string/jumbo v5, "power_button_triple_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0182

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    :goto_6
    const-string/jumbo v5, "power_button_long_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "power_button_very_long_press"

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0188

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-ne v7, v5, :cond_9

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eq v7, v6, :cond_a

    :cond_9
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    :cond_a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "power_button_long_press_duration_ms"

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    const-string/jumbo v5, "key_chord_power_volume_up"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    const-string/jumbo v5, "stem_primary_button_short_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e016c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    const-string/jumbo v5, "stem_primary_button_double_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    const-string/jumbo v5, "stem_primary_button_triple_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0183

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const-string/jumbo v5, "stem_primary_button_long_press"

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110243

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110244

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    const-string/jumbo v5, "stylus_buttons_enabled"

    invoke-static {p1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_b

    move v5, v2

    goto :goto_7

    :cond_b
    move v5, v4

    :goto_7
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v6, v6, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v6, v6, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v6, v5}, Lcom/android/server/input/NativeInputManagerService;->setStylusButtonMotionEventsEnabled(Z)V

    const-string/jumbo v5, "nav_bar_kids_mode"

    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_c

    move p1, v2

    goto :goto_8

    :cond_c
    move p1, v4

    :goto_8
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    if-eq v3, p1, :cond_d

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    move v3, v2

    goto :goto_9

    :cond_d
    move v3, v4

    :goto_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_10

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x111022e

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v0, 0x8

    filled-new-array {v4, v0}, [I

    move-result-object v0

    const/4 v3, 0x6

    filled-new-array {v3, v3}, [I

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    goto :goto_a

    :cond_e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v2, v0, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    goto :goto_a

    :cond_f
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v4, v0, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0, v2, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    :cond_11
    return-void

    :goto_b
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateWakeGestureListenerLp()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final wakeUpFromWakeKey(IJZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const/16 v6, 0x1a

    if-ne p1, v6, :cond_0

    iget-boolean v1, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1, p2, p3, p1, p4}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromKey(JIZ)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_4

    :cond_2
    if-ne p1, v6, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    const/4 p4, 0x6

    move v2, p4

    :goto_1
    if-ne p1, v6, :cond_4

    const-string/jumbo p4, "POWER"

    :goto_2
    move-object v5, p4

    goto :goto_3

    :cond_4
    const-string p4, "KEY("

    const-string v1, ")"

    invoke-static {p1, p4, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :goto_3
    const/4 v1, 0x0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(IIJLjava/lang/String;)V

    :goto_4
    const/4 p2, 0x3

    const/4 p3, 0x0

    if-eq p1, p2, :cond_6

    if-ne p1, v6, :cond_5

    goto :goto_5

    :cond_5
    move p4, p3

    goto :goto_6

    :cond_6
    :goto_5
    move p4, v7

    :goto_6
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    goto :goto_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    iget-wide v0, v0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "shouldWakeUpWithHomeIntent: sleepDurationRealtime= "

    const-string v3, " mWakeUpToLastStateTimeout= "

    invoke-static {v2, v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PhoneWindowManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    if-eqz p4, :cond_a

    if-ne p1, p2, :cond_9

    move p2, v7

    goto :goto_7

    :cond_9
    move p2, p3

    :goto_7
    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Wake from "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p2, v7}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;IZZ)V

    :cond_a
    :goto_8
    return-void
.end method

.method public final wakeUpFromWakeKey(Landroid/view/KeyEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string/jumbo v2, "wakeUpFromWakeKey"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    return-void
.end method
