.class public final Lcom/android/server/wm/CoreStateController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field public final mStatesForUser:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final getCoreStates(I)Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_28

    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    monitor-exit v0

    return-object p0

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_16

    throw p0
.end method

.method public final notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .registers 12

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoreStateController;->getCoreStates(I)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    if-eqz v1, :cond_38

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateFrom(Landroid/os/Bundle;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_1e
    iget-object v6, p0, Lcom/android/server/wm/CoreStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_24
    if-ge v2, v7, :cond_34

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    check-cast v8, Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v8, v4}, Lcom/android/server/wm/MultiWindowEnableController;->onCoreStateChanged(I)V

    goto :goto_24

    :catchall_32
    move-exception p0

    goto :goto_36

    :cond_34
    monitor-exit v5

    goto :goto_38

    :goto_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_32

    throw p0

    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v2, v2, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_43
    if-ltz v4, :cond_81

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    iget v5, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_56

    goto :goto_7e

    :cond_56
    iget v5, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    if-eq v5, p1, :cond_69

    if-eqz v1, :cond_7e

    if-nez v5, :cond_7e

    const-string/jumbo v5, "com.android.systemui"

    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    :cond_69
    :try_start_69
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_7e

    new-instance v5, Landroid/app/servertransaction/CoreStatesChangeItem;

    invoke-direct {v5, v0}, Landroid/app/servertransaction/CoreStatesChangeItem;-><init>(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    invoke-virtual {v6, v3, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7e
    :goto_7e
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    :cond_81
    if-eqz p2, :cond_86

    invoke-virtual {p2}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->run()V

    :cond_86
    return-void
.end method

.method public final onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2d

    iget-object p1, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    if-eqz p3, :cond_22

    :try_start_1f
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    :cond_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final setSharedPreferenceEdited()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v0

    move-object p0, v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final startUserLocked(IZZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startUserLocked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoreStateObserverController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_32

    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v1, :cond_32

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    :cond_32
    const/4 v1, 0x0

    if-nez p3, :cond_37

    if-eqz p2, :cond_3b

    :cond_37
    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    :cond_3b
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public final stopUserLocked(IZ)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopUserLocked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoreStateObserverController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v1, :cond_74

    iget-object v2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "endObserveCoreStateSettingsForSingleUser(u"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CoreStateSettingObserver"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5b
    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5b

    if-ne v3, p1, :cond_70

    goto :goto_5b

    :cond_70
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    goto :goto_5b

    :cond_74
    iget-object v1, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p2, :cond_a3

    iget-object p2, v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz p2, :cond_a3

    iget-object p2, p2, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8b
    :goto_8b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_8b

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8b

    :cond_a3
    iget-object p2, p0, Lcom/android/server/wm/CoreStateController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_a6
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    return-void

    :catchall_ad
    move-exception p0

    monitor-exit p2
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_ad

    throw p0
.end method
