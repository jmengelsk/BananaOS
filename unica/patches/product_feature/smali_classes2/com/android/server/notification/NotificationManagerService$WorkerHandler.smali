.class public final Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_15

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    iget v1, v1, Landroid/os/Message;->arg1:I

    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "handleApplyRestore u="

    const-string v5, " payload="

    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v5, "NotificationService"

    invoke-static {v4, v3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_15

    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [I

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_2

    array-length v0, v6

    if-nez v0, :cond_3

    :cond_2
    move-object/from16 v16, v1

    goto/16 :goto_d

    :cond_3
    if-eqz v4, :cond_5

    array-length v0, v6

    array-length v3, v7

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v11, v6, v3

    aget v12, v7, v3

    iget-object v13, v8, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_1
    iget-object v14, v8, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {v12, v11}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v8, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v5, v11}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v13

    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    move-object/from16 v16, v1

    goto/16 :goto_c

    :cond_5
    array-length v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v11, :cond_c

    aget-object v14, v6, v13

    :try_start_2
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v14, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    iget-object v15, v8, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v3, v8, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v5, v14}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz v3, :cond_8

    iput v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v5, v14}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    iget-object v9, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10, v9}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v9, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v1

    :try_start_4
    iget v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-static {v3}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v3

    invoke-direct {v0, v9, v10, v1, v3}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    const/4 v10, 0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_5

    :cond_7
    move-object/from16 v16, v1

    const/4 v0, 0x0

    :goto_6
    const/4 v12, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v16, v1

    const/4 v0, 0x0

    :goto_7
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_9

    :try_start_5
    iget-object v1, v8, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    if-nez v3, :cond_a

    :cond_9
    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    iget v9, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {v1, v3, v9}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_9

    iget-boolean v0, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v10, 0x1

    :try_start_6
    invoke-virtual {v1, v3, v9, v0, v10}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_8
    const/4 v10, 0x1

    goto :goto_a

    :goto_9
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_8

    :goto_a
    const-string/jumbo v1, "NotificationPrefHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "could not restore "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    :try_start_9
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v14, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0, v14}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v8, v0}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v1

    or-int/2addr v12, v1

    invoke-virtual {v8, v0}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    or-int/2addr v12, v0

    :catch_4
    :cond_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_3

    :cond_c
    move v11, v12

    goto/16 :goto_2

    :goto_c
    if-eqz v11, :cond_d

    invoke-virtual {v8}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    goto :goto_e

    :goto_d
    const/4 v11, 0x0

    :cond_d
    :goto_e
    or-int v0, v4, v11

    if-eqz v4, :cond_13

    array-length v1, v6

    array-length v3, v7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_13

    aget-object v4, v6, v3

    aget v5, v7, v3

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_a
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v11, :cond_e

    check-cast v11, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v11

    if-ne v5, v11, :cond_e

    if-eqz v4, :cond_e

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :catchall_4
    move-exception v0

    goto :goto_14

    :cond_f
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object v10, v8, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_b
    iget-object v9, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, v8, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v5, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v5, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_13

    :cond_10
    :goto_11
    monitor-exit v10

    goto :goto_12

    :cond_11
    iget-object v8, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez v5, :cond_12

    monitor-exit v10

    goto :goto_12

    :cond_12
    new-instance v8, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;

    invoke-direct {v8, v5, v4}, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V

    iget-object v4, v5, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v10

    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :goto_13
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    :goto_14
    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_14
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_15
    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    return-void

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V

    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
