.class public final Lcom/android/server/utils/ManagedApplicationService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBoundInterface:Landroid/os/IInterface;

.field public final mChecker:Lcom/android/server/vr/VrManagerService$3;

.field public final mClientLabel:I

.field public final mComponent:Landroid/content/ComponentName;

.field public mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

.field public final mContext:Landroid/content/Context;

.field public final mEventCb:Lcom/android/server/vr/VrManagerService$1;

.field public final mHandler:Lcom/android/server/vr/VrManagerService$2;

.field public mLastRetryTimeMs:J

.field public final mLock:Ljava/lang/Object;

.field public mNextRetryDurationMs:J

.field public mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

.field public mRetryCount:I

.field public final mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

.field public final mRetryType:I

.field public mRetrying:Z

.field public final mSettingsAction:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/vr/VrManagerService$3;ILcom/android/server/vr/VrManagerService$2;Lcom/android/server/vr/VrManagerService$1;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    iput-object p5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/vr/VrManagerService$3;

    iput p7, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    iput-object p8, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    iput-object p9, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    return-void
.end method


# virtual methods
.method public final checkAndDeliverServiceDiedCbLocked()Z
    .registers 5

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    if-eq v1, v0, :cond_10

    const/4 v0, 0x3

    if-ne v1, v0, :cond_e

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has died too much, not retrying."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ManagedApplicationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    if-eqz v0, :cond_3f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3f
    const/4 p0, 0x1

    return p0
.end method

.method public final connect()V
    .registers 10

    const-string/jumbo v0, "Unable to bind service: "

    const-string/jumbo v1, "Unable to bind service: "

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    if-eqz v3, :cond_11

    monitor-exit v2

    return-void

    :catchall_f
    move-exception p0

    goto :goto_87

    :cond_11
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iget v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    if-eqz v4, :cond_26

    const-string/jumbo v5, "android.intent.extra.client_label"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_26
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    if-eqz v4, :cond_40

    const-string/jumbo v4, "android.intent.extra.client_intent"

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_40
    new-instance v4, Lcom/android/server/utils/ManagedApplicationService$1;

    invoke-direct {v4, p0}, Lcom/android/server/utils/ManagedApplicationService$1;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    iput-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_f

    :try_start_47
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    const v7, 0x4000041

    invoke-virtual {v5, v3, v4, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_85

    const-string/jumbo v4, "ManagedApplicationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V
    :try_end_6e
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_6e} :catch_6f
    .catchall {:try_start_47 .. :try_end_6e} :catchall_f

    goto :goto_85

    :catch_6f
    move-exception v1

    :try_start_70
    const-string/jumbo v4, "ManagedApplicationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    :cond_85
    :goto_85
    monitor-exit v2

    return-void

    :goto_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_f

    throw p0
.end method

.method public final disconnect()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_17

    :cond_b
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    iput-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_9

    throw p0
.end method

.method public final queueRetryLocked()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xfa00

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    :cond_16
    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x3e80

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    return-void
.end method

.method public final startRetriesLocked()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    return-void
.end method
