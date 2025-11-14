.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public mBroadcastInProgress:Z

.field public mBroadcastStartTime:J

.field public mBroadcastedInteractiveState:I

.field public final mContext:Landroid/content/Context;

.field public mDisplayInteractivities:Landroid/util/SparseBooleanArray;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field public final mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

.field public final mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public final mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

.field public final mGoToSleepBroadcastDone:Lcom/android/server/power/Notifier$3;

.field public final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field public final mInjector:Lcom/android/server/power/Notifier$RealInjector;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mInteractivityByGroupId:Landroid/util/SparseArray;

.field public final mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public final mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public mPendingGoToSleepBroadcast:Z

.field public mPendingInteractiveState:I

.field public mPendingWakeUpBroadcast:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mProximity:Z

.field public final mScreenOffByProximityIntent:Landroid/content/Intent;

.field public final mScreenOffIntent:Landroid/content/Intent;

.field public final mScreenOnByProximityIntent:Landroid/content/Intent;

.field public final mScreenOnIntent:Landroid/content/Intent;

.field public final mScreenOnOffOptions:Landroid/os/Bundle;

.field public final mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

.field public final mShowWirelessChargingAnimationConfig:Z

.field public final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

.field public final mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

.field public final mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserActivityPending:Z

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWakeUpBroadcastDone:Lcom/android/server/power/Notifier$3;

.field public final mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v1, v0, [J

    fill-array-data v1, :array_1c

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void

    :array_1c
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_60
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;Lcom/android/server/policy/WindowManagerPolicy;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/server/power/Notifier$Interactivity;

    invoke-direct {v0}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    new-instance v2, Lcom/android/server/power/Notifier$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    iput-object v2, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Lcom/android/server/power/Notifier$3;

    new-instance v2, Lcom/android/server/power/Notifier$3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    iput-object v2, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Lcom/android/server/power/Notifier$3;

    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/Notifier$RealInjector;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$RealInjector;

    iput-object p7, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-class p7, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/AppOpsManager;

    iput-object p7, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-class p4, Landroid/app/ActivityManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class p4, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    const-class p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    const-class p4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    const-class p4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class p4, Landroid/app/trust/TrustManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/trust/TrustManager;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const-class p4, Landroid/os/Vibrator;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Vibrator;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    new-instance p4, Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p4, p2}, Lcom/android/server/power/WakefulnessSessionObserver;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    new-instance p4, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {p4, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    iput-object p6, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p4, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 p5, 0x50200000

    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p6, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p6

    invoke-virtual {p6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6, p4}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    const/4 p4, 0x2

    invoke-virtual {p1, p4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x1110246

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    new-instance p1, Lcom/android/server/power/WakeLockLog;

    new-instance p4, Lcom/android/server/power/WakeLockLog$Injector;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, p4, p2}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    new-instance p1, Lcom/android/server/power/WakeLockLog;

    new-instance p4, Lcom/android/server/power/WakeLockLog$Injector;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, p4, p2}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    :try_start_112
    invoke-interface {p3, p5}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_115} :catch_115

    :catch_115
    const/16 p1, 0x21

    invoke-static {p1, p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object p1, p1, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_140

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$RealInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Landroid/os/BatteryStatsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsInternal;

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$RealInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/power/FrameworkStatsLogger;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    goto :goto_144

    :cond_140
    iput-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    :goto_144
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOnByProximityIntent:Landroid/content/Intent;

    const/high16 p2, 0x50000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p3, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mScreenOffByProximityIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    new-instance p2, Lcom/android/server/power/Notifier$Interactivity;

    invoke-direct {p2}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-class p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    return-void
.end method


# virtual methods
.method public final addScreenTimeoutPolicyListener(IILandroid/os/IScreenTimeoutPolicyListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-direct {v1, p0, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;-><init>(Lcom/android/server/power/Notifier;I)V

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_2d

    :cond_1a
    :goto_1a
    iget-object p0, v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    invoke-virtual {p0, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object p0, v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance p1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, p3}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_18

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 11

    const-string/jumbo v0, "Notifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo p1, "Partial Wakelock Log:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Full Wakelock Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "Wakefulness Session Observer:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "default timeout: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "override timeout: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_6a
    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_165

    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    iget-object v3, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v3, v3, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Wakefulness Session Power Group powerGroupId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "current wakefulness: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    const-string/jumbo v7, "current user activity event: "

    invoke-static {v5, v6, p1, v7}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v5, v3, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "current user activity duration: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "previous user activity event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v5, v3, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "previous user activity duration: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "is in override timeout: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mIsInteractive: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    const-string/jumbo v7, "current screen policy: "

    invoke-static {v5, v6, p1, v7}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentScreenPolicyTimestamp:J

    sub-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "current screen policy duration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "previous screen policy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicy:I

    const-string/jumbo v5, "past screen policy duration: "

    invoke-static {v3, v4, p1, v5}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevScreenPolicyDurationMs:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6a

    :cond_165
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getBatteryStatsWakeLockMonitorType(I)I
    .registers 4

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v1, 0x6

    if-eq p1, v1, :cond_24

    const/16 v1, 0xa

    if-eq p1, v1, :cond_24

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_24

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1e

    const/16 p0, 0x80

    if-eq p1, p0, :cond_1b

    goto :goto_22

    :cond_1b
    const/16 p0, 0x12

    return p0

    :cond_1e
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p0, :cond_25

    :goto_22
    const/4 p0, -0x1

    return p0

    :cond_24
    return v0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public getWakelockMonitorTypeForLogging(I)I
    .registers 5

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v1, 0x6

    const/16 v2, 0x1a

    if-eq p1, v1, :cond_22

    const/16 v1, 0xa

    if-eq p1, v1, :cond_22

    if-eq p1, v2, :cond_22

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1c

    const/16 p0, 0x80

    if-eq p1, p0, :cond_1b

    goto :goto_20

    :cond_1b
    return p0

    :cond_1c
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p0, :cond_23

    :goto_20
    const/4 p0, -0x1

    return p0

    :cond_22
    return v2

    :cond_23
    return v0
.end method

.method public final handleLateGlobalInteractiveChange()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-wide v4, v3, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    iget-boolean v2, v3, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_45

    :catchall_1c
    move-exception p0

    goto :goto_47

    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2b
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v2, v2, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_1c

    throw p0
.end method

.method public final handleLateInteractiveChange(I)V
    .registers 7

    const-string/jumbo v0, "no Interactivity entry for groupId:"

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/Notifier$Interactivity;

    if-nez v2, :cond_26

    const-string/jumbo p0, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_24
    move-exception p0

    goto :goto_43

    :cond_26
    iget-boolean v0, v2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v2, v4}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_41

    :cond_36
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v2, v4}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_41
    monitor-exit v1

    return-void

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_24

    throw p0
.end method

.method public final logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    if-nez v0, :cond_6

    goto/16 :goto_90

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->getWakelockMonitorTypeForLogging(I)I

    move-result v4

    sget-object p1, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    if-eqz p4, :cond_18

    invoke-virtual {p4}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_18
    move-object v5, p2

    goto/16 :goto_91

    :cond_1b
    move p3, v8

    :goto_1c
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-ge p3, v1, :cond_3f

    invoke-virtual {p4, p3}, Landroid/os/WorkSource;->getUid(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p5, p1, :cond_31

    move v6, v9

    goto :goto_32

    :cond_31
    move v6, v8

    :goto_32
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/16 v7, 0x3e7

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 p3, p3, 0x1

    move-object p2, v5

    goto :goto_1c

    :cond_3f
    move-object v5, p2

    invoke-virtual {p4}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_90

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_90

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/WorkSource$WorkChain;

    new-instance p4, Landroid/os/WorkSource$WorkChain;

    invoke-direct {p4}, Landroid/os/WorkSource$WorkChain;-><init>()V

    invoke-virtual {p3}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v2

    move v3, v8

    :goto_64
    invoke-virtual {p3}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v6

    if-ge v3, v6, :cond_78

    aget v6, v1, v3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v6

    aget-object v7, v2, v3

    invoke-virtual {p4, v6, v7}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p5, p1, :cond_7f

    move v6, v9

    goto :goto_80

    :cond_7f
    move v6, v8

    :goto_80
    invoke-virtual {p4}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v2

    invoke-virtual {p4}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x3e7

    const/16 v1, 0xa

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_4a

    :cond_90
    :goto_90
    return-void

    :goto_91
    invoke-virtual {v0, p3}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p5, p1, :cond_9c

    move v6, v9

    goto :goto_9d

    :cond_9c
    move v6, v8

    :goto_9d
    const/16 v1, 0xa

    const/4 v3, 0x0

    const/16 v7, 0x3e7

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public final onGlobalWakefulnessChangeStarted(IIJ)V
    .registers 10

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v1, v0, :cond_91

    iget-boolean p1, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    :cond_1b
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object p1, p1, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4a

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIds()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_45

    aget v4, v1, v3

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_45
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService$LocalService;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_4a
    :try_start_4a
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_4f

    :catch_4f
    const/16 p1, 0x21

    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput-boolean v0, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v0, :cond_60

    iput p2, p1, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    goto :goto_62

    :cond_60
    iput p2, p1, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    :goto_62
    iput-wide p3, p1, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_67
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean p2, p2, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz p2, :cond_82

    iget-object p2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance p3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_8d

    :catchall_80
    move-exception p0

    goto :goto_8f

    :cond_82
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance p3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8d
    monitor-exit p1

    goto :goto_91

    :goto_8f
    monitor-exit p1
    :try_end_90
    .catchall {:try_start_67 .. :try_end_90} :catchall_80

    throw p0

    :cond_91
    :goto_91
    return-void
.end method

.method public final onGroupWakefulnessChangeStarted(IIIJ)V
    .registers 41

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-static/range {p2 .. p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v5

    iget-object v6, v0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v9, 0x1

    if-nez v6, :cond_23

    new-instance v6, Lcom/android/server/power/Notifier$Interactivity;

    invoke-direct {v6}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    iget-object v7, v0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v7, v9

    goto :goto_24

    :cond_23
    const/4 v7, 0x0

    :goto_24
    if-nez v7, :cond_2a

    iget-boolean v7, v6, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v7, v5, :cond_20c

    :cond_2a
    iget-boolean v7, v6, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v7, :cond_31

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    :cond_31
    iput-boolean v5, v6, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v5, :cond_38

    iput v2, v6, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    goto :goto_3a

    :cond_38
    iput v2, v6, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    :goto_3a
    iput-wide v3, v6, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    iput-boolean v9, v6, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    const-string/jumbo v6, "startedEarlyWakingUp: interactive: "

    const-string/jumbo v7, "no Interactivity entry for groupId:"

    iget-object v8, v0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_47
    iget-object v10, v0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/Notifier$Interactivity;

    if-nez v10, :cond_68

    const-string/jumbo v6, "PowerManagerNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_b1

    :catchall_65
    move-exception v0

    goto/16 :goto_210

    :cond_68
    if-nez v1, :cond_95

    iget-boolean v7, v10, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v7, :cond_95

    const-string/jumbo v7, "PowerManagerNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v10, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " reason: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v7, v10, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    check-cast v6, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->startedEarlyWakingUp(I)V

    :cond_95
    iget-boolean v6, v10, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v6, :cond_a5

    iget-object v6, v0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v7, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    const/4 v11, 0x2

    invoke-direct {v7, v0, v1, v10, v11}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b0

    :cond_a5
    iget-object v6, v0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v7, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    const/4 v11, 0x3

    invoke-direct {v7, v0, v1, v10, v11}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b0
    monitor-exit v8
    :try_end_b1
    .catchall {:try_start_47 .. :try_end_b1} :catchall_65

    :goto_b1
    iget-object v6, v0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v7, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_c5

    iget-object v7, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v8, v6, v1}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v7, v1, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_c5
    iget-object v6, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    move/from16 v7, p2

    iput v7, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentWakefulness:I

    iget-boolean v8, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    invoke-static {v7}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v10

    if-ne v8, v10, :cond_db

    goto/16 :goto_1e7

    :cond_db
    iget-object v8, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v10, v8, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_e0
    iget v15, v8, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    monitor-exit v10
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_20d

    invoke-static {v7}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mIsInteractive:Z

    iget v10, v8, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    iget-object v8, v8, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v11, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    const/16 v18, 0x2

    if-eqz v7, :cond_123

    iput-wide v3, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    iget-wide v12, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    move/from16 v23, v15

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-eqz v2, :cond_11d

    sub-long v12, v3, v12

    const-wide/16 v16, 0x1388

    cmp-long v2, v12, v16

    if-gez v2, :cond_11b

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v7, v10

    move/from16 v12, v23

    int-to-long v9, v12

    const/16 v16, 0x344

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move/from16 v17, v11

    invoke-static/range {v16 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    iput-wide v3, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    :cond_11b
    iput-wide v14, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    :cond_11d
    const/4 v7, 0x4

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    goto/16 :goto_1e7

    :cond_123
    move/from16 v17, v11

    move v12, v15

    move/from16 v11, v18

    const/4 v7, 0x4

    iget v14, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    move/from16 v23, v12

    iget-wide v11, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    sub-long v15, v3, v11

    iput-wide v3, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveOffTimestamp:J

    if-ne v2, v7, :cond_172

    iget v14, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    iget-wide v11, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    sub-long v11, v3, v11

    invoke-virtual {v6}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v2

    const/4 v9, 0x5

    if-nez v2, :cond_14d

    iget v2, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    if-ne v2, v9, :cond_147

    goto :goto_14d

    :cond_147
    move-object/from16 v24, v8

    move/from16 v2, v23

    :goto_14b
    const/4 v13, 0x2

    goto :goto_167

    :cond_14d
    :goto_14d
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v8

    int-to-long v7, v10

    move/from16 v2, v23

    int-to-long v9, v2

    const/16 v16, 0x344

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    const/16 v18, 0x5

    invoke-static/range {v16 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    iput-wide v3, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    const/4 v7, -0x1

    iput v7, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    goto :goto_14b

    :goto_167
    invoke-virtual {v6, v13, v3, v4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    move-wide/from16 v31, v11

    move/from16 v27, v13

    const/4 v7, 0x0

    const/16 v17, 0x4

    goto :goto_1b1

    :cond_172
    move-object/from16 v24, v8

    move/from16 v12, v23

    const/4 v13, 0x2

    if-ne v2, v13, :cond_1a9

    invoke-virtual {v6}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v2

    if-eqz v2, :cond_19d

    sub-int v2, v12, v10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v10, v10

    move v7, v12

    int-to-long v12, v7

    move/from16 v23, v7

    const/16 v7, 0x344

    move/from16 p2, v2

    move/from16 v8, v17

    move/from16 v2, v23

    const/16 v17, 0x4

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    iput-wide v3, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    iput-wide v3, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOffTimestamp:J

    move/from16 v7, p2

    goto :goto_1a1

    :cond_19d
    move v2, v12

    const/16 v17, 0x4

    const/4 v7, 0x0

    :goto_1a1
    invoke-virtual {v6, v9, v3, v4}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->checkAndLogDimIfQualified(IJ)V

    move/from16 v27, v9

    move-wide/from16 v31, v15

    goto :goto_1b1

    :cond_1a9
    move v2, v12

    const/16 v17, 0x4

    move-wide/from16 v31, v15

    const/4 v7, 0x0

    const/16 v27, 0x0

    :goto_1b1
    iget-wide v8, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mInteractiveStateOnStartTimestamp:J

    sub-long v28, v3, v8

    if-ge v7, v2, :cond_1de

    if-ltz v7, :cond_1de

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v14, :pswitch_data_212

    const/16 v30, 0x0

    goto :goto_1d1

    :pswitch_1c2  #0x6
    const/4 v12, 0x6

    :goto_1c3
    move/from16 v30, v12

    goto :goto_1d1

    :pswitch_1c6  #0x5
    const/4 v12, 0x5

    goto :goto_1c3

    :pswitch_1c8  #0x4
    move/from16 v30, v17

    goto :goto_1d1

    :pswitch_1cb  #0x3
    const/4 v12, 0x3

    goto :goto_1c3

    :pswitch_1cd  #0x2
    const/4 v12, 0x2

    goto :goto_1c3

    :pswitch_1cf  #0x1
    const/4 v12, 0x1

    goto :goto_1c3

    :goto_1d1
    int-to-long v2, v7

    iget v4, v6, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    const/16 v25, 0x345

    move-wide/from16 v33, v2

    move/from16 v26, v4

    invoke-static/range {v25 .. v34}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJJ)V

    goto :goto_1e7

    :cond_1de
    const-string/jumbo v2, "invalid reducedInteractiveStateOnDurationMs: "

    const-string/jumbo v3, "WakefulnessSessionObserver"

    invoke-static {v7, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1e7
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v2, v2, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_20c

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v14, 0x0

    :goto_1f9
    if-ge v14, v2, :cond_205

    aget v3, v1, v14

    iget-object v4, v0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1f9

    :cond_205
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService$LocalService;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_20c
    return-void

    :catchall_20d
    move-exception v0

    :try_start_20e
    monitor-exit v10
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_20d

    throw v0

    :goto_210
    :try_start_210
    monitor-exit v8
    :try_end_211
    .catchall {:try_start_210 .. :try_end_211} :catchall_65

    throw v0

    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_1cf  #00000001
        :pswitch_1cd  #00000002
        :pswitch_1cb  #00000003
        :pswitch_1c8  #00000004
        :pswitch_1c6  #00000005
        :pswitch_1c2  #00000006
    .end packed-switch
.end method

.method public final onScreenStateChangeStartedByProximity(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mProximity:Z

    if-eq v1, p1, :cond_16

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mProximity:Z

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public final onUserActivity(III)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p3, p2}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V

    iget-object p3, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/android/server/power/WakefulnessSessionObserver;->notifyUserActivity(IIJ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_11
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    :cond_2d
    :goto_2d
    monitor-exit p3

    return-void

    :goto_2f
    monitor-exit p3
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public final onWakeLockAcquired(IIILandroid/os/IWakeLockCallback;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    sget-object v5, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object/from16 v4, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$RealInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    move-object v1, p0

    move v6, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v12, p4

    move-object/from16 v7, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v0, v0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_97

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_76

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_4c

    const/high16 v0, 0x40000000  # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_4c

    move v6, v8

    goto :goto_4d

    :cond_4c
    move v6, v9

    :goto_4d
    if-eqz p5, :cond_5d

    :try_start_4f
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v2, p3

    move-object/from16 v1, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_76

    :cond_5d
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x28

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    move-object/from16 v3, p7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_76} :catch_76

    :catch_76
    :cond_76
    :goto_76
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    goto :goto_81

    :cond_7f
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    :goto_81
    const/4 v1, -0x1

    if-eqz p5, :cond_89

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v2

    goto :goto_8a

    :cond_89
    move v2, v1

    :goto_8a
    if-eq v2, v1, :cond_8d

    goto :goto_8e

    :cond_8d
    move v2, p2

    :goto_8e
    const/4 v1, 0x1

    const-wide/16 v5, -0x1

    move v4, p1

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    :cond_97
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    const v1, 0xffff

    and-int/2addr v1, p1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_c2

    :goto_a1
    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_c5

    iget-object v1, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    iget-object v2, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v2, v2, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b6
    iget v3, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    monitor-exit v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    :catchall_bf
    move-exception v0

    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_b6 .. :try_end_c1} :catchall_bf

    throw v0

    :cond_c2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c5
    return-void
.end method

.method public final onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V
    .registers 31

    move/from16 v13, p9

    sget-object v5, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;ILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    iget-object v1, v0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$RealInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    move-object v7, v1

    iget-object v1, v7, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v7, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v0, v0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_95

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_71

    if-eqz p6, :cond_58

    :try_start_4a
    iget-object v0, v7, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p2

    move/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_71

    :cond_58
    iget-object v0, v7, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_5a} :catch_71

    move-object/from16 v3, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v4, p7

    :try_start_62
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_65} :catch_6f

    move v9, v1

    :try_start_66
    iget-object v0, v7, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v8, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6e} :catch_73

    goto :goto_73

    :catch_6f
    move v9, v1

    goto :goto_73

    :catch_71
    :cond_71
    :goto_71
    move/from16 v9, p4

    :catch_73
    :goto_73
    invoke-static/range {p1 .. p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, v7, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    goto :goto_7e

    :cond_7c
    iget-object v0, v7, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    :goto_7e
    const/4 v1, -0x1

    if-eqz p6, :cond_86

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v2

    goto :goto_87

    :cond_86
    move v2, v1

    :goto_87
    if-eq v2, v1, :cond_8a

    goto :goto_8b

    :cond_8a
    move v2, v9

    :goto_8b
    const/4 v1, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    goto :goto_97

    :cond_95
    move/from16 v9, p4

    :goto_97
    iget-object v0, v7, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    const v1, 0xffff

    and-int v1, p1, v1

    const/16 v2, 0x100

    const/4 v3, 0x6

    if-ne v1, v2, :cond_113

    const/4 v2, 0x0

    move v4, v2

    :goto_a5
    iget-object v5, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_116

    iget-object v5, v0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    iget-object v6, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v6, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_ba
    iget v10, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideWakeLockCounter:I

    monitor-exit v6
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_110

    invoke-virtual {v5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->isInOverrideTimeout()Z

    move-result v6

    if-nez v6, :cond_10d

    iput v13, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mTimeoutOverrideReleaseReason:I

    iget-object v6, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v6, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v14, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mSendOverrideTimeoutLogTimestamp:J

    sub-long/2addr v10, v14

    const-wide/16 v14, 0x3e8

    cmp-long v6, v10, v14

    if-gez v6, :cond_de

    goto :goto_10d

    :cond_de
    packed-switch v13, :pswitch_data_12a

    move/from16 v16, v2

    goto :goto_ed

    :pswitch_e4  #0x8
    move/from16 v16, v3

    goto :goto_ed

    :pswitch_e7  #0x3, 0x4, 0x5, 0x6, 0x7
    const/4 v6, 0x4

    :goto_e8
    move/from16 v16, v6

    goto :goto_ed

    :pswitch_eb  #0x1, 0x2
    const/4 v6, 0x7

    goto :goto_e8

    :goto_ed
    iget-object v6, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    iget-object v10, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    iget v15, v5, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPowerGroupId:I

    iget v5, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    iget-object v11, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_f8
    iget v6, v6, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    monitor-exit v11
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_10a

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v10, v5

    int-to-long v5, v6

    const/16 v14, 0x344

    move-wide/from16 v19, v5

    move-wide/from16 v17, v10

    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    goto :goto_10d

    :catchall_10a
    move-exception v0

    :try_start_10b
    monitor-exit v11
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v0

    :cond_10d
    :goto_10d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    :catchall_110
    move-exception v0

    :try_start_111
    monitor-exit v6
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    throw v0

    :cond_113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_116
    if-eq v1, v3, :cond_121

    const/16 v0, 0xa

    if-eq v1, v0, :cond_121

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_121

    goto :goto_128

    :cond_121
    iget-object v0, v7, Lcom/android/server/power/Notifier;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-eqz v0, :cond_128

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/edge/EdgeManagerInternal;->hideForWakeLock(Ljava/lang/String;I)V

    :cond_128
    :goto_128
    return-void

    nop

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_eb  #00000001
        :pswitch_eb  #00000002
        :pswitch_e7  #00000003
        :pswitch_e7  #00000004
        :pswitch_e7  #00000005
        :pswitch_e7  #00000006
        :pswitch_e7  #00000007
        :pswitch_e4  #00000008
    .end packed-switch
.end method

.method public final playChargingStartedFeedback(IZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_25

    move v3, v2

    goto :goto_26

    :cond_25
    move v3, v1

    :goto_26
    if-eqz v0, :cond_3d

    if-eqz v3, :cond_3d

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_3d

    :cond_33
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/power/Notifier;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final resetDisplayInteractivities()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsByGroupsIds()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    array-length v6, v5

    move v7, v2

    :goto_1f
    if-ge v7, v6, :cond_4d

    aget v8, v5, v7

    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v9

    if-lez v9, :cond_35

    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_4a

    :cond_35
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/Notifier$Interactivity;

    if-eqz v9, :cond_46

    iget-boolean v9, v9, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v9, :cond_44

    goto :goto_46

    :cond_44
    move v9, v2

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v9, 0x1

    :goto_47
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_4a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_50
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public final sendNextBroadcast()V
    .registers 14

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eq v0, v3, :cond_17

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_53

    :catchall_13
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c8

    :cond_17
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_53

    :cond_1c
    if-ne v0, v4, :cond_39

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v0, :cond_34

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v0, v3, :cond_2b

    goto :goto_34

    :cond_2b
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    monitor-exit v1

    return-void

    :cond_34
    :goto_34
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_53

    :cond_39
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v0, v4, :cond_46

    goto :goto_4f

    :cond_46
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    monitor-exit v1

    return-void

    :cond_4f
    :goto_4f
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    :goto_53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_13

    const/16 v1, 0xaa5

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(II)I

    const/16 v1, 0xaa7

    if-ne v0, v4, :cond_9c

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    const-string/jumbo v2, "why"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Lcom/android/server/power/Notifier$3;

    iget-object v10, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void

    :cond_89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void

    :cond_9c
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Lcom/android/server/power/Notifier$3;

    iget-object v12, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void

    :cond_b4
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void

    :goto_c8
    :try_start_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_13

    throw p0
.end method

.method public final updatePendingBroadcastLocked()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_14

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_2c

    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    const-string/jumbo v1, "unknown"

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    return-void
.end method
