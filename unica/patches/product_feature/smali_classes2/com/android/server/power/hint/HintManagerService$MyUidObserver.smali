.class final Lcom/android/server/power/hint/HintManagerService$MyUidObserver;
.super Landroid/app/UidObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mProcStatesCache:Landroid/util/SparseIntArray;

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final isUidForeground(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-gt p0, v1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final onUidGone(IZ)V
    .registers 4

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .registers 6

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;II)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
