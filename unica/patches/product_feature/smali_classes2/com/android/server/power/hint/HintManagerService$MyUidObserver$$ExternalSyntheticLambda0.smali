.class public final synthetic Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;->f$2:I

    const-string/jumbo v2, "Sent cleanup message for uid "

    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v4, v4, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v4, v5, :cond_29

    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    const v5, 0x7fffffff

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/4 v5, 0x6

    if-gt v4, v5, :cond_29

    if-le p0, v5, :cond_29

    move v6, v7

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_92

    :cond_29
    :goto_29
    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p0, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_40

    monitor-exit v3

    return-void

    :cond_40
    if-eqz v6, :cond_69

    iget-object v4, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v4, v4, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v4, "HintManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    invoke-virtual {v0, v1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_72
    if-ltz v1, :cond_90

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v7

    :goto_7f
    if-ltz v4, :cond_8d

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-virtual {v5, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowedByProcState(Z)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_7f

    :cond_8d
    add-int/lit8 v1, v1, -0x1

    goto :goto_72

    :cond_90
    monitor-exit v3

    return-void

    :goto_92
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_e .. :try_end_93} :catchall_27

    throw p0
.end method
