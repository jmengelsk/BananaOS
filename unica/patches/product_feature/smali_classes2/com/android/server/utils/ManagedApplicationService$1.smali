.class public final Lcom/android/server/utils/ManagedApplicationService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "ManagedApplicationService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Service binding died: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object p1, p1, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_23
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v3, v2, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    if-eq v3, p0, :cond_2d

    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_42

    :cond_2d
    iget-object v2, v2, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0, v1, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    monitor-exit p1

    return-void

    :goto_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_2b

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10

    const-string v0, "Invalid binder from "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "ManagedApplicationService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Service connected: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v3, v3, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_25
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v5, v4, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    if-eq v5, p0, :cond_30

    monitor-exit v3

    return-void

    :catchall_2d
    move-exception p0

    goto/16 :goto_b1

    :cond_30
    iget-object v4, v4, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    new-instance v5, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1, v2, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    iget-object v2, v1, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    iget-object v4, v1, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/vr/VrManagerService$3;

    if-eqz v4, :cond_8a

    invoke-static {p2}, Landroid/service/vr/IVrListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrListener;

    move-result-object p2

    iput-object p2, v1, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v1, p2, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/vr/VrManagerService$3;

    iget-object p2, p2, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p2, Landroid/service/vr/IVrListener;

    if-nez p2, :cond_80

    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iput-object v2, p2, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    const-string/jumbo p2, "ManagedApplicationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    monitor-exit v3

    return-void

    :cond_80
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object p2, p1, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    iget-object v0, p1, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

    iput-object v2, p1, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

    move-object v2, p2

    goto :goto_8b

    :cond_8a
    move-object v0, v2

    :goto_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_25 .. :try_end_8c} :catchall_2d

    if-eqz v2, :cond_b0

    if-eqz v0, :cond_b0

    :try_start_90
    check-cast v2, Landroid/service/vr/IVrListener;

    iget-object p1, v0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    iget-boolean p2, v0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    iget v0, v0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    invoke-interface {v2, p1, p2, v0}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_90 .. :try_end_9b} :catch_9c
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9b} :catch_9c

    return-void

    :catch_9c
    move-exception p1

    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "ManagedApplicationService"

    const-string/jumbo v0, "Received exception from user service: "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    :cond_b0
    return-void

    :goto_b1
    :try_start_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_2d

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "ManagedApplicationService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Service disconnected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object p1, p1, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_23
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v3, v2, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    if-eq v3, p0, :cond_2d

    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_42

    :cond_2d
    iget-object v2, v2, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1, p0}, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    monitor-exit p1

    return-void

    :goto_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_2b

    throw p0
.end method
