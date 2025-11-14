.class public abstract Lcom/samsung/android/server/audio/AudioExecutor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sExecutor:Landroid/os/HandlerExecutor;


# direct methods
.method public static execute(Ljava/lang/Runnable;)V
    .locals 3

    const-class v0, Lcom/samsung/android/server/audio/AudioExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AS.AudioExecutor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    new-instance v2, Lcom/samsung/android/server/audio/AudioExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/audio/AudioExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
