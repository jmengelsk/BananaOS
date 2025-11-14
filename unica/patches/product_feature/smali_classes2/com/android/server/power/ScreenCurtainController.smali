.class public Lcom/android/server/power/ScreenCurtainController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final mCallStateCallback:Lcom/android/server/power/ScreenCurtainController$CallStateCallback;

.field public final mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$4;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDslToken:Landroid/os/IBinder;

.field public final mFoldStateListener:Lcom/android/server/power/ScreenCurtainController$2;

.field public mFolded:Z

.field public mFoldedWhenEnabled:Z

.field public final mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

.field public final mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

.field public final mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

.field public mLastCallState:I

.field public mLastScreenCurtainDisabledReason:I

.field public mLastScreenCurtainDisabledTime:J

.field public mLastUserActivityTime:J

.field public final mLock:Ljava/lang/Object;

.field final mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

.field public mPackageNameOnScreenCurtain:Ljava/lang/String;

.field public mPenInsertStateInitialized:Z

.field public final mReceiver:Lcom/android/server/power/ScreenCurtainController$3;

.field public mScreenCurtainEnabled:Z

.field public final mServiceIntent:Landroid/content/Intent;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToken:Landroid/os/IBinder;

.field public mWakefulness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;Lcom/android/server/power/ScreenCurtainController$Clock;Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/ScreenCurtainController;->mWakefulness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenCurtainController;->mLastCallState:I

    new-instance v0, Lcom/android/server/power/ScreenCurtainController$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/ScreenCurtainController$2;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mFoldStateListener:Lcom/android/server/power/ScreenCurtainController$2;

    new-instance v0, Lcom/android/server/power/ScreenCurtainController$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/ScreenCurtainController$3;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mReceiver:Lcom/android/server/power/ScreenCurtainController$3;

    new-instance v0, Lcom/android/server/power/ScreenCurtainController$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/ScreenCurtainController$4;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$4;

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    new-instance p2, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;-><init>(Lcom/android/server/power/ScreenCurtainController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    iput-object p4, p0, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    const-class p3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput-object p5, p0, Lcom/android/server/power/ScreenCurtainController;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    sget-boolean p5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz p5, :cond_0

    new-instance p5, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p5, p0, v0}, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenCurtainController;I)V

    check-cast p4, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance p2, Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    invoke-direct {p2, p0}, Lcom/android/server/power/ScreenCurtainController$NotificationListener;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    new-instance p2, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;

    invoke-direct {p2, p0}, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;-><init>(Lcom/android/server/power/ScreenCurtainController;)V

    iput-object p2, p0, Lcom/android/server/power/ScreenCurtainController;->mCallStateCallback:Lcom/android/server/power/ScreenCurtainController$CallStateCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    sget-object p1, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->INSTANCE:Lcom/android/server/power/HqmDataDispatcher;

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mDslToken:Landroid/os/IBinder;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final setScreenCurtainEnabledLocked(IILandroid/os/IBinder;Z)V
    .locals 10

    const-string/jumbo v0, "enableScreenCurtain: enabled="

    const-string v1, ", displayState="

    invoke-static {v0, v1, p4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ScreenCurtainController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    if-eq v0, p3, :cond_0

    const-string/jumbo p0, "enableScreenCurtain: Already in use by another client"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean p4, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    const/4 v4, 0x0

    if-eqz p4, :cond_4

    if-nez v0, :cond_6

    iput-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/ScreenCurtainController;->mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$4;

    invoke-interface {p3, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p3, "Failed to set linkToDeath"

    invoke-static {v1, p3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput v3, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledReason:I

    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p3, p1

    if-lez p3, :cond_2

    aget-object v4, p1, v3

    :cond_2
    const-string/jumbo p1, "com.samsung.android.displayassistant"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.displayassistant.presentation.ui.screencurtain.ScreenCurtainService"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo p3, "com.samsung.android.statsd"

    const-string/jumbo v1, "com.samsung.android.statsd.screencurtain.ScreenCurtainService"

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    iput-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mFoldedWhenEnabled:Z

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast p1, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledTime:J

    iput-boolean v3, p0, Lcom/android/server/power/ScreenCurtainController;->mPenInsertStateInitialized:Z

    :try_start_1
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/android/server/power/ScreenCurtainController;->mDeathRecipient:Lcom/android/server/power/ScreenCurtainController$4;

    invoke-interface {p1, p3, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_8

    :cond_5
    :goto_3
    iput-object v4, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    goto :goto_4

    :catch_1
    :try_start_2
    const-string p1, "Failed to unlink to death"

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_6
    :goto_4
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD:Z

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz p1, :cond_7

    if-nez p4, :cond_7

    iget p3, p0, Lcom/android/server/power/ScreenCurtainController;->mWakefulness:I

    if-ne p3, v2, :cond_7

    iget-boolean p3, p0, Lcom/android/server/power/ScreenCurtainController;->mFoldedWhenEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    if-eq p3, v1, :cond_7

    move v6, v2

    goto :goto_5

    :cond_7
    move v6, v3

    :goto_5
    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    move v7, p1

    goto :goto_6

    :cond_8
    move v7, v2

    :goto_6
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    new-instance v4, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;

    move-object v5, p0

    move v9, p2

    move v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/ScreenCurtainController;ZIZI)V

    iget-object p0, v5, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast p0, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, v4, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_9
    move-object v5, p0

    move v8, p4

    :goto_7
    if-nez v0, :cond_a

    iget-object p0, v5, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, v5, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast p2, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_a
    return-void

    :catchall_1
    move-exception v0

    move-object v5, p0

    move-object p1, v0

    :goto_8
    iput-object v4, v5, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    throw p1
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    instance-of p1, p1, Lcom/android/server/power/ForegroundPackageObserver;

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ForegroundPackageObserver update: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ScreenCurtainController"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
