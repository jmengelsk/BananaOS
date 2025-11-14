.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mListeners:Ljava/util/ArrayList;

.field public final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final startEdgeLighting()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    if-nez v5, :cond_1

    iput-boolean v2, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    sget-boolean v5, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v6, "EdgeLightingListenerManager"

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "onEdgeLightingStarted"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v5, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v5, :cond_3

    const-string/jumbo v4, "onEdgeLightingStarted : token is null"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopEdgeLighting()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    if-eqz v5, :cond_1

    iput-boolean v2, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    sget-boolean v5, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v6, "EdgeLightingListenerManager"

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "onEdgeLightingStopped"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v5, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v5, :cond_3

    const-string/jumbo v4, "onEdgeLightingStopped : token is null"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregister(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "unregister : pkg = "

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "EdgeLightingListenerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mListeners = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :cond_1
    :goto_1
    if-ge v5, v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-interface {p1, v7}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    const-string p0, "EdgeLightingListenerManager"

    const-string/jumbo p1, "unregister : cannot find the matched host"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo v0, "UR listener"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
