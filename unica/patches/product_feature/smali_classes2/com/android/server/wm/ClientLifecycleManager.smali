.class public final Lcom/android/server/wm/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final mPendingTransactions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final dispatchPendingTransactions()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "clientTransactionsDispatched"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_28

    iget-object v4, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/servertransaction/ClientTransaction;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_28
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->schedule()Landroid/os/RemoteException;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to deliver transaction for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\ntransaction="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClientLifecycleManager"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    :cond_2f
    const/4 p0, 0x1

    return p0
.end method

.method public final scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v1, :cond_f

    goto :goto_19

    :cond_f
    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    iget-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    invoke-virtual {v1, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object p2

    invoke-interface {p2}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result p0

    goto :goto_35

    :cond_34
    const/4 p0, 0x1

    :goto_35
    if-eqz p0, :cond_38

    return p0

    :cond_38
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0
.end method

.method public final varargs scheduleTransactionItems(Landroid/app/IApplicationThread;Z[Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 7

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v1, :cond_f

    goto :goto_19

    :cond_f
    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    iget-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    array-length p1, p3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p1, :cond_25

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_25
    if-nez p2, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x1

    goto :goto_41

    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object p2

    invoke-interface {p2}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result p0

    :goto_41
    if-eqz p0, :cond_44

    return p0

    :cond_44
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0
.end method

.method public final shouldDispatchPendingTransactionsImmediately()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez p0, :cond_5

    goto :goto_14

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_c

    goto :goto_16

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_16

    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-nez p0, :cond_16

    :goto_14
    const/4 p0, 0x1

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method
