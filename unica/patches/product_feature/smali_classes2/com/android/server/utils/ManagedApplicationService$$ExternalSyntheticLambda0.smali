.class public final synthetic Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/ManagedApplicationService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/ManagedApplicationService;

    const-string v0, "Attempting to reconnect "

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    if-nez v2, :cond_f

    monitor-exit v1

    return-void

    :catchall_d
    move-exception p0

    goto :goto_41

    :cond_f
    iget-boolean v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    if-nez v2, :cond_15

    monitor-exit v1

    return-void

    :cond_15
    const-string/jumbo v2, "ManagedApplicationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    move-result v0

    if-eqz v0, :cond_39

    monitor-exit v1

    return-void

    :cond_39
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    monitor-exit v1

    return-void

    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_d

    throw p0
.end method
