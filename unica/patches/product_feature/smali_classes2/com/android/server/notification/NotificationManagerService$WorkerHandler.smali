.class public final Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_24c

    :pswitch_9  #0x3
    goto/16 :goto_221

    :pswitch_b  #0x9
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    iget v1, v1, Landroid/os/Message;->arg1:I

    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_31

    const-string/jumbo v4, "handleApplyRestore u="

    const-string v5, " payload="

    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_2a

    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    const-string/jumbo v5, "NotificationService"

    invoke-static {v4, v3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :try_start_31
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_3a

    goto/16 :goto_221

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_221

    :pswitch_40  #0x8
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

    if-eqz v6, :cond_73

    array-length v0, v6

    if-nez v0, :cond_77

    :cond_73
    move-object/from16 v16, v1

    goto/16 :goto_170

    :cond_77
    if-eqz v4, :cond_a8

    array-length v0, v6

    array-length v3, v7

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_81
    if-ge v3, v0, :cond_a4

    aget-object v11, v6, v3

    aget v12, v7, v3

    iget-object v13, v8, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_8a
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

    goto :goto_81

    :catchall_a1
    move-exception v0

    monitor-exit v13
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_a1

    throw v0

    :cond_a4
    :goto_a4
    move-object/from16 v16, v1

    goto/16 :goto_16a

    :cond_a8
    array-length v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_ab
    if-ge v13, v11, :cond_167

    aget-object v14, v6, v13

    :try_start_af
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v14, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    iget-object v15, v8, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b8} :catch_132

    :try_start_b8
    iget-object v3, v8, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {v5, v14}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz v3, :cond_109

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

    if-eqz v0, :cond_104

    new-instance v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v9, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10
    :try_end_ec
    .catchall {:try_start_b8 .. :try_end_ec} :catchall_100

    move-object/from16 v16, v1

    :try_start_ee
    iget v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v1, :cond_f4

    const/4 v1, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v1, 0x0

    :goto_f5
    invoke-static {v3}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v3

    invoke-direct {v0, v9, v10, v1, v3}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    goto :goto_107

    :catchall_fd
    move-exception v0

    :goto_fe
    const/4 v10, 0x1

    goto :goto_12c

    :catchall_100
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_fe

    :cond_104
    move-object/from16 v16, v1

    const/4 v0, 0x0

    :goto_107
    const/4 v12, 0x1

    goto :goto_10c

    :cond_109
    move-object/from16 v16, v1

    const/4 v0, 0x0

    :goto_10c
    monitor-exit v15
    :try_end_10d
    .catchall {:try_start_ee .. :try_end_10d} :catchall_fd

    if-eqz v0, :cond_118

    :try_start_10f
    iget-object v1, v8, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->packageName:Ljava/lang/String;

    if-nez v3, :cond_11a

    :cond_118
    const/4 v10, 0x1

    goto :goto_14b

    :cond_11a
    iget v9, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->userId:I

    invoke-virtual {v1, v3, v9}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_118

    iget-boolean v0, v0, Lcom/android/server/notification/PermissionHelper$PackagePermission;->granted:Z
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_124} :catch_129

    const/4 v10, 0x1

    :try_start_125
    invoke-virtual {v1, v3, v9, v0, v10}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_12e

    goto :goto_14b

    :catch_129
    move-exception v0

    :goto_12a
    const/4 v10, 0x1

    goto :goto_136

    :goto_12c
    :try_start_12c
    monitor-exit v15
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_130

    :try_start_12d
    throw v0
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_12e} :catch_12e

    :catch_12e
    move-exception v0

    goto :goto_136

    :catchall_130
    move-exception v0

    goto :goto_12c

    :catch_132
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_12a

    :goto_136
    const-string/jumbo v1, "NotificationPrefHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "could not restore "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14b
    :try_start_14b
    iget-object v0, v8, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v14, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0, v14}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v0

    if-eqz v0, :cond_161

    invoke-virtual {v8, v0}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v1

    or-int/2addr v12, v1

    invoke-virtual {v8, v0}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v0
    :try_end_160
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14b .. :try_end_160} :catch_161

    or-int/2addr v12, v0

    :catch_161
    :cond_161
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_ab

    :cond_167
    move v11, v12

    goto/16 :goto_a4

    :goto_16a
    if-eqz v11, :cond_171

    invoke-virtual {v8}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    goto :goto_171

    :goto_170
    const/4 v11, 0x0

    :cond_171
    :goto_171
    or-int v0, v4, v11

    if-eqz v4, :cond_219

    array-length v1, v6

    array-length v3, v7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_17c
    if-ge v3, v1, :cond_219

    aget-object v4, v6, v3

    aget v5, v7, v3

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_18b
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_191
    :goto_191
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v11, :cond_191

    check-cast v11, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v11

    if-ne v5, v11, :cond_191

    if-eqz v4, :cond_191

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_191

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    if-eqz v10, :cond_191

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_191

    :catchall_1c7
    move-exception v0

    goto :goto_217

    :cond_1c9
    monitor-exit v9
    :try_end_1ca
    .catchall {:try_start_18b .. :try_end_1ca} :catchall_1c7

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object v10, v8, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1cf
    iget-object v9, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_1fa

    iget-object v9, v8, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v5, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-eqz v9, :cond_1f8

    iget-object v9, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v5, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f8

    :catchall_1f6
    move-exception v0

    goto :goto_215

    :cond_1f8
    :goto_1f8
    monitor-exit v10

    goto :goto_211

    :cond_1fa
    iget-object v8, v8, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez v5, :cond_206

    monitor-exit v10

    goto :goto_211

    :cond_206
    new-instance v8, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;

    invoke-direct {v8, v5, v4}, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V

    iget-object v4, v5, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v10

    :goto_211
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17c

    :goto_215
    monitor-exit v10
    :try_end_216
    .catchall {:try_start_1cf .. :try_end_216} :catchall_1f6

    throw v0

    :goto_217
    :try_start_217
    monitor-exit v9
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_1c7

    throw v0

    :cond_219
    if-eqz v0, :cond_21e

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_21e
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_221
    return-void

    :pswitch_222  #0x7
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    return-void

    :pswitch_22c  #0x6
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    return-void

    :pswitch_234  #0x5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V

    return-void

    :pswitch_23c  #0x4
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V

    return-void

    :pswitch_242  #0x2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    return-void

    :pswitch_data_24c
    .packed-switch 0x2
        :pswitch_242  #00000002
        :pswitch_9  #00000003
        :pswitch_23c  #00000004
        :pswitch_234  #00000005
        :pswitch_22c  #00000006
        :pswitch_222  #00000007
        :pswitch_40  #00000008
        :pswitch_b  #00000009
    .end packed-switch
.end method
