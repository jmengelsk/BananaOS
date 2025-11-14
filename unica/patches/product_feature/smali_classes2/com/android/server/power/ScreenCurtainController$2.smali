.class public final Lcom/android/server/power/ScreenCurtainController$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$2;->this$0:Lcom/android/server/power/ScreenCurtainController;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$2;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object v0, v0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/power/ScreenCurtainController$2;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-boolean v2, v1, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    if-eq v2, p1, :cond_31

    iput-boolean p1, v1, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    iget-boolean p1, v1, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    if-eqz p1, :cond_31

    iget-object p1, v1, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$2;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast p0, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_33

    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_2f

    throw p0
.end method

.method public final onTableModeChanged(Z)V
    .registers 2

    return-void
.end method
