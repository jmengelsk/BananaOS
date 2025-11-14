.class public final synthetic Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;->f$1:I

    const-string/jumbo v1, "Uid gone for "

    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v3, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v3, v3, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    const-string v4, "HintManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_2

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v8, v7, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v8, :cond_1

    :try_start_2
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, v7, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v7, v7, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/IntArray;->add(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :cond_2
    iget-object v6, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v6, v6, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager$Stub$Proxy;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_3

    :try_start_9
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/adpf/ISessionManager$Stub$Proxy;->trackedSessionsDied([I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_0
    :try_start_a
    const-string v5, "HintManagerService"

    const-string v6, "Failed to communicate with SessionManager"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_4
    if-ltz v5, :cond_4

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-virtual {v6}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_6
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v2, v1, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_4
    move-exception p0

    goto :goto_7

    :cond_8
    :goto_6
    monitor-exit v2

    return-void

    :goto_7
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw p0

    :goto_8
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw p0

    :goto_9
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p0
.end method
