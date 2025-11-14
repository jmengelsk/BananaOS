.class public final Lcom/android/server/policy/PhoneWindowManagerExt;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

.field public static mIsPressedAltAI:Z


# instance fields
.field public escDialog:Landroid/app/AlertDialog;

.field public mAcceptCallHomeConsumed:Z

.field public mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppSwitchKeyConsumed:Z

.field public mAssistantAppName:Ljava/lang/String;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mBixbyService:Lcom/android/server/policy/BixbyService;

.field public final mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

.field public mBootCompleted:Z

.field public final mBootMsgDialogs:Ljava/util/ArrayList;

.field public mCmdDialog:Landroid/app/AlertDialog;

.field public final mContext:Landroid/content/Context;

.field public mDexKeyguardOccludedChanged:Z

.field public final mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

.field public mDoublePressLaunchComponentName:Landroid/content/ComponentName;

.field public final mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$11;

.field public final mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$11;

.field public mFocusedDisplayId:I

.field public final mFoldSaLock:Ljava/lang/Object;

.field public final mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$17;

.field public mGestureNavBarEnabled:Z

.field public mGlobalActionsByKeyCombnation:Z

.field public mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

.field public mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

.field public mIsAccessibilityShortcutVolupPower:Z

.field public mIsAiKeyDisabled:Z

.field public mIsAiKeyHandled:Z

.field public mIsAnyKeyMode:Z

.field public mIsAvailableDictation:Z

.field public mIsCallOpenDictation:Z

.field public mIsCameraSensorToggleSupported:Z

.field public mIsCustomBugreportWriterEnabled:Z

.field public mIsDoubleTapPremiumWatchOn:Z

.field public mIsDoubleTapToWakeUp:Z

.field public mIsDoubleTapToWakeUpSupported:Z

.field public mIsInteractionControlEnabled:Z

.field public mIsLastGesture3FingerBottom:Z

.field public mIsMicSensorToggleSupported:Z

.field public mIsPogoKeyboardConnected:Z

.field public mIsPowerKeyBlocked:Z

.field public mIsSamsungKeyboard:Z

.field public mIsScreenshotTriggered:Z

.field public mIsSktPhoneRelaxMode:Z

.field public mIsVolumeKeyBlocked:Z

.field public mIsVolumeUpKeyMode:Z

.field public mIsVolumeUpKeyPressed:Z

.field public mIssueTrackerLoggedIn:Z

.field public final mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

.field public mKeyEventInjectionThread:Ljava/lang/Thread;

.field public final mKeyUpTime:[J

.field public mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

.field public final mLock:Ljava/lang/Object;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockTaskFeatures:Landroid/util/SparseIntArray;

.field public mLockTaskModeState:I

.field public final mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

.field public mNavBarImeBtnEnabled:Z

.field public final mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

.field public final mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

.field public mPenInsertIntent:Landroid/content/Intent;

.field public mPenSoundEnabled:Z

.field public mPenSoundFilePath:Ljava/lang/String;

.field public mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

.field public mPenState:I

.field public final mPenType:I

.field public mPenVibrationEnabled:Z

.field public mPendingDexKeyguardOccluded:Z

.field public mPendingDualModeInteractive:I

.field public mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public final mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field public mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field public final mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

.field public mQuadruplePressOnPowerBehavior:I

.field public mQuickLaunchCameraBehavior:I

.field public final mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

.field public mQuintuplePressOnPowerBehavior:I

.field public mReasonLastSecureRemoteLock:Ljava/lang/String;

.field public mScreenOffMemoEnabled:Z

.field public mScreenOffMemoIntent:Landroid/content/Intent;

.field public mScreenshotEnabled:Z

.field public mScreenshotTriggeredTime:J

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field public final mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

.field public mShowKeyboardBtnEnabled:Z

.field public mShownEsc:Z

.field public mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field public final mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

.field public mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

.field public mToast:Landroid/widget/Toast;

.field public mTopActivity:Landroid/content/ComponentName;

.field public mTspStateController:Lcom/android/server/wm/TspStateController;

.field public mTvModeDoublePressEnabled:Z

.field public mTvModeEnabled:Z

.field public final mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

.field public final mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

.field public final mWakeAndUnlockRunning:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

.field public mWakeAndUnlockTriggered:Z

.field public mWakingUpReason:I

.field public final mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xbb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x3f7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x437

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x436

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x55

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x4f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x78

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->escDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCmdDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    const/4 v2, 0x2

    new-array v3, v2, [J

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$11;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$11;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$11;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$11;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$11;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$11;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_bd

    sget v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_USP_LEVEL:I

    rem-int/lit8 v2, v2, 0xa

    goto :goto_be

    :cond_bd
    move v2, v3

    :goto_be
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$17;

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$17;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iput-object p0, p2, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    new-instance p2, Lcom/android/server/policy/KeyCustomizationManager;

    invoke-direct {p2, p1, p0}, Lcom/android/server/policy/KeyCustomizationManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    return-void
.end method

.method public static getApplicationInfoAsUser(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide v1, 0x100000200L

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    const-string/jumbo p0, "PhoneWindowManagerExt"

    const-string/jumbo p1, "can not get applicatino info"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFillInIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "afterKeyguardGone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "ignoreKeyguardState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "dismissIfInsecure"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static isCameraRunning()Z
    .registers 3

    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "isCameraRunning="

    const-string/jumbo v2, "PhoneWindowManagerExt"

    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static saLogForBasic(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo p0, "PhoneWindowManagerExt"

    const-string/jumbo v0, "saLogForBasic - eventId is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;)V

    return-void
.end method

.method public static sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1c

    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "det"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_1c
    :goto_1c
    const-string/jumbo p0, "PhoneWindowManagerExt"

    const-string/jumbo p1, "saLogForBasic - eventId or details are null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addSingleKeyGestureRule(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v1

    const-string/jumbo v2, "PhoneWindowManagerExt"

    if-eqz v1, :cond_13

    const-string p0, "Already added rule of keyCode "

    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 v1, 0x3

    if-eq p1, v1, :cond_6a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_64

    const/16 v1, 0x18

    if-eq p1, v1, :cond_5d

    const/16 v1, 0x19

    if-eq p1, v1, :cond_56

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_4f

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_48

    const/16 v1, 0x3f7

    if-eq p1, v1, :cond_41

    const/16 v1, 0x437

    if-eq p1, v1, :cond_39

    const-string/jumbo p0, "updateSingleKeyGestureRule, keyCode was wrong. "

    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_71

    :cond_39
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    :goto_3f
    move-object p0, p1

    goto :goto_71

    :cond_41
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_3f

    :cond_48
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_3f

    :cond_4f
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_3f

    :cond_56
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_3f

    :cond_5d
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$VolumeUpKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_3f

    :cond_64
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    goto :goto_3f

    :cond_6a
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    goto :goto_3f

    :goto_71
    if-eqz p0, :cond_78

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1, p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    :cond_78
    return-void
.end method

.method public final callDictation(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callDictation, method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants$UriTags;->DICTATION:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public final canDispatchingSystemKeyEvent(I)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result p0

    return p0
.end method

.method public final checkAccessibilityShortcutVolupPowerTriggered()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    if-nez v0, :cond_5

    goto :goto_5b

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_18
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v3, 0x17

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "setAppOpsPermissionIfNeeded code=23 p_name="

    const-string v6, " mode="

    const-string/jumbo v7, "PhoneWindowManagerExt"

    invoke-static {v2, v5, v1, v6, v7}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_3a
    const-string/jumbo v0, "start Accessibility Shortcut Volup + Power"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    if-nez v0, :cond_4d

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    :cond_4d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performAccessibilityDirectAccess()V

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p0, :cond_5b

    const-string p0, "HWB1008"

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final checkKeyCombinationScreenshotChord(IJZ)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    if-nez v2, :cond_a

    goto/16 :goto_a4

    :cond_a
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    if-nez v2, :cond_11

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    return-void

    :cond_11
    const-wide/16 v2, 0x0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    const-string/jumbo v5, "PhoneWindowManagerExt"

    if-eqz p4, :cond_a5

    const/16 v6, 0x1a

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-ne v1, v6, :cond_23

    aput-wide p2, v4, v10

    goto :goto_29

    :cond_23
    const/16 v6, 0x19

    if-ne v1, v6, :cond_29

    aput-wide p2, v4, v8

    :cond_29
    :goto_29
    aget-wide v6, v4, v10

    aget-wide v11, v4, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_8a

    cmp-long v9, v11, v2

    if-nez v9, :cond_36

    goto :goto_8a

    :cond_36
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-wide v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    sub-long v8, v13, v8

    const-wide/16 v15, 0x96

    add-long v17, v6, v15

    cmp-long v1, v13, v17

    if-gtz v1, :cond_6e

    add-long/2addr v15, v11

    cmp-long v1, v13, v15

    if-gtz v1, :cond_6e

    const-wide/16 v13, 0x3e8

    cmp-long v1, v8, v13

    if-gez v1, :cond_6e

    const-string/jumbo v1, "take a screenshot, this is triggered by keyCombination"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v7, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_a5

    const-string v1, "HWB1007"

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto :goto_a5

    :cond_6e
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    if-nez v1, :cond_a5

    sub-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Screenshot by the key combination is not triggered, time="

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :cond_8a
    :goto_8a
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    if-nez v0, :cond_a4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Waiting for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_9c

    const-string/jumbo v1, "power"

    goto :goto_9f

    :cond_9c
    const-string/jumbo v1, "volume down"

    :goto_9f
    const-string v2, " key up event to take a screenshot"

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void

    :cond_a5
    :goto_a5
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    if-eqz v1, :cond_af

    const-string/jumbo v1, "The key combination long press event was consumed by global action"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    const/4 v1, 0x0

    aput-wide v2, v4, v1

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    iput-wide v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    return-void
.end method

.method public final checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I
    .registers 5

    const-string/jumbo v0, "system key requested code="

    const-string/jumbo v1, "PhoneWindowManagerExt"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p2

    if-eqz p2, :cond_38

    iget p2, p2, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 v0, 0x7f8

    if-ne p2, v0, :cond_38

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p2

    if-nez p2, :cond_38

    const-string/jumbo p2, "reason"

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Can not dispatch key event because of expanded status bar, keyCode="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_38
    const-string/jumbo p0, "sec check system key before dispatching, keyCode="

    invoke-static {p1, p0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final clearKeyCustomizationInfoByAction(III)V
    .registers 14

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_12
    if-ge v5, v4, :cond_3d

    aget v7, v3, v5

    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-nez v8, :cond_23

    goto :goto_3b

    :cond_23
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v9, :cond_2c

    goto :goto_3b

    :cond_2c
    iget v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v9, p3, :cond_3b

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v6, -0x1

    invoke-virtual {v1, v7, p2, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    move v6, v0

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_76

    :cond_3b
    :goto_3b
    add-int/2addr v5, v0

    goto :goto_12

    :cond_3d
    if-eqz v6, :cond_42

    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_39

    if-nez v6, :cond_72

    const-string p0, "KeyCustomizationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "clearKeyCustomizationInfoByAction, Requested info is empty. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " keyCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_72
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    return-void

    :goto_76
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_39

    throw p0
.end method

.method public final clearKeyCustomizationInfoByKeyCode(II)V
    .registers 14

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_13
    if-ge v6, v4, :cond_38

    aget v8, v3, v6

    invoke-virtual {v1, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    if-eqz v9, :cond_36

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2a

    goto :goto_36

    :cond_2a
    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v7, -0x1

    invoke-virtual {v1, v8, p2, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    move v7, v0

    goto :goto_36

    :catchall_33
    move-exception p0

    goto/16 :goto_be

    :cond_36
    :goto_36
    add-int/2addr v6, v0

    goto :goto_13

    :cond_38
    if-eqz v7, :cond_3d

    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_33

    if-nez v7, :cond_61

    const-string p0, "KeyCustomizationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "clearKeyCustomizationInfoByKeyCode, Requested info is empty. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " keyCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_61
    const/16 p1, 0x1a

    if-ne p2, p1, :cond_7f

    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v1, p1

    :goto_68
    if-ge v5, v1, :cond_84

    aget v2, p1, v5

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    if-eqz v3, :cond_75

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_75

    goto :goto_7d

    :cond_75
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_7a

    goto :goto_7d

    :cond_7a
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    :goto_7d
    add-int/2addr v5, v0

    goto :goto_68

    :cond_7f
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :cond_84
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p1, :cond_95

    goto :goto_98

    :cond_95
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    :goto_98
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_a9

    goto :goto_b8

    :cond_a9
    iget-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b2

    goto :goto_b4

    :cond_b2
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_b4
    cmp-long p1, v0, p1

    if-nez p1, :cond_b9

    :goto_b8
    return-void

    :cond_b9
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    return-void

    :goto_be
    :try_start_be
    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_33

    throw p0
.end method

.method public final doublePressLaunchPolicy(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "PhoneWindowManagerExt"

    if-nez v1, :cond_13

    const-string/jumbo p0, "double press was blocked because UserSetup isn\'t completed"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo p0, "double press was blocked by OTA status"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string/jumbo p0, "double press was blocked by SimLock"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_39
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSecureRemoteLocked()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "double press was blocked by SecureRemoteLocked("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v0, :cond_70

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_70

    const-string/jumbo p0, "double press was blocked because cover was closed"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_70
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result p0

    if-eqz p0, :cond_92

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "skip double press keyCode("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), requestedSystemKey"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_92
    const/4 p0, 0x0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 14

    const-string v0, "    "

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "--- PhoneWindowManagerExt ---"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "KeyCustomization info state: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_24
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget v3, v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "All KeyCustomizationInfo"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_38
    if-ge v6, v4, :cond_91

    aget v7, v3, v6

    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-nez v9, :cond_47

    goto :goto_8b

    :cond_47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " ---"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_57
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_8b

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_6a

    goto :goto_88

    :cond_6a
    const-string v10, "    "

    const-string v11, "    KEY_CODE("

    invoke-static {p1, v10, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    :goto_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_57

    :cond_8b
    :goto_8b
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :catchall_8e
    move-exception p0

    goto/16 :goto_3fd

    :cond_91
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Last KeyCustomizationInfo"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v4, v3

    move v6, v5

    :goto_a0
    if-ge v6, v4, :cond_c4

    aget v7, v3, v6

    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-nez v9, :cond_af

    goto :goto_c1

    :cond_af
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " ---"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    :goto_c1
    add-int/lit8 v6, v6, 0x1

    goto :goto_a0

    :cond_c4
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_101

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "HotKeys="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v5

    :goto_d8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_101

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    if-nez v7, :cond_eb

    goto :goto_fe

    :cond_eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " KeyCode "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ", componentName: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_fe
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    :cond_101
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13e

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "ownerPackageList:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_11c
    if-ge v6, v4, :cond_13e

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11c

    :cond_13e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "UserId:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    monitor-exit v2
    :try_end_14d
    .catchall {:try_start_24 .. :try_end_14d} :catchall_8e

    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "XmlFileErrorCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "maxMultiPressPowerCount="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mQuadruplePressOnPowerBehavior="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    monitor-enter v1

    :try_start_18a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mFocusedWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "SystemKeyInfo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/policy/SystemKeyManager;->SUPPORT_KEYCODE:[I

    move v3, v5

    :goto_1a4
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1e7

    aget v4, v2, v3

    iget-object v6, v1, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-nez v4, :cond_1b4

    goto :goto_1e4

    :cond_1b4
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1bc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-nez v6, :cond_1cb

    goto :goto_1bc

    :cond_1cb
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "      "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1bc

    :catchall_1e1
    move-exception p0

    goto/16 :goto_3fb

    :cond_1e4
    :goto_1e4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a4

    :cond_1e7
    iget-object v2, v1, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ed
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "META_KEY="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ed

    :cond_20b
    monitor-exit v1
    :try_end_20c
    .catchall {:try_start_18a .. :try_end_20c} :catchall_1e1

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    if-eqz v1, :cond_228

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsScreenshotTriggered="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mGlobalActionsByKeyCombination="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_228
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "bixbyComponentName="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    iget-object v1, v1, Lcom/android/server/policy/BixbyService;->mDefaultComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-eqz v1, :cond_24e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mQuintuplePressOnPowerBehavior="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24e
    const-string v1, " mNavBarVirtualKeyHapticFeedbackEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    const-string/jumbo v2, "cameraSensorToggleSupported="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "micSensorToggleSupported="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    const-string/jumbo v2, "mIsInteractionControlEnabled="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mIsPowerKeyBlocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mIsVolumeKeyBlocked="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    const-string/jumbo v2, "mIsDoubleTapToWakeUpSupported="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mIsDoubleTapToWakeUp="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    const-string/jumbo v2, "mLockTaskModeState="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2c0

    const-string/jumbo v1, "mDexKeyguardOccluded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dexOccluded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    :cond_2c0
    const-string v1, " mDexKeyguardOccludedChanged="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccludedChanged:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mPendingDexKeyguardOccluded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDexKeyguardOccluded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    if-eqz v1, :cond_346

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "SPen state="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " type="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " vibrationEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " soundEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-nez v1, :cond_312

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "SoundInfo is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_346

    :cond_312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "PenSoundInfo attachSoundPath="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " detachSoundPath="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " attachSoundId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " detachSoundId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_346
    :goto_346
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v1, :cond_358

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mScreenOffMemoEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_358
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_FINGERPRINT_SIDE_TOUCH:Z

    if-eqz v1, :cond_372

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mWakeAndUnlockTriggered="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mWakeAndUnfoldedTriggered="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_372
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsPogoKeyboardConnected="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    const-string/jumbo v2, "mIsCallOpenDictation="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mIsAvailableDictation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    const-string/jumbo v2, "mWakingUpReason="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    invoke-static {v1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_3b2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsCalledOpenDictationXCoverTop="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-boolean v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3b2
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    if-eqz v1, :cond_3c4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsDoubleTapPremiumWatchOn="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3c4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReasonLastSecureRemoteLock:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3da

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mReasonLastSecureRemoteLock="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReasonLastSecureRemoteLock:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3da
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsAiKeyDisabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mIsAiKeyHandled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyHandled:Z

    const-string/jumbo v2, "focusedDisplayId="

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFocusedDisplayId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    return-void

    :goto_3fb
    :try_start_3fb
    monitor-exit v1
    :try_end_3fc
    .catchall {:try_start_3fb .. :try_end_3fc} :catchall_1e1

    throw p0

    :goto_3fd
    :try_start_3fd
    monitor-exit v2
    :try_end_3fe
    .catchall {:try_start_3fd .. :try_end_3fe} :catchall_8e

    throw p0
.end method

.method public final externalKeyboardPolicy()Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const/4 v2, 0x1

    if-nez v0, :cond_f

    const-string/jumbo p0, "preCondition : Boot is not completed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_1e

    const-string/jumbo p0, "preCondition : User setup is not completed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo p0, "preCondition : Keyguard is shown"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2b
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-eqz v0, :cond_36

    const-string/jumbo p0, "preCondition : Factory binary"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_36
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo p0, "preCondition : Automatic test mode"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_45
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result p0

    if-eqz p0, :cond_4e

    goto :goto_5a

    :cond_4e
    sget-boolean p0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz p0, :cond_5b

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez p0, :cond_5b

    :goto_5a
    return v2

    :cond_5b
    const/4 p0, 0x0

    return p0
.end method

.method public final getAIPackages()Ljava/util/Set;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/high16 v2, 0xc0000

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda19;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2c
    return-object v0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v0

    return-object p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public final getDisplayIdDesktopWindowingMode(I)I
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return p1

    :cond_b
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFocusedDisplayId:I

    return p0
.end method

.method public final getExternalDisplayContext(I)Landroid/content/Context;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getFreeformLaunchBounds()Landroid/graphics/Rect;
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const/16 v2, 0x64

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_27

    goto :goto_36

    :cond_27
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v4, p0

    const v5, 0x3f333333  # 0.7f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 p0, p0, -0x32

    sub-int/2addr v3, v2

    invoke-direct {v0, v4, v2, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4b

    :cond_36
    :goto_36
    int-to-float v0, v3

    const v2, 0x3e8ccccd  # 0.275f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v2, Landroid/graphics/Rect;

    int-to-float v4, p0

    const v5, 0x3f051eb8  # 0.52f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 p0, p0, -0x32

    sub-int/2addr v3, v0

    invoke-direct {v2, v4, v0, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launch bound for focused display : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Focused display is null, id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    invoke-direct {p0, v2, v2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final getPreferredActivity()Landroid/content/ComponentName;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/high16 v2, 0xc0000

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getVisibleAiTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAIPackages()Ljava/util/Set;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "visibleTask.packageName="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "PhoneWindowManagerExt"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleGlobalInteractiveIfNeeded(II)V
    .registers 6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    and-int v1, v0, p1

    if-nez v1, :cond_7

    goto :goto_22

    :cond_7
    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_12

    goto :goto_22

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    if-eq p1, v1, :cond_48

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2d

    const/16 v1, 0x8

    if-eq p1, v1, :cond_23

    :goto_22
    return-void

    :cond_23
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_2a

    invoke-virtual {p0, p2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(IZ)V

    :cond_2a
    iput v0, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    return-void

    :cond_2d
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_34

    invoke-virtual {p0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    :cond_34
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result p0

    iput p0, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    const/4 p0, 0x3

    iput p0, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    return-void

    :cond_3e
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    :cond_45
    iput v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    return-void

    :cond_48
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_4f

    invoke-virtual {p0, p2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    :cond_4f
    iput v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    return-void
.end method

.method public final handleLongPressOnHomeWithPolicy(Landroid/view/KeyEvent;)Z
    .registers 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->longPressOnHomePolicy()Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_17

    goto :goto_1e

    :cond_17
    move v5, v3

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v8, v3, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v8, :cond_1f

    :goto_1e
    return v9

    :cond_1f
    if-eq v8, v2, :cond_b9

    if-eq v8, v1, :cond_4f

    if-eq v8, v0, :cond_4b

    const/4 v0, 0x4

    if-eq v8, v0, :cond_3f

    const/16 v0, 0x65

    if-eq v8, v0, :cond_3f

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Undefined long press on home behavior: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const-string/jumbo v0, "PhoneWindowManagerExt"

    invoke-static {p1, p0, v0}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v2

    :cond_3f
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-virtual {p0, v9, v2, v5, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZILandroid/view/InputDevice;)V

    return v2

    :cond_4b
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    return v2

    :cond_4f
    const/4 v8, 0x0

    const/4 v5, 0x5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_b8

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_64

    const-string/jumbo p0, "None"

    goto :goto_b2

    :cond_64
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_be

    :goto_71
    move v0, v3

    goto :goto_a0

    :sswitch_73
    const-string/jumbo v1, "com.sec.android.app.launcher/.search.SearchActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a0

    goto :goto_71

    :sswitch_7d
    const-string/jumbo v0, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    goto :goto_71

    :cond_87
    move v0, v1

    goto :goto_a0

    :sswitch_89
    const-string/jumbo v0, "com.samsung.android.bixby.agent/.mainui.voiceinteraction.MainVoiceInteractionService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto :goto_71

    :cond_93
    move v0, v2

    goto :goto_a0

    :sswitch_95
    const-string/jumbo v0, "com.sec.android.app.sbrowser/.SBrowserMainActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    goto :goto_71

    :cond_9f
    move v0, v9

    :cond_a0
    :goto_a0
    packed-switch v0, :pswitch_data_d0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    goto :goto_b2

    :pswitch_a6  #0x3
    const-string p0, "Finder"

    goto :goto_b2

    :pswitch_a9  #0x2
    const-string p0, "Google assistant"

    goto :goto_b2

    :pswitch_ac  #0x1
    const-string p0, "Bixby voice"

    goto :goto_b2

    :pswitch_af  #0x0
    const-string/jumbo p0, "Samsung internet"

    :goto_b2
    const-string/jumbo p1, "NAVIB1003"

    invoke-static {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    return v2

    :cond_b9
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return v2

    nop

    :sswitch_data_be
    .sparse-switch
        -0x58668b19 -> :sswitch_95
        -0x2235b7cf -> :sswitch_89
        0x303d0d00 -> :sswitch_7d
        0x6492b988 -> :sswitch_73
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_af  #00000000
        :pswitch_ac  #00000001
        :pswitch_a9  #00000002
        :pswitch_a6  #00000003
    .end packed-switch
.end method

.method public final handleLongPressOnRecent()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v2, 0x4

    const/16 v3, 0xbb

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    if-ne v1, v2, :cond_e

    goto :goto_40

    :cond_e
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-eqz p0, :cond_37

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_37

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_37

    :try_start_22
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "Unable to reach activity manager"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :cond_37
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p0

    if-nez p0, :cond_40

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_40
    :goto_40
    return-void
.end method

.method public final hasRequestedActionBlockKeyEvent(IIZ)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    const-string v1, "Key was blocked by KeyCustomizationPolicy. keyCode="

    const-string/jumbo v2, "PhoneWindowManagerExt"

    invoke-static {p1, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_34

    if-nez p2, :cond_34

    iget p1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_34

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1040764

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_34
    const/4 p0, 0x2

    return p0

    :cond_36
    return v1
.end method

.method public final hasSingleKeyRule(I)Z
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1f

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x437

    if-eq p1, v0, :cond_1f

    goto :goto_2b

    :cond_1f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final init()V
    .registers 4

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->init(Lcom/android/server/policy/PhoneWindowManagerExt$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManagerExt$Injector;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-direct {v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "default_input_method"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda19;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v4, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v6, 0x6

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v4, "show_keyboard_button"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v6, 0x7

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v4, "navigation_mode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    if-eqz v4, :cond_9d

    const-string/jumbo v5, "pen_attach_detach_vibration"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v7, 0x9

    invoke-direct {v6, v2, v3, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v5, "spen_feedback_sound"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v7, 0xb

    invoke-direct {v6, v2, v3, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v5, "pen_detachment_notification"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_9d
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v5, :cond_b2

    const-string/jumbo v6, "screen_off_memo"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v8, 0xc

    invoke-direct {v7, v2, v3, v8}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v6, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_b2
    sget-boolean v6, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v6, :cond_c2

    const-string/jumbo v6, "double_tab_launch"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v6, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_c2
    sget-boolean v6, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    const-string/jumbo v7, "double_tab_launch_component"

    const-string/jumbo v8, "pwrkey_owner_status"

    const-string/jumbo v9, "tvmode_state"

    if-eqz v6, :cond_ea

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_ea
    const-string/jumbo v10, "anykey_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xd

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_SKT_PHONE_RELAX_MODE:Z

    if-eqz v10, :cond_110

    const-string/jumbo v10, "skt_phone20_relax_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xe

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_110
    const-string/jumbo v10, "access_control_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xa

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v10, "access_control_power_button"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xf

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v10, "access_control_volume_button"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x10

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v10, "double_tab_to_wake_up"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x11

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v10, :cond_169

    const-string/jumbo v10, "active_key_on_lockscreen"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x12

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_169
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v10, :cond_17e

    const-string/jumbo v10, "xcover_top_key_on_lockscreen"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x13

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_17e
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    if-eqz v10, :cond_193

    const-string/jumbo v10, "premium_tap_for_watch_face_switch_on_off"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x14

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_193
    const-string/jumbo v10, "ai_key_disable"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x15

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v10, :cond_1b9

    const-string/jumbo v10, "assistant"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x16

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_1b9
    const-string/jumbo v10, "sip_voice_input_use_side_key"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x1

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v10, "development_custom_bugreport_writer"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x2

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    const-string/jumbo v10, "issuetracker_logged_in"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x3

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_CHN_PREMIUM_WATCH:Z

    if-eqz v10, :cond_1fd

    const-string/jumbo v10, "premium_watch_switch_onoff"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x4

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    :cond_1fd
    const-string/jumbo v10, "volumekey_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x5

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_234

    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_21f

    move v6, v3

    goto :goto_220

    :cond_21f
    move v6, v10

    :goto_220
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    invoke-static {v2, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_22a

    move v6, v3

    goto :goto_22b

    :cond_22a
    move v6, v10

    :goto_22b
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressLaunchInfo(Ljava/lang/String;)V

    :cond_234
    new-instance v14, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v14, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    move-object/from16 v13, v17

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-nez v2, :cond_257

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v2, :cond_26d

    :cond_257
    const-string/jumbo v2, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v18

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/16 v21, 0x2

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_26d
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "package"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/16 v21, 0x2

    move-object/from16 v18, v2

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    invoke-virtual {v8, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v2, :cond_2b5

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/4 v8, 0x2

    invoke-direct {v7, v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt$3;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2b5
    const-string/jumbo v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    const-string/jumbo v6, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-static {v2, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v18

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$3;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    const/4 v6, 0x2

    if-eqz v2, :cond_2e2

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.samsung.android.intent.action.WINNER_LOGGING"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$17;

    invoke-virtual {v7, v8, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_2e2
    if-eqz v4, :cond_306

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.pen.INSERT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const/high16 v4, 0x1000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v5, :cond_306

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.app.notes/com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_306
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/server/policy/SystemKeyManager;->getInstance()Lcom/android/server/policy/SystemKeyManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    new-instance v2, Lcom/android/server/policy/BixbyService;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v4}, Lcom/android/server/policy/BixbyService;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v1, :cond_32e

    const/16 v1, 0x66

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    :cond_32e
    new-instance v1, Lcom/android/server/policy/KeyboardShortcutManager;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v0}, Lcom/android/server/policy/KeyboardShortcutManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v4

    const-string/jumbo v5, "privacy"

    if-eqz v4, :cond_35c

    const-string/jumbo v4, "camera_toggle_enabled"

    invoke-static {v5, v4, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_35c

    move v4, v3

    goto :goto_35d

    :cond_35c
    move v4, v10

    :goto_35d
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    invoke-virtual {v1, v3}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v1

    if-eqz v1, :cond_36f

    const-string/jumbo v1, "mic_toggle_enabled"

    invoke-static {v5, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_36f

    move v10, v3

    :cond_36f
    iput-boolean v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$15;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-virtual {v1, v2, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-string/jumbo v1, "persist.service.esc.dialog"

    const-string/jumbo v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-void
.end method

.method public final injectionKeyEvent(III)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;-><init>(III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_16

    const/4 v7, 0x1

    goto :goto_17

    :cond_16
    const/4 v7, 0x0

    :goto_17
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    const/high16 v11, 0x20000000

    and-int v11, p3, v11

    if-eqz v11, :cond_23

    const/4 v11, 0x1

    goto :goto_24

    :cond_23
    const/4 v11, 0x0

    :goto_24
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    filled-new-array {v13}, [I

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v13

    new-instance v14, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-interface {v13, v14}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v13

    if-eqz v13, :cond_40

    goto :goto_44

    :cond_40
    invoke-virtual {v0, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayIdDesktopWindowingMode(I)I

    move-result v12

    :goto_44
    if-eqz v7, :cond_4a

    if-nez v6, :cond_4a

    const/4 v13, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v13, 0x0

    :goto_4b
    if-eqz v13, :cond_5d

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v14

    if-eqz v14, :cond_5d

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v14}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v14

    if-nez v14, :cond_5d

    const/4 v14, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v14, 0x0

    :goto_5e
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v15}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v15

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v16

    sget-boolean v17, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-nez v17, :cond_7f

    sget-object v18, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    const/16 v19, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v8, v18

    check-cast v8, Landroid/util/ArraySet;

    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    goto :goto_81

    :cond_7f
    const/16 v19, 0x1

    :goto_81
    const-string/jumbo v4, "PhoneWindowManagerExt"

    const-string/jumbo v8, "interceptKeyTi code="

    const-string v10, " down="

    const-string v3, " repeatCount="

    invoke-static {v5, v8, v10, v3, v7}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " displayId="

    const-string v10, " interactive="

    invoke-static {v6, v12, v8, v10, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v4, v3, v11}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_99
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    const-wide/16 v20, -0x1

    if-eqz v3, :cond_a5

    goto/16 :goto_148

    :cond_a5
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_b1

    const/4 v4, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v4, 0x0

    :goto_b2
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v8

    if-nez v8, :cond_bc

    goto/16 :goto_148

    :cond_bc
    const/16 v8, 0x43c

    const/16 v10, 0x33

    if-ne v3, v8, :cond_c5

    if-nez v4, :cond_c5

    goto :goto_dd

    :cond_c5
    if-ne v3, v10, :cond_148

    if-eqz v4, :cond_148

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_148

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v4

    if-nez v4, :cond_148

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_148

    :goto_dd
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v1, :cond_126

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->canInternalDisplayHostDesktops(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f2

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f2

    goto :goto_126

    :cond_f2
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    const-string/jumbo v2, "PhoneWindowManagerExt"

    if-nez v1, :cond_104

    const-string/jumbo v0, "enableOrDisableDexMode : User setup is not completed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :cond_104
    :try_start_104
    const-string/jumbo v1, "content://com.sec.android.app.launcher.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "toggle_dex"

    const-string v5, ""

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_11e
    .catch Ljava/lang/NullPointerException; {:try_start_104 .. :try_end_11e} :catch_11f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_104 .. :try_end_11e} :catch_11f

    goto :goto_137

    :catch_11f
    const-string/jumbo v0, "toggleDesktopWindowing, provider not ready."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    :cond_126
    :goto_126
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mKeyEventListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_12b
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mKeyEventListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v4
    :try_end_137
    .catchall {:try_start_12b .. :try_end_137} :catchall_145

    :goto_137
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    if-ne v3, v10, :cond_ae1

    const-string/jumbo v0, "PKBD0018"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :catchall_145
    move-exception v0

    :try_start_146
    monitor-exit v4
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    throw v0

    :cond_148
    :goto_148
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_159

    const/4 v8, 0x1

    goto :goto_15a

    :cond_159
    const/4 v8, 0x0

    :goto_15a
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move/from16 v22, v7

    iget-object v7, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    move/from16 v23, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1ea

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v7

    const-string v8, "KeyboardShortcutManager"

    move/from16 v24, v9

    if-eqz v14, :cond_18a

    const/high16 v9, 0x10000

    invoke-static {v7, v9}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v7

    if-eqz v7, :cond_18a

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    const-string/jumbo v7, "interceptKeyTi, triggered"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_190

    :cond_18a
    iget-boolean v7, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    if-nez v7, :cond_190

    :cond_18e
    :goto_18e
    const/4 v3, 0x0

    goto :goto_1f6

    :cond_190
    :goto_190
    if-eqz v10, :cond_195

    iget-boolean v3, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    goto :goto_1f6

    :cond_195
    if-nez v23, :cond_1a4

    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    iget-boolean v7, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    if-eqz v7, :cond_18e

    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    :goto_1a2
    const/4 v3, 0x1

    goto :goto_1f6

    :cond_1a4
    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c3

    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->IS_DEBUGGABLE:Z

    if-nez v9, :cond_1c3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1c3

    const-string/jumbo v3, "is from VIRTUAL_KEYBOARD"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    :cond_1c3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string/jumbo v10, "shortcutSetting("

    if-eqz v9, :cond_1d2

    const-string v3, ") has no shortcut"

    invoke-static {v4, v10, v3, v8}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18e

    :cond_1d2
    const-string/jumbo v9, "None"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e1

    const-string v3, ") is none"

    invoke-static {v4, v10, v3, v8}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a2

    :cond_1e1
    invoke-static {v4, v7}, Lcom/android/server/policy/KeyboardShortcutManager;->determineLaunchType(ILjava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v4, v12, v8, v7}, Lcom/android/server/policy/KeyboardShortcutManager;->launchCustomizationShortcut(IIILjava/lang/String;)Z

    move-result v3

    goto :goto_1f6

    :cond_1ea
    move/from16 v24, v9

    if-eqz v23, :cond_18e

    if-nez v10, :cond_18e

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    iput-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    goto :goto_18e

    :goto_1f6
    if-eqz v3, :cond_1fa

    goto/16 :goto_ae1

    :cond_1fa
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const-string/jumbo v4, "PhoneWindowManagerExt"

    const/4 v9, 0x4

    packed-switch v3, :pswitch_data_ae6

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    if-nez v10, :cond_215

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    const/4 v7, 0x1

    const-wide/16 v25, 0x0

    if-le v10, v7, :cond_232

    goto :goto_217

    :cond_215
    const-wide/16 v25, 0x0

    :goto_217
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v7, v7, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v9, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    if-eqz v3, :cond_232

    iget v3, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v3, v9, :cond_232

    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    if-eqz v17, :cond_22f

    const-string/jumbo v3, "dispatchKeyEvent:long press, NO_DISPATCHING"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22f
    :goto_22f
    move-wide/from16 v3, v20

    goto :goto_28b

    :cond_232
    move-wide/from16 v3, v25

    goto :goto_28b

    :pswitch_235  #0x440
    const/4 v7, 0x1

    const-wide/16 v25, 0x0

    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    goto :goto_22f

    :pswitch_23b  #0x43d, 0x43e, 0x43f, 0x441
    const-wide/16 v25, 0x0

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v7

    if-nez v7, :cond_246

    goto :goto_273

    :cond_246
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sendThreeFingerGestureKeyEvent keyCode="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "StatusBarManagerService"

    const-string/jumbo v8, "sendThreeFingerGestureKeyEvent"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v7, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v4, :cond_26c

    goto :goto_273

    :cond_26c
    :try_start_26c
    iget-object v4, v7, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v4, v2}, Lcom/android/internal/statusbar/IStatusBar;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_273
    .catch Landroid/os/RemoteException; {:try_start_26c .. :try_end_273} :catch_273

    :catch_273
    :goto_273
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    if-eqz v4, :cond_287

    const/16 v4, 0x441

    if-ne v3, v4, :cond_287

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v2, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_288

    :cond_287
    const/4 v7, 0x0

    :goto_288
    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    goto :goto_22f

    :goto_28b
    cmp-long v7, v3, v25

    if-eqz v7, :cond_2a5

    const-string/jumbo v0, "PhoneWindowManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "interceptKeyTi checkPolicyBeforeDispatching return="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    :cond_2a5
    const/4 v3, 0x3

    if-eq v5, v3, :cond_a73

    const/high16 v4, 0x10000000

    if-eq v5, v9, :cond_a58

    const/16 v7, 0x18

    if-eq v5, v7, :cond_843

    const/16 v7, 0x19

    if-eq v5, v7, :cond_843

    const/16 v8, 0x31

    const/4 v10, 0x0

    if-eq v5, v8, :cond_a00

    const/16 v3, 0x32

    if-eq v5, v3, :cond_9c5

    const/16 v3, 0x34

    if-eq v5, v3, :cond_6f0

    const/16 v8, 0x35

    if-eq v5, v8, :cond_945

    sparse-switch v5, :sswitch_data_af4

    packed-switch v5, :pswitch_data_b42

    packed-switch v5, :pswitch_data_b4c

    packed-switch v5, :pswitch_data_b56

    goto/16 :goto_ae2

    :pswitch_2d3  #0x44a
    :sswitch_2d3
    const/4 v7, 0x1

    goto/16 :goto_846

    :pswitch_2d6  #0x449
    if-eqz v13, :cond_ae2

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "launch view notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    return-wide v20

    :pswitch_2e7  #0x445, 0x446, 0x447, 0x448
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    goto/16 :goto_ae1

    :pswitch_2ef  #0x442, 0x443, 0x444
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    if-nez v1, :cond_2fa

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    :cond_2fa
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v1, :cond_308

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_308

    goto/16 :goto_ae1

    :cond_308
    if-eqz v13, :cond_32c

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iput v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_ae1

    :cond_32c
    if-nez v22, :cond_ae1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    if-nez v1, :cond_336

    goto/16 :goto_ae1

    :cond_336
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_34b
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    monitor-exit v2
    :try_end_354
    .catchall {:try_start_34b .. :try_end_354} :catchall_3c3

    if-nez v1, :cond_36d

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string v2, "Can not launch hotkey app. The package info is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ae1

    :cond_36d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_395

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_395
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a2

    const/4 v4, 0x0

    goto :goto_3a9

    :cond_3a2
    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move/from16 v4, v19

    :goto_3a9
    if-eqz v4, :cond_3ad

    goto/16 :goto_ae1

    :cond_3ad
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v12, v4, v1}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_ae1

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v2, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->saLogging(ILjava/lang/String;Z)V

    goto/16 :goto_ae1

    :catchall_3c3
    move-exception v0

    :try_start_3c4
    monitor-exit v2
    :try_end_3c5
    .catchall {:try_start_3c4 .. :try_end_3c5} :catchall_3c3

    throw v0

    :pswitch_3c6  #0x3ec
    const/4 v7, 0x1

    if-nez v22, :cond_ae1

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_ae1

    if-eqz v11, :cond_ae1

    const/4 v10, -0x1

    if-ne v12, v10, :cond_3d7

    const/4 v12, 0x0

    :cond_3d7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x1

    move v10, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0032"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :pswitch_3ee  #0x3eb
    if-eqz v13, :cond_ae1

    if-nez v15, :cond_ae1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_ae1

    :try_start_3fa
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_3fd
    .catch Landroid/os/RemoteException; {:try_start_3fa .. :try_end_3fd} :catch_3ff

    goto/16 :goto_ae1

    :catch_3ff
    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string v1, "Failed to toggle Quick Panel"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae1

    :pswitch_409  #0x3ea
    if-eqz v13, :cond_ae2

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_ae2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-wide v20

    :pswitch_417  #0x25
    if-eqz v14, :cond_ae2

    if-nez v15, :cond_ae2

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_ae2

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showSystemSettings()V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_ae1

    const-string/jumbo v1, "PKBD0061"

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ae1

    :pswitch_438  #0x24
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    if-eqz v3, :cond_ae2

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v3

    if-nez v3, :cond_ae2

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v2, :cond_ae1

    if-eqz v1, :cond_ae1

    if-eqz v22, :cond_ae1

    if-nez v6, :cond_ae1

    const-string/jumbo v1, "PKBD0060"

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ae1

    :pswitch_464  #0x23
    if-eqz v14, :cond_ae2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    const/4 v5, 0x2

    invoke-virtual {v0, v12, v5, v10}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae2

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0010"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_47b
    const/4 v7, 0x1

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-nez v1, :cond_4a6

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_487

    goto :goto_4a6

    :cond_487
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v1

    if-nez v1, :cond_ae2

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_49b

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    move-result v1

    if-nez v1, :cond_49b

    goto/16 :goto_ae1

    :cond_49b
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v0

    if-ne v0, v7, :cond_ae2

    goto/16 :goto_ae1

    :cond_4a6
    :goto_4a6
    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string v1, "Block Dispatching TopKey because of Factory mode or test."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae2

    :sswitch_4b0
    const/4 v7, 0x1

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result v2

    if-eqz v2, :cond_4c0

    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    :goto_4be
    int-to-long v0, v0

    return-wide v0

    :cond_4c0
    if-nez v22, :cond_ae1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v12, v7, v10}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_ae1

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0033"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_4d6
    if-nez v22, :cond_ae1

    if-nez v15, :cond_ae1

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_ae1

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string v2, "KEYCODE_MULTI_WINDOW key input"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_ae1

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_ae1

    :try_start_4fd
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleSplitScreen()V
    :try_end_500
    .catch Landroid/os/RemoteException; {:try_start_4fd .. :try_end_500} :catch_ae1

    goto/16 :goto_ae1

    :sswitch_502
    const/4 v7, 0x1

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-nez v1, :cond_52d

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_50e

    goto :goto_52d

    :cond_50e
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v1

    if-nez v1, :cond_ae2

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_522

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v1, v5}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    move-result v1

    if-nez v1, :cond_522

    goto/16 :goto_ae1

    :cond_522
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v0

    if-ne v0, v7, :cond_ae2

    goto/16 :goto_ae1

    :cond_52d
    :goto_52d
    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string v1, "Block Dispatching XCoverKey because of Factory mode or test."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae2

    :sswitch_537
    const/4 v7, 0x1

    if-eqz v13, :cond_ae2

    if-eqz v16, :cond_ae2

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    if-eqz v1, :cond_549

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string v1, "Ignoring AI Hot Key(F23) - AI Key is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v20

    :cond_549
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz v1, :cond_5c6

    iget-object v1, v1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {v1}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55f

    :cond_55d
    const/4 v10, 0x0

    goto :goto_58e

    :cond_55f
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_567
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x75

    if-ne v4, v5, :cond_567

    if-eq v4, v3, :cond_55d

    move v10, v7

    :goto_58e
    if-eqz v10, :cond_5c6

    const-string/jumbo v1, "persist.service.cmd.dialog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5bc

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "persist.service.cmd.dialog"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->closeSystemDialogs()V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5bc
    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v2, "press KEYCODE_F23 with remapped CMD "

    invoke-static {v1, v2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v20

    :cond_5c6
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPressedAltAI:Z

    if-eqz v1, :cond_5d5

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "dispatching because already pressed Alt AI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae2

    :cond_5d5
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPreferredActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_614

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPressedAltAI:Z

    if-nez v2, :cond_614

    sput-boolean v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPressedAltAI:Z

    const-string/jumbo v2, "PhoneWindowManagerExt"

    const-string/jumbo v3, "alt pressed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "aihotkey"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->makeBasicIntent(Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "PhoneWindowManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "show ResolverActivity with alt, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    return-wide v20

    :cond_614
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "is_alt_press"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getVisibleAiTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_64b

    const-string/jumbo v0, "PhoneWindowManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove taskId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_639
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_642
    .catch Landroid/os/RemoteException; {:try_start_639 .. :try_end_642} :catch_644

    goto/16 :goto_ae1

    :catch_644
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_64b
    const-string/jumbo v3, "PhoneWindowManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start ai activity directly, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    goto/16 :goto_ae1

    :sswitch_665
    const/4 v7, 0x1

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result v3

    if-eqz v3, :cond_675

    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    goto/16 :goto_4be

    :cond_675
    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v1

    if-nez v1, :cond_687

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v1

    if-ne v1, v7, :cond_687

    goto/16 :goto_ae1

    :cond_687
    if-eqz v13, :cond_694

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-nez v1, :cond_694

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    :cond_694
    if-eqz v22, :cond_ae2

    if-eqz v6, :cond_ae2

    if-eqz v24, :cond_ae2

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-nez v1, :cond_6a4

    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    :cond_6a4
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1, v5, v9}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result v1

    if-eqz v1, :cond_6b7

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "skip long press recent, requestedSystemKey"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae2

    :cond_6b7
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent()V

    goto/16 :goto_ae2

    :sswitch_6bc
    const/16 v1, 0xb0

    if-ne v5, v1, :cond_ae2

    if-eqz v13, :cond_ae2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v12, v9, v10}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae2

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0034"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_6d6
    if-eqz v13, :cond_ae2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    if-nez v0, :cond_6e0

    goto/16 :goto_ae2

    :cond_6e0
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManager;->forceFadeIcon(I)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae2

    const-string/jumbo v0, "PKBD0002"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae2

    :cond_6f0
    :sswitch_6f0
    const/4 v7, 0x1

    goto/16 :goto_95f

    :sswitch_6f3
    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_ae2

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v1

    if-nez v1, :cond_ae2

    if-eqz v22, :cond_ae1

    const/4 v10, -0x1

    if-ne v12, v10, :cond_709

    const/4 v3, 0x0

    goto :goto_70a

    :cond_709
    move v3, v12

    :goto_70a
    if-eq v12, v7, :cond_718

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    move-result v1

    if-eq v1, v10, :cond_718

    const/16 v10, 0x64

    move v1, v10

    goto :goto_719

    :cond_718
    move v1, v7

    :goto_719
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0004"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_72f
    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_753

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_753

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Test)"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_753

    move v10, v7

    goto :goto_754

    :cond_753
    const/4 v10, 0x0

    :goto_754
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_765

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-eqz v1, :cond_765

    goto :goto_766

    :cond_765
    const/4 v7, 0x0

    :goto_766
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    if-nez v1, :cond_784

    const-string/jumbo v1, "persist.service.esc.dialog"

    const-string/jumbo v3, "null"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string v3, "EscPopup keyboardType "

    invoke-static {v3, v1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_784
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    if-nez v1, :cond_7bd

    invoke-virtual {v2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7bd

    if-nez v10, :cond_7bd

    if-eqz v7, :cond_7bd

    const/high16 v1, 0x1000000

    and-int v1, p3, v1

    if-nez v1, :cond_7bd

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "settings_new_keyboard_modifier_key"

    invoke-static {v1, v3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7bd

    const-string/jumbo v1, "persist.service.esc.dialog"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->closeSystemDialogs()V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    move/from16 v3, v19

    invoke-direct {v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v20

    :cond_7bd
    if-eqz v22, :cond_ae2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_ae2

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v1

    if-nez v1, :cond_ae2

    if-eqz v16, :cond_831

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "Open Task Manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_818

    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayIdDesktopWindowingMode(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v2

    const-string/jumbo v4, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_825

    :cond_818
    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_825
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0006"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :cond_831
    const/16 v1, 0x52

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0005"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :cond_843
    :sswitch_843
    const/4 v7, 0x1

    goto/16 :goto_a16

    :goto_846
    const/16 v1, 0x2d

    if-ne v5, v1, :cond_84e

    if-eqz v14, :cond_84e

    move v8, v7

    goto :goto_84f

    :cond_84e
    const/4 v8, 0x0

    :goto_84f
    const/16 v1, 0x44a

    if-ne v5, v1, :cond_855

    if-nez v13, :cond_857

    :cond_855
    if-eqz v8, :cond_ae2

    :cond_857
    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "launch quick setting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_ae1

    :try_start_868
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFocusedDisplayId:I

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelForDisplay(I)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    if-eqz v8, :cond_87d

    const-string/jumbo v0, "PKBD0014"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :catch_87b
    move-exception v0

    goto :goto_885

    :cond_87d
    const-string/jumbo v0, "PKBD0034"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V
    :try_end_883
    .catch Landroid/os/RemoteException; {:try_start_868 .. :try_end_883} :catch_87b

    goto/16 :goto_ae1

    :goto_885
    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string v2, "Failed to launch Quick Setting, "

    invoke-static {v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_88f
    if-eqz v14, :cond_ae2

    if-eqz v16, :cond_8ad

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "window locked by metaShift with L"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v10}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0035"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :cond_8ad
    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v3, "screen is off by meta with L"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v7, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0013"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_8ce
    if-eqz v14, :cond_ae2

    if-nez v15, :cond_ae2

    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v3, "go to home by meta key"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v2

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_ae1

    const-string/jumbo v1, "PKBD0008"

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutForKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_905
    const/4 v7, 0x1

    if-eqz v14, :cond_ae2

    if-eqz v16, :cond_ae2

    invoke-virtual {v0, v7, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->sensorToggleBehavior(II)Z

    move-result v0

    if-nez v0, :cond_912

    goto/16 :goto_ae2

    :cond_912
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0023"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :sswitch_91e
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSecureRemoteLocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_932

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_ae2

    :cond_932
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    goto/16 :goto_ae1

    :sswitch_936
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result v2

    if-eqz v2, :cond_ae2

    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    goto/16 :goto_4be

    :cond_945
    const/4 v4, 0x0

    if-eqz v14, :cond_ae2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    const-string/jumbo v1, "com.samsung.android.smartmirroring/com.samsung.android.smartmirroring.CastingActivity"

    invoke-virtual {v0, v12, v4, v1}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae2

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0020"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :goto_95f
    const/16 v1, 0x86

    if-ne v5, v1, :cond_96d

    if-eqz v22, :cond_96d

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_96d

    move v8, v7

    goto :goto_96e

    :cond_96d
    const/4 v8, 0x0

    :goto_96e
    if-nez v8, :cond_97c

    if-ne v5, v3, :cond_ae2

    if-eqz v14, :cond_ae2

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v1

    if-nez v1, :cond_ae2

    :cond_97c
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-eq v1, v7, :cond_9b5

    const/4 v5, 0x2

    if-ne v1, v5, :cond_984

    goto :goto_9b5

    :cond_984
    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "finish focused window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_ae1

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    if-eqz v8, :cond_9ad

    const-string/jumbo v0, "PKBD0003"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :cond_9ad
    const-string/jumbo v0, "PKBD0019"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :cond_9b5
    :goto_9b5
    const-string/jumbo v1, "PhoneWindowManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t finish focused window in LockTaskMode. mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-wide v20

    :cond_9c5
    const/4 v7, 0x1

    if-eqz v14, :cond_ae2

    if-eqz v16, :cond_9df

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->sensorToggleBehavior(II)Z

    move-result v0

    if-nez v0, :cond_9d3

    goto/16 :goto_ae2

    :cond_9d3
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0022"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :cond_9df
    const-string/jumbo v1, "PhoneWindowManagerExt"

    const-string/jumbo v2, "launch volume panel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v7}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0017"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :cond_a00
    if-eqz v14, :cond_ae2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    invoke-virtual {v0, v12, v3, v10}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae2

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_ae1

    const-string/jumbo v0, "PKBD0016"

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto/16 :goto_ae1

    :goto_a16
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_a1f

    goto/16 :goto_ae2

    :cond_a1f
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v1

    if-eqz v1, :cond_a4e

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v1, v9, v5}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v1

    if-nez v1, :cond_ae1

    if-eqz v24, :cond_a48

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v2, v8, v9, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    :cond_a48
    if-nez v24, :cond_ae2

    if-le v6, v7, :cond_ae1

    goto/16 :goto_ae2

    :cond_a4e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0, v2, v7}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v0

    if-ne v0, v7, :cond_ae2

    goto/16 :goto_ae1

    :cond_a58
    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_a62

    goto/16 :goto_ae2

    :cond_a62
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v1

    if-nez v1, :cond_ae2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v0

    if-ne v0, v7, :cond_ae2

    goto/16 :goto_ae1

    :cond_a73
    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    if-nez v6, :cond_a7a

    goto :goto_ac0

    :cond_a7a
    const-string/jumbo v6, "PhoneWindowManagerExt"

    if-eqz v22, :cond_ab5

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    if-eqz v4, :cond_ac0

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_ac0

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SKT_PHONE_RELAX_MODE:Z

    if-eqz v4, :cond_a97

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    if-nez v4, :cond_ac0

    :cond_a97
    const-string/jumbo v4, "ringing: Accept the call!"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-static {v4}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/telecom/SemTelecomManager;

    if-nez v4, :cond_aa9

    :goto_aa7
    const/4 v4, 0x1

    goto :goto_aad

    :cond_aa9
    invoke-virtual {v4, v3}, Lcom/samsung/android/telecom/SemTelecomManager;->acceptRingingCall(I)V

    goto :goto_aa7

    :goto_aad
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    const-string v8, "Ignoring HOME; there\'s a ringing incoming call and set anykey mode"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac1

    :cond_ab5
    const/4 v4, 0x1

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    if-eqz v8, :cond_ac0

    const-string v8, "Ignoring HOME; consumed by accept call."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac1

    :cond_ac0
    :goto_ac0
    const/4 v4, 0x0

    :goto_ac1
    if-eqz v4, :cond_ac4

    goto :goto_ae1

    :cond_ac4
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    move-result v4

    if-eqz v4, :cond_ad3

    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    move-result v0

    goto/16 :goto_4be

    :cond_ad3
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    move-result v1

    if-nez v1, :cond_ae2

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result v0

    if-ne v0, v7, :cond_ae2

    :catch_ae1
    :cond_ae1
    :goto_ae1
    return-wide v20

    :cond_ae2
    :goto_ae2
    const-wide/16 v0, -0x2

    return-wide v0

    nop

    :pswitch_data_ae6
    .packed-switch 0x43d
        :pswitch_23b  #0000043d
        :pswitch_23b  #0000043e
        :pswitch_23b  #0000043f
        :pswitch_235  #00000440
        :pswitch_23b  #00000441
    .end packed-switch

    :sswitch_data_af4
    .sparse-switch
        0x6 -> :sswitch_936
        0x1b -> :sswitch_91e
        0x1d -> :sswitch_905
        0x20 -> :sswitch_8ce
        0x28 -> :sswitch_88f
        0x2d -> :sswitch_2d3
        0x4f -> :sswitch_843
        0x6f -> :sswitch_72f
        0x78 -> :sswitch_6f3
        0x86 -> :sswitch_6f0
        0x89 -> :sswitch_6d6
        0xb0 -> :sswitch_6bc
        0xbb -> :sswitch_665
        0xe0 -> :sswitch_936
        0x150 -> :sswitch_537
        0x3f7 -> :sswitch_502
        0x425 -> :sswitch_4d6
        0x428 -> :sswitch_4b0
        0x437 -> :sswitch_47b
    .end sparse-switch

    :pswitch_data_b42
    .packed-switch 0x23
        :pswitch_464  #00000023
        :pswitch_438  #00000024
        :pswitch_417  #00000025
    .end packed-switch

    :pswitch_data_b4c
    .packed-switch 0x3ea
        :pswitch_409  #000003ea
        :pswitch_3ee  #000003eb
        :pswitch_3c6  #000003ec
    .end packed-switch

    :pswitch_data_b56
    .packed-switch 0x442
        :pswitch_2ef  #00000442
        :pswitch_2ef  #00000443
        :pswitch_2ef  #00000444
        :pswitch_2e7  #00000445
        :pswitch_2e7  #00000446
        :pswitch_2e7  #00000447
        :pswitch_2e7  #00000448
        :pswitch_2d6  #00000449
        :pswitch_2d3  #0000044a
    .end packed-switch
.end method

.method public final interceptKeyCombinationScreenshotChord()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    iput-wide v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    const-string/jumbo p0, "PhoneWindowManagerExt"

    const-string/jumbo v0, "interceptKeyCombinationScreenshotChord triggered"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public final interceptStopLockTaskModePinnedChord()V
    .registers 6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1c

    move v1, v2

    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz v0, :cond_34

    if-nez v1, :cond_34

    if-eqz v2, :cond_25

    goto :goto_34

    :cond_25
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_34
    :goto_34
    const-string p0, "Can not stop SystemLockTaskMode. lockTaskModeEnabled="

    const-string v3, " touchExplorationEnabled="

    const-string v4, " interactionControlEnabled="

    invoke-static {p0, v0, v3, v1, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "PhoneWindowManagerExt"

    invoke-static {v0, p0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final interceptWakeInteractiveState(I)Z
    .registers 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-ne p0, v0, :cond_1c

    goto :goto_1b

    :cond_15
    if-ne p1, v0, :cond_1c

    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-eq p0, v1, :cond_1c

    :goto_1b
    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final isDesktopWindowingMode()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result p0

    return p0
.end method

.method public final isInteractionControlEnabled(IZ)Z
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_25

    const/16 v0, 0xe0

    if-ne p1, v0, :cond_9

    goto :goto_25

    :cond_9
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_26

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return p0

    :pswitch_10  #0x1a
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz p1, :cond_1b

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    if-eqz p0, :cond_1b

    if-eqz p2, :cond_1b

    return v0

    :cond_1b
    return v1

    :pswitch_1c  #0x18, 0x19
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    if-eqz p1, :cond_25

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    if-eqz p0, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1

    :pswitch_data_26
    .packed-switch 0x18
        :pswitch_1c  #00000018
        :pswitch_1c  #00000019
        :pswitch_10  #0000001a
    .end packed-switch
.end method

.method public final isKeyguardOccluded(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dexOccluded:Z

    return p0

    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result p0

    return p0
.end method

.method public final isQuickLaunchCameraEnabled(I)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 p1, 0x7d1

    if-ne p0, p1, :cond_d

    goto :goto_2e

    :cond_d
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result p0

    if-eqz p0, :cond_30

    const-string/jumbo p0, "service.camera.client"

    const-string p1, ""

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "com.sec.android.app.camera"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo p1, "isCameraClient="

    const-string/jumbo v0, "PhoneWindowManagerExt"

    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_30

    :goto_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public final isSamsungKeyboardShown()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 v2, 0x1

    if-eqz p0, :cond_28

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_28

    move p0, v2

    goto :goto_29

    :catchall_26
    move-exception p0

    goto :goto_30

    :cond_28
    move p0, v1

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p0, :cond_35

    return v2

    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_35
    return v1
.end method

.method public final isSecureRemoteLocked()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "CarrierLock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, " FMMLock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxguardLockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, " KnoxguardLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mReasonLastSecureRemoteLock:Ljava/lang/String;

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final knoxCustomVolumeKeyAppSwitching(Z)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto/16 :goto_17e

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_17e

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_17e

    :cond_17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x1

    const-string/jumbo v4, "PhoneWindowManagerExt"

    if-eqz v2, :cond_71

    iget-boolean v2, v2, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v2, :cond_71

    const-string p0, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_70

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz p0, :cond_67

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_45

    move p1, v1

    goto :goto_46

    :cond_45
    move p1, v3

    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Knox Custom: getPowerDialogOptionMode() : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " returning : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalActions"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_62
    move p1, v1

    :goto_63
    if-eqz p1, :cond_67

    move p0, v3

    goto :goto_68

    :cond_67
    move p0, v1

    :goto_68
    if-eqz p0, :cond_70

    const-string p0, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_70
    return v3

    :cond_71
    const-string v0, "Knox Custom: Volume Key app switching starting"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_178

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_86

    goto/16 :goto_178

    :cond_86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Knox Custom: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " apps in list"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_d5

    const-string v9, " available"

    invoke-static {v5, v8, v9, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_d5
    const-string v9, " not available"

    invoke-static {v5, v8, v9, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :cond_db
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e8

    const-string p0, "Knox Custom: no available apps"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_172

    :cond_e8
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " in foreground"

    invoke-static {v5, v0, v2, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    move v8, v2

    :goto_106
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_121

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11e

    const-string v8, " found at index "

    invoke-static {v1, v5, v0, v8, v4}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v1

    :cond_11e
    add-int/lit8 v1, v1, 0x1

    goto :goto_106

    :cond_121
    if-ne v8, v2, :cond_128

    const-string v1, " not found in list; use first"

    invoke-static {v5, v0, v1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_128
    if-eqz p1, :cond_133

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    if-ge v8, p1, :cond_133

    add-int/2addr v8, v3

    goto :goto_13d

    :cond_133
    if-lez v8, :cond_137

    sub-int/2addr v8, v3

    goto :goto_13d

    :cond_137
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v8, p1, -0x1

    :goto_13d
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14f

    const-string p0, " already in foreground"

    invoke-static {v5, v0, p0, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_172

    :cond_14f
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Knox Custom: switching to "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_172

    const/high16 p1, 0x10400000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_163
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_16a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_163 .. :try_end_16a} :catch_16b

    goto :goto_172

    :catch_16b
    move-exception p0

    const-string/jumbo p1, "No activity to launch Knox Custom switching."

    invoke-static {v4, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_172
    :goto_172
    const-string p0, "Knox Custom: Volume Key app switching done"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_178
    :goto_178
    const-string p0, "Knox Custom: no apps in list"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_17e
    :goto_17e
    return v1
.end method

.method public launchPowerDoublePressCamera()V
    .registers 3

    const-class p0, Lcom/android/server/GestureLauncherService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/GestureLauncherService;

    if-nez p0, :cond_b

    return-void

    :cond_b
    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "launch double press camera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    return-void
.end method

.method public final longPressOnHomePolicy()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "PhoneWindowManagerExt"

    if-nez v1, :cond_12

    const-string p0, "Home long press is blocked because UserSetup isn\'t completed"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_12
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-nez v1, :cond_28

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string p0, "Home long press is blocked by Ringing"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "Home long press is blocked by Interaction control"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_36
    return v1
.end method

.method public final makeBasicIntent(Z)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "is_long_press"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_2b

    const-string/jumbo v1, "is_alt_press"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_2b
    return-object v0
.end method

.method public final notifyPenSwitchChanged(JZZ)V
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    const-string/jumbo v4, "PhoneWindowManagerExt"

    if-eqz v0, :cond_277

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    const/4 v5, 0x5

    if-eq v0, v5, :cond_277

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-ne v2, v0, :cond_18

    goto/16 :goto_277

    :cond_18
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-nez v0, :cond_2d

    const-string/jumbo v0, "can not start ScreenOffMemo, the option is disabled"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    move v10, v7

    goto :goto_93

    :cond_2d
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    const/4 v10, 0x2

    if-ne v0, v10, :cond_3c

    if-ne v2, v9, :cond_3c

    const-string/jumbo v0, "can start ScreenOffMemo, pen attached."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    move v10, v9

    goto :goto_93

    :cond_3c
    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "can not start ScreenOffMemo, pen type was wrong. "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    invoke-static {v0, v10, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_2b

    :cond_4c
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-ne v0, v8, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "can not start ScreenOffMemo, pen state was wrong. "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-static {v0, v10, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_2b

    :cond_5e
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string/jumbo v0, "can not start ScreenOffMemo in dual dex mode"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_6b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eq v2, v9, :cond_3a

    if-nez v2, :cond_78

    if-nez v0, :cond_78

    goto :goto_3a

    :cond_78
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "can not start ScreenOffMemo, penState="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isAwake="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :goto_93
    if-nez v2, :cond_c1

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v0, v8, :cond_c1

    if-eqz v6, :cond_a7

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12, v7, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_c1

    :cond_a7
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-nez v0, :cond_c1

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v0, :cond_b1

    if-nez v10, :cond_c1

    :cond_b1
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/16 v13, 0x66

    const-string/jumbo v14, "penDetached"

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_c1
    :goto_c1
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    if-eqz v0, :cond_129

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v0, v8, :cond_129

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_129

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-nez v0, :cond_ec

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    if-eqz v0, :cond_ec

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    iput-object v11, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    :cond_ec
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    if-eqz v0, :cond_123

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    if-nez v11, :cond_f5

    goto :goto_129

    :cond_f5
    if-eqz v2, :cond_fb

    iget v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    :goto_f9
    move v14, v12

    goto :goto_fe

    :cond_fb
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    goto :goto_f9

    :goto_fe
    const-string/jumbo v12, "Play pen sound failed, soundId="

    if-nez v14, :cond_107

    invoke-static {v14, v12, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_129

    :cond_107
    :try_start_107
    iget v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I

    invoke-virtual {v11, v13}, Landroid/media/SoundPool;->stop(I)V

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    const/high16 v19, 0x3f800000  # 1.0f

    const/high16 v15, 0x3f800000  # 1.0f

    const/high16 v16, 0x3f800000  # 1.0f

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v11

    iput v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11e} :catch_11f

    goto :goto_129

    :catch_11f
    invoke-static {v14, v12, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_129

    :cond_123
    const-string/jumbo v0, "mPenSoundInfo is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_129
    :goto_129
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    if-eqz v0, :cond_185

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v0, v8, :cond_185

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    new-instance v11, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v11}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v11}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_OMC_SPEN_VIBRATION:Z

    if-eqz v0, :cond_165

    if-eqz v2, :cond_15e

    const/16 v0, 0x3f

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    goto :goto_170

    :cond_15e
    const/16 v0, 0x3e

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    goto :goto_170

    :cond_165
    if-eqz v2, :cond_16c

    invoke-static {v5}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    goto :goto_170

    :cond_16c
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    :goto_170
    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v8, v5}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v15

    if-eqz v2, :cond_17e

    const-string/jumbo v0, "SPEN_ATTACHED"

    :goto_17b
    move-object/from16 v16, v0

    goto :goto_182

    :cond_17e
    const-string/jumbo v0, "SPEN_DETACHED"

    goto :goto_17b

    :goto_182
    invoke-virtual/range {v12 .. v17}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_185
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v5, "penInsert"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v5, "isScreenOn"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v5

    const-string/jumbo v8, "isKeyguardLocked"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-wide/16 v11, 0x0

    cmp-long v5, p1, v11

    if-nez v5, :cond_1ac

    move v7, v9

    :cond_1ac
    const-string/jumbo v5, "isBoot"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v5, "isServiceOn"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const-string/jumbo v5, "isReversed"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SMART_CLIP:Z

    if-eqz v0, :cond_1e7

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v0, :cond_1e0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "spengestureservice"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    :cond_1e0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v0, :cond_1e7

    invoke-virtual {v0, v2}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setSpenInsertionState(Z)V

    :cond_1e7
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v0, :cond_216

    if-eqz v10, :cond_216

    const-string/jumbo v0, "startService, screenOffMemo"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1fb

    const-string/jumbo v5, "pen_attach"

    goto :goto_1fe

    :cond_1fb
    const-string/jumbo v5, "pen_detach"

    :goto_1fe
    const-string/jumbo v7, "pen_intent_com"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_204
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_20d
    .catch Ljava/lang/IllegalStateException; {:try_start_204 .. :try_end_20d} :catch_20e

    goto :goto_216

    :catch_20e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_216
    :goto_216
    const-string/jumbo v0, "notifyPenSwitchChanged, penInsert="

    const-string v5, ", reversed ="

    const-string v7, ", screenOn="

    invoke-static {v0, v2, v5, v3, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sound="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", vibration="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canStartScreenOffMemo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyPenState state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "StatusBarManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v2, :cond_276

    :try_start_26f
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->notifyPenState(I)V
    :try_end_276
    .catch Landroid/os/RemoteException; {:try_start_26f .. :try_end_276} :catch_276

    :catch_276
    :cond_276
    return-void

    :cond_277
    :goto_277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyPenSwitchChanged ignored, mPenType="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPenState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newPenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onFlashlightKeyPressed(I)V
    .registers 4

    const-string/jumbo v0, "onFlashlightKeyPressed, keyCode="

    const-string/jumbo v1, "PhoneWindowManagerExt"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_3b

    :cond_12
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_23
    :cond_23
    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_23

    :try_start_37
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFlashlightKeyPressed(I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_23

    goto :goto_23

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final onKeyguardOccludedChangedLw(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDexKeyguardOccluded:Z

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccludedChanged:Z

    return-void

    :cond_1a
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_22

    iput-boolean p2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    :cond_22
    return-void
.end method

.method public final openDictationIfNeeded(IZ)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    move-result v0

    const-string/jumbo v1, "openDictationIfNeeded, forced="

    const-string v2, ", isSamsungKeyboardShown()="

    const-string v3, ", isAvailableDictation="

    invoke-static {v1, p2, v2, v0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSamsungKeyboard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    const-string/jumbo v3, "PhoneWindowManagerExt"

    invoke-static {v3, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez p2, :cond_2c

    if-eqz v0, :cond_2a

    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    if-eqz p2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    return p0

    :cond_2c
    :goto_2c
    const-string/jumbo p2, "open_dictation"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_75

    if-eqz v0, :cond_1b

    const-string/jumbo v1, "SPC_Remote_Controller"

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_75

    :cond_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v2, :cond_4d

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_49

    const/16 v2, 0x52

    if-eq p1, v2, :cond_4d

    const/16 v2, 0x54

    if-eq p1, v2, :cond_3b

    const/16 v2, 0xbb

    if-eq p1, v2, :cond_4d

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_49

    goto :goto_75

    :cond_3b
    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    const-string/jumbo v0, "Search key - Press"

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    return-void

    :cond_49
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    return-void

    :cond_4d
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "gpio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const-string/jumbo v2, "keyCode("

    const-string v4, ") - Press"

    invoke-static {p1, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    :cond_75
    :goto_75
    return-void
.end method

.method public final playSoundEffect()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const-string/jumbo v1, "PhoneWindowManagerExt"

    if-nez v0, :cond_f

    const-string p0, "Couldn\'t get audio manager"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-nez p0, :cond_2c

    const-string/jumbo p0, "trigger_restart_min_framework"

    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    const/16 p0, 0x66

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void

    :cond_2c
    const-string/jumbo p0, "keyguard - disable key sound"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendBroadcastDoubleClick(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "broadcast double click intent keyCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEYCODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v1, "com.samsung.android.permisson.DOUBLE_CLICK"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendFoldSaLoggingCanceledIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :goto_15
    return-void
.end method

.method public final sensorToggleBehavior(II)Z
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    const v3, 0x1040707

    goto :goto_15

    :cond_b
    if-ne p1, v1, :cond_13

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    const v3, 0x1040711

    goto :goto_15

    :cond_13
    move v0, v2

    move v3, v0

    :goto_15
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    move-result v4

    if-nez v4, :cond_3e

    if-nez v0, :cond_1e

    goto :goto_3e

    :cond_1e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    const/4 v5, 0x5

    invoke-virtual {v0, v5, p1, v4, p2}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroupWithConfirmPopup(IIZI)V

    if-eqz v2, :cond_3d

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3d
    return v1

    :cond_3e
    :goto_3e
    return v2
.end method

.method public final setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public final showSystemSettings()V
    .registers 5

    const-string/jumbo v0, "android.settings.SETTINGS"

    const/high16 v1, 0x4000000

    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings/.homepage.SettingsHomepageActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v1, :cond_36

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayIdDesktopWindowingMode(I)I

    move-result p0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void

    :cond_36
    sget-object p0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo p0, "PhoneWindowManagerExt"

    const-string/jumbo p1, "showToast, message is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showingSearcleToastIfNeeded()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/16 v1, 0x65

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->longPressOnHomePolicy()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eq v3, v2, :cond_35

    if-eq v3, v1, :cond_22

    const/4 v0, 0x0

    goto :goto_3c

    :cond_22
    const v1, 0x1040fc4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040ccc

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_35
    const v1, 0x104028c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string/jumbo p0, "PhoneWindowManagerExt"

    const-string/jumbo v0, "The toast message is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_51
    return-void
.end method

.method public final startAIActivity(ILandroid/content/Intent;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_e
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->getMultiWindowModeForAssistantHotKeyLocked()I

    move-result v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_fd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo v1, "PhoneWindowManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startAIActivity -> mTopActivity="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", LaunchMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayIdDesktopWindowingMode(I)I

    move-result v3

    if-ne v3, v2, :cond_5b

    const-string/jumbo v2, "PhoneWindowManagerExt"

    const-string/jumbo v4, "startAIActivity with INVALID_DISPLAY on dexmode"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :cond_5e
    const v2, 0x3f333333  # 0.7f

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p1, v5, :cond_ce

    if-eq v0, v5, :cond_bd

    if-eq v0, v4, :cond_97

    if-eq v0, v3, :cond_81

    const-string/jumbo p1, "PhoneWindowManagerExt"

    const-string/jumbo v0, "invalid multiwindow mode"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_81
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFreeformLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    invoke-virtual {v1, v5}, Landroid/app/ActivityOptions;->setStartAssistantActivity(Z)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_97
    const p1, 0x10001000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_ab
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/MultiTaskingController;->startAssistantActivityToSplitLocked(Landroid/content/Intent;F)V

    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_ab .. :try_end_b3} :catchall_b7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_b7
    move-exception p0

    :try_start_b8
    monitor-exit p1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_bd
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_ce
    if-ne p1, v4, :cond_fc

    const-string/jumbo p1, "ai_launch_mode"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne v0, v4, :cond_df

    const-string/jumbo p1, "ai_launch_split_ratio"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_f1

    :cond_df
    if-ne v0, v3, :cond_f1

    const-string/jumbo p1, "ai_hot_key_launch_freeform"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "ai_hot_key_launch_bounds"

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFreeformLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_f1
    :goto_f1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_fc
    return-void

    :catchall_fd
    move-exception p0

    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final startLockscreenFingerprintAuth()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startFingerprintAuthentication()V

    :cond_d
    return-void
.end method

.method public final startSearcleByHomeKey(ZZILandroid/view/InputDevice;)V
    .registers 8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFocusedDisplayId:I

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_SEARCLE:Z

    const-string/jumbo v2, "PhoneWindowManagerExt"

    if-eqz v1, :cond_50

    if-nez p3, :cond_c

    goto :goto_50

    :cond_c
    const/4 v1, -0x1

    if-ne p3, v1, :cond_21

    if-eqz p4, :cond_1e

    invoke-virtual {p4}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result p4

    if-nez p4, :cond_1e

    goto :goto_50

    :cond_1e
    if-nez v0, :cond_21

    goto :goto_50

    :cond_21
    const-string/jumbo p1, "displayId("

    const-string p4, ", "

    const-string v1, "), can not start Searcle by Home"

    invoke-static {p3, v0, p1, p4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_c6

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result p1

    if-eqz p1, :cond_c6

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getExternalDisplayContext(I)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const p3, 0x104028b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_50
    :goto_50
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p4}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result p4

    if-eqz p4, :cond_5f

    const-string/jumbo p0, "keyguardOn, can not start Searcle by Home"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5f
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p4, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result p4

    if-eqz p4, :cond_70

    const-string/jumbo p0, "hasLastInfo, can not start Searcle by Home"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_70
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {p4, v1, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result p4

    if-eqz p4, :cond_7f

    const-string/jumbo p0, "hasSystemKeyInfo, can not start Searcle by Home"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7f
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-nez p0, :cond_88

    goto :goto_c6

    :cond_88
    const-string/jumbo p4, "startSearcleByHomeKey, down="

    const-string v0, " longPress="

    const-string v1, " displayId="

    invoke-static {p4, p1, v0, p2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "startSearcleByHomeKey down="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "StatusBarManagerService"

    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p3, p3, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez p3, :cond_bf

    goto :goto_c6

    :cond_bf
    :try_start_bf
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->startSearcleByHomeKey(ZZ)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c6} :catch_c6

    :catch_c6
    :cond_c6
    :goto_c6
    return-void
.end method

.method public final updateDoublePressLaunchInfo(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_26

    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_26

    new-instance v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    :cond_26
    :goto_26
    return-void
.end method

.method public final updateDoublePressPowerBehavior()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 v1, 0x8

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v3

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v4, :cond_1d

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v5

    const/16 v6, 0x450

    if-ne v5, v6, :cond_1d

    const/16 v0, 0x68

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_59

    :cond_1d
    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v3, v5, :cond_24

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_59

    :cond_24
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v5, :cond_35

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v5

    const/16 v7, 0x7d1

    if-ne v5, v7, :cond_35

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_59

    :cond_35
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    if-eqz v5, :cond_46

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v0

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_46

    const/16 v0, 0x69

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_59

    :cond_46
    const/4 v0, 0x1

    if-eq v3, v0, :cond_55

    const/4 v0, 0x3

    if-eq v3, v0, :cond_55

    const/4 v0, 0x2

    if-ne v3, v0, :cond_50

    goto :goto_55

    :cond_50
    if-eqz v4, :cond_59

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_59

    :cond_55
    :goto_55
    const/16 v0, 0x6a

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    :cond_59
    :goto_59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateDoublePressPowerBehavior, behavior="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const-string/jumbo v1, "PhoneWindowManagerExt"

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final updateKeyCustomizationInfoTvMode()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/16 v2, 0x7d2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x1a

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v6

    :goto_15
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    if-eqz v7, :cond_50

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    if-eqz v7, :cond_50

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    if-nez v7, :cond_22

    goto :goto_2d

    :cond_22
    const-string/jumbo v6, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_2d
    if-eqz v6, :cond_50

    if-nez v1, :cond_55

    const-string/jumbo v1, "android.intent.action.MAIN"

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v4, 0x8

    const/16 v5, 0x7d2

    const/16 v6, 0x1a

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    goto :goto_55

    :cond_50
    if-eqz v1, :cond_55

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(IIILjava/lang/String;)V

    :cond_55
    :goto_55
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    return-void
.end method

.method public updateSettings()V
    .registers 4

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->mSettingsUriToCallback:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_13

    :catchall_2b
    move-exception p0

    goto :goto_2f

    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public final updateSingleKeyGestureRule(I)V
    .registers 11

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v2, v1, :cond_36

    aget v4, v0, v2

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_33

    :cond_12
    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1a

    goto :goto_33

    :cond_1a
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_31

    iget-object v5, v5, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_2a

    move-wide v7, v5

    goto :goto_2c

    :cond_2a
    iget-wide v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    :goto_2c
    cmp-long v4, v7, v5

    if-nez v4, :cond_31

    goto :goto_33

    :cond_31
    add-int/lit8 v3, v3, 0x1

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_36
    if-lez v3, :cond_3c

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    return-void

    :cond_3c
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_41

    goto :goto_52

    :cond_41
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_52
    :goto_52
    return-void
.end method
