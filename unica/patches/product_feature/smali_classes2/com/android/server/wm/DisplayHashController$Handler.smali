.class public final Lcom/android/server/wm/DisplayHashController$Handler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object v1, v0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    if-eqz v1, :cond_1d

    iget-object v0, v0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_1f

    :cond_1d
    :goto_1d
    monitor-exit p1

    return-void

    :goto_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1b

    throw p0

    :cond_21
    return-void
.end method
