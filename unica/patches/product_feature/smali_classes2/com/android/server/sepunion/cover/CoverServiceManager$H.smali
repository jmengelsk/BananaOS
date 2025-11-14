.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v0, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    iget-object p1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/cover/CoverState;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/2addr v4, v0

    check-cast v5, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mWakeLockRunnable:Lcom/android/server/sepunion/cover/CoverServiceManager$3;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    new-instance p1, Lcom/android/server/sepunion/cover/CoverServiceManager$3;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$3;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mWakeLockRunnable:Lcom/android/server/sepunion/cover/CoverServiceManager$3;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
