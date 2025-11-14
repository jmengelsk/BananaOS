.class public final Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string/jumbo v0, "RemoteAppTaskWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ****** RemoteAppTaskWatcher: Message Received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Task ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_d8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6c

    const/4 p1, 0x5

    if-eq v0, p1, :cond_39

    const-string/jumbo p0, "RemoteAppTaskWatcher"

    const-string p1, " ****** Error in received message "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_13e

    iget-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter p1

    :try_start_42
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_69

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_54
    if-ge v1, p0, :cond_13e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    check-cast p1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_5e
    iget-object p1, p1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onRecentTaskListUpdated()V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_54

    :catch_64
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_54

    :catchall_69
    move-exception p0

    :try_start_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0

    :cond_6c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_13e

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v2

    :try_start_79
    new-instance v3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_a0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_8b
    if-ge v1, p0, :cond_13e

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_95
    iget-object v2, v2, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v2, v0, p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskDisplayChanged(II)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9a} :catch_9b

    goto :goto_8b

    :catch_9b
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8b

    :catchall_a0
    move-exception p0

    :try_start_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p0

    :cond_a3
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_13e

    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_ae
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_ae .. :try_end_bc} :catchall_d5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_c0
    if-ge v1, p0, :cond_13e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_ca
    iget-object v0, v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskRemoved(I)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_cf} :catch_d0

    goto :goto_c0

    :catch_d0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c0

    :catchall_d5
    move-exception p0

    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw p0

    :cond_d8
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_13e

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_e3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_e3 .. :try_end_f1} :catchall_13b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_f5
    if-ge v1, v0, :cond_13e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_ff
    iget-object v4, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_128

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_117
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_128

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v6, p1, :cond_117

    goto :goto_129

    :cond_128
    const/4 v5, 0x0

    :goto_129
    if-eqz v5, :cond_130

    iget v4, v5, Landroid/app/TaskInfo;->displayId:I

    goto :goto_131

    :catch_12e
    move-exception v3

    goto :goto_137

    :cond_130
    const/4 v4, -0x1

    :goto_131
    iget-object v3, v3, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v3, p1, v4}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskPlayed(II)V
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_136} :catch_12e

    goto :goto_f5

    :goto_137
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f5

    :catchall_13b
    move-exception p0

    :try_start_13c
    monitor-exit v0
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw p0

    :cond_13e
    return-void
.end method
