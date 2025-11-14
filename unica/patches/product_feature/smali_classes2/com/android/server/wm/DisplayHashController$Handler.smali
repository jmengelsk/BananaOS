.class public final Lcom/android/server/wm/DisplayHashController$Handler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object v1, v0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
