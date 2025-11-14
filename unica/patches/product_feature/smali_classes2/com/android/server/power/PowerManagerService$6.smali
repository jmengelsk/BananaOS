.class public final Lcom/android/server/power/PowerManagerService$6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/power/PowerManagerService$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$power$PowerManagerService$8()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "mEnsureTransitionToDozingReleaser"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private final run$com$android$server$power$PowerManagerService$9()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "mCoverAuthReady since boot"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Lcom/android/server/power/PowerManagerService$6;

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p0
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/server/power/PowerManagerService$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_15e

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    :cond_24
    return-void

    :pswitch_25  #0x6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_49

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    :cond_49
    return-void

    :pswitch_4a  #0x5
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$6;->run$com$android$server$power$PowerManagerService$9()V

    return-void

    :pswitch_4e  #0x4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$6;->run$com$android$server$power$PowerManagerService$8()V

    return-void

    :pswitch_52  #0x3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_57
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    if-ne v2, v3, :cond_6f

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    const-string/jumbo p0, "PowerManagerService"

    const-string/jumbo v1, "[api] HdrBrightnessLimitRunnable done"

    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_99

    :catchall_6d
    move-exception p0

    goto :goto_9a

    :cond_6f
    if-le v2, v3, :cond_73

    const/4 v3, -0x1

    goto :goto_74

    :cond_73
    const/4 v3, 0x1

    :goto_74
    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    :goto_99
    return-void

    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_57 .. :try_end_9b} :catchall_6d

    throw p0

    :pswitch_9c  #0x2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    if-ne v2, v3, :cond_b9

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    const-string/jumbo p0, "PowerManagerService"

    const-string/jumbo v1, "[api] BrightnessLimitRunnable done"

    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_e6

    :catchall_b7
    move-exception p0

    goto :goto_e7

    :cond_b9
    const/4 v4, -0x1

    if-le v2, v3, :cond_be

    move v3, v4

    goto :goto_bf

    :cond_be
    const/4 v3, 0x1

    :goto_bf
    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    :goto_e6
    return-void

    :goto_e7
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_a1 .. :try_end_e8} :catchall_b7

    throw p0

    :pswitch_e9  #0x1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_ee
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mprintWakeLockLocked(Lcom/android/server/power/PowerManagerService;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    const-wide/32 v4, 0x1b7740

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-wide v3, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_117
    move-exception p0

    monitor-exit v0
    :try_end_119
    .catchall {:try_start_ee .. :try_end_119} :catchall_117

    throw p0

    :pswitch_11a  #0x0
    const-string/jumbo v0, "UserActivityStateListenerState: "

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_122
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    const-string/jumbo v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_145
    if-ge v3, v2, :cond_159

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/os/PowerManagerInternal$UserActivityStateListener;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v5, v5, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    invoke-interface {v4, v5}, Landroid/os/PowerManagerInternal$UserActivityStateListener;->onChanged(I)V

    goto :goto_145

    :catchall_157
    move-exception p0

    goto :goto_15b

    :cond_159
    monitor-exit v1

    return-void

    :goto_15b
    monitor-exit v1
    :try_end_15c
    .catchall {:try_start_122 .. :try_end_15c} :catchall_157

    throw p0

    nop

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_11a  #00000000
        :pswitch_e9  #00000001
        :pswitch_9c  #00000002
        :pswitch_52  #00000003
        :pswitch_4e  #00000004
        :pswitch_4a  #00000005
        :pswitch_25  #00000006
    .end packed-switch
.end method
