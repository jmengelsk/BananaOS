.class public final Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/32 v0, 0xea60

    const/4 v2, 0x1

    if-eqz p1, :cond_61

    if-eq p1, v2, :cond_13

    const-string p0, "AS.VolumeMonitor"

    const-string/jumbo p1, "Not supported message"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    new-instance p1, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {p1, v3, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_23
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    iget-boolean v4, v3, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    const/4 v5, 0x0

    if-nez v4, :cond_32

    iput v5, v3, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    monitor-exit p1

    return-void

    :catchall_30
    move-exception p0

    goto :goto_5f

    :cond_32
    invoke-virtual {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string v3, "AS.VolumeMonitor"

    const-string/jumbo v4, "Music is playing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p1

    return-void

    :cond_4f
    const-string v0, "AS.VolumeMonitor"

    const-string/jumbo v1, "Music is stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    iput v5, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    monitor-exit p1

    return-void

    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_23 .. :try_end_60} :catchall_30

    throw p0

    :cond_61
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_68
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    iget v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    if-ne v3, v2, :cond_74

    monitor-exit p1

    return-void

    :catchall_72
    move-exception p0

    goto :goto_81

    :cond_74
    iput v2, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p1

    return-void

    :goto_81
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_68 .. :try_end_82} :catchall_72

    throw p0
.end method
