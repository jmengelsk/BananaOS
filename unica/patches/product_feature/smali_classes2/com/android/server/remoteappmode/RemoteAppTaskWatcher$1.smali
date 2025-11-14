.class public final Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

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

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const-string/jumbo p0, "RemoteAppTaskWatcher"

    const-string p1, " ****** Error in received message "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_7

    iget-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    if-ge v1, p0, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    check-cast p1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_1
    iget-object p1, p1, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onRecentTaskListUpdated()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_7

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v2

    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_7

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_4
    iget-object v2, v2, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v2, v0, p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskDisplayChanged(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_2
    if-ge v1, p0, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_7
    iget-object v0, v0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskRemoved(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    if-eqz p0, :cond_7

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    :try_start_a
    iget-object v4, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v6, p1, :cond_4

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_6

    iget v4, v5, Landroid/app/TaskInfo;->displayId:I

    goto :goto_5

    :catch_3
    move-exception v3

    goto :goto_6

    :cond_6
    const/4 v4, -0x1

    :goto_5
    iget-object v3, v3, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v3, p1, v4}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->onTaskPlayed(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :goto_6
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :cond_7
    return-void
.end method
