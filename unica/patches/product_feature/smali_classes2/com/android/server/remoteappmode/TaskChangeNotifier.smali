.class public final Lcom/android/server/remoteappmode/TaskChangeNotifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final lockObject:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mTaskChangeListeners:Ljava/util/Map;

.field public mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

.field public mTaskWatcherThread:Lcom/android/server/ServiceThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final deinitTaskWatcherThread()V
    .registers 6

    const-string v0, " unregisterTaskChangeListener: SecurityException "

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->interrupt()V

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->quitSafely()Z
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_11} :catch_14
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    goto :goto_2b

    :catchall_12
    move-exception p0

    goto :goto_38

    :catch_14
    move-exception v2

    :try_start_15
    const-string/jumbo v3, "TaskChangeNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    const-string/jumbo p0, "TaskChangeNotifier"

    const-string v0, " deinitTaskWatcherThread : mTaskWatcherThread = null"

    invoke-static {p0, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_12

    throw p0
.end method

.method public final initTaskWatcherThread()V
    .registers 7

    const-string/jumbo v0, "mTaskWatcherThread start : "

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    if-nez v2, :cond_30

    new-instance v2, Lcom/android/server/ServiceThread;

    const-string/jumbo v3, "remoteapp_taskwatcher"

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    const-string/jumbo v2, "TaskChangeNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    :cond_30
    :goto_30
    monitor-exit v1

    return-void

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_2e

    throw p0
.end method

.method public final linkListenerToDeath(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z
    .registers 12

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_16

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_16
    move-object v6, p2

    goto :goto_1b

    :catchall_18
    move-exception v0

    move-object p0, v0

    goto :goto_37

    :goto_1b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;-><init>(Lcom/android/server/remoteappmode/TaskChangeNotifier;Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;II)V

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p0, v4, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_32} :catch_35
    .catchall {:try_start_8 .. :try_end_32} :catchall_18

    const/4 p0, 0x1

    :try_start_33
    monitor-exit v1

    return p0

    :catch_35
    monitor-exit v1

    return v2

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_18

    throw p0
.end method

.method public final registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;Z)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherInternal()V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->initTaskWatcherThread()V

    new-instance v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcherThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    const-string/jumbo v3, "RemoteAppTaskWatcher"

    const-string/jumbo v4, "RemoteAppTaskWatcher: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyTaskDisplayChanged:Z

    iput-boolean v3, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    new-instance v3, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    invoke-direct {v3, v1, v2}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;-><init>(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    iput-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    if-eqz p3, :cond_38

    const/4 p3, 0x1

    iput-boolean p3, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyTaskDisplayChanged:Z

    iput-boolean p3, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mNeedToNotifyRecentTaskListUpdated:Z

    :cond_38
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->registerWatcherToActivityManager()V

    iget-object p3, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "RemoteAppTaskWatcher"

    const-string/jumbo v2, "registerTaskChangeNotifier"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p3, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->linkListenerToDeath(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final registerWatcherToActivityManager()V
    .registers 4

    const-string/jumbo v0, "TaskChangeNotifier"

    const-string/jumbo v1, "registerWatcherToActivityManager : "

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-interface {v1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_20} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    goto :goto_25

    :catch_23
    move-exception p0

    goto :goto_3b

    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " registerTaskWatcher: SecurityException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " registerTaskWatcher: RemoteException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    return-void
.end method

.method public final unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->unregisterWatcherInternal()V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2e

    :try_start_c
    iget-object p0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskChangeListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_2b

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v1

    const/4 p1, 0x1

    goto :goto_2c

    :catchall_29
    move-exception p0

    goto :goto_30

    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_29

    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2e

    return p1

    :catchall_2e
    move-exception p0

    goto :goto_32

    :goto_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_29

    :try_start_31
    throw p0

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_2e

    throw p0
.end method

.method public final unregisterWatcherInternal()V
    .registers 6

    const-string/jumbo v0, "TaskChangeNotifier"

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    if-eqz v1, :cond_7e

    const-string/jumbo v1, "unregisterWatcherFromActivityManager : "

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_24} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_24} :catch_25

    goto :goto_54

    :catch_25
    move-exception v1

    goto :goto_29

    :catch_27
    move-exception v1

    goto :goto_3f

    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " unregisterTaskWatcher: SecurityException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " unregisterTaskWatcher: RemoteException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "RemoteAppTaskWatcher"

    const-string/jumbo v3, "unregisterTaskChangeNotifier"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mCallback:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "****** TaskWatcher:clearMessages "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->mHandler:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;

    if-eqz v1, :cond_76

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_76
    iput-object v3, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier;->mTaskWatcher:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    const-string/jumbo p0, "unregisterWatcherInternal : mTaskWatcher = null"

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    return-void
.end method
