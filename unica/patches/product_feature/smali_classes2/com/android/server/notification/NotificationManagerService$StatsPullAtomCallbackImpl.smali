.class public final Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .registers 26

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/16 v3, 0x27f7

    const/16 v4, 0x2764

    if-eq v0, v4, :cond_1d

    if-eq v0, v3, :cond_1d

    packed-switch v0, :pswitch_data_2ae

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Unknown tagId="

    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    :pswitch_1d  #0x2757, 0x2758, 0x2759
    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const/4 v6, 0x0

    if-eq v0, v4, :cond_23a

    if-eq v0, v3, :cond_239

    const/16 v3, 0x3e8

    packed-switch v0, :pswitch_data_2b8

    goto/16 :goto_239

    :pswitch_2f  #0x2759
    iget-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    move v5, v6

    move v7, v5

    :goto_36
    :try_start_36
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_8b

    if-le v7, v3, :cond_41

    goto :goto_8b

    :cond_41
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_53
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_89

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    add-int/2addr v7, v2

    if-le v7, v3, :cond_63

    goto :goto_89

    :cond_63
    iget v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v16

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getUserLockedFields()I

    move-result v17

    const/16 v11, 0x2759

    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/util/StatsEvent;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :catchall_87
    move-exception v0

    goto :goto_8d

    :cond_89
    :goto_89
    add-int/2addr v5, v2

    goto :goto_36

    :cond_8b
    :goto_8b
    monitor-exit v4

    return v6

    :goto_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_36 .. :try_end_8e} :catchall_87

    throw v0

    :pswitch_8f  #0x2758
    iget-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    move v3, v6

    move v5, v3

    :goto_96
    :try_start_96
    iget-object v7, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_104

    const/16 v7, 0x7d0

    if-le v5, v7, :cond_a3

    goto :goto_104

    :cond_a3
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_102

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    add-int/2addr v5, v2

    if-le v5, v7, :cond_c5

    goto :goto_102

    :cond_c5
    iget v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v16

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v17

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v18

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_ec

    move/from16 v19, v2

    goto :goto_ee

    :cond_ec
    move/from16 v19, v6

    :goto_ee
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v20

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v21

    const/16 v11, 0x2758

    invoke-static/range {v11 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)Landroid/util/StatsEvent;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    :catchall_100
    move-exception v0

    goto :goto_106

    :cond_102
    :goto_102
    add-int/2addr v3, v2

    goto :goto_96

    :cond_104
    :goto_104
    monitor-exit v4

    return v6

    :goto_106
    monitor-exit v4
    :try_end_107
    .catchall {:try_start_96 .. :try_end_107} :catchall_100

    throw v0

    :pswitch_108  #0x2757
    iget-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    if-eqz v4, :cond_11d

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_11e

    :cond_11d
    const/4 v7, 0x0

    :goto_11e
    iget-object v8, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    move v9, v6

    move v10, v9

    :goto_123
    :try_start_123
    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x3

    if-ge v9, v11, :cond_12e

    if-le v10, v3, :cond_132

    :cond_12e
    move/from16 v22, v2

    goto/16 :goto_1da

    :cond_132
    add-int/2addr v10, v2

    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    new-instance v13, Landroid/util/Pair;

    iget v14, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v4, :cond_174

    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_174

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_161

    goto :goto_162

    :cond_161
    move v12, v6

    :goto_162
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-interface {v7, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move/from16 v18, v14

    :goto_16f
    move v15, v12

    goto :goto_179

    :catchall_171
    move-exception v0

    goto/16 :goto_237

    :cond_174
    const/16 v12, -0x3e8

    move/from16 v18, v6

    goto :goto_16f

    :goto_179
    iget-object v12, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v13, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v14, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v12, v14, v13}, Lcom/android/server/notification/PermissionHelper;->hasRequestedPermission(ILjava/lang/String;)Z

    move-result v12

    iget-object v13, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v14, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v13, v14, v12}, Lcom/android/server/notification/PreferencesHelper;->getFsiState(Ljava/lang/String;IZ)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v14, "android.permission.USE_FULL_SCREEN_INTENT"

    move/from16 v22, v2

    iget-object v2, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v3, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v13, v14, v2, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    iget-object v3, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v13, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v3, v13, v12, v2}, Lcom/android/server/notification/PreferencesHelper;->isFsiPermissionUserSet(Ljava/lang/String;III)Z

    move-result v20

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1b9

    const-string/jumbo v2, "NotificationPrefHelper"

    const-string/jumbo v3, "Pkg adjustment types improperly allowed without flag set"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b9
    new-array v2, v6, [I

    iget v14, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    iget v3, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    iget v11, v11, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    const/16 v13, 0x2757

    move-object/from16 v21, v2

    move/from16 v16, v3

    move/from16 v17, v11

    move/from16 v19, v12

    invoke-static/range {v13 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIZIZ[I)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v22

    const/16 v3, 0x3e8

    goto/16 :goto_123

    :goto_1da
    monitor-exit v8
    :try_end_1db
    .catchall {:try_start_123 .. :try_end_1db} :catchall_171

    if-eqz v4, :cond_239

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_239

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const/16 v3, 0x3e8

    if-le v10, v3, :cond_1f2

    goto :goto_239

    :cond_1f2
    add-int/lit8 v10, v10, 0x1

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    new-array v5, v6, [I

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_214

    move v15, v12

    goto :goto_215

    :cond_214
    move v15, v6

    :goto_215
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v13, 0x2757

    const/16 v16, -0x3e8

    const/16 v17, 0x0

    move-object/from16 v21, v5

    invoke-static/range {v13 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIZIZ[I)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e1

    :goto_237
    :try_start_237
    monitor-exit v8
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_171

    throw v0

    :cond_239
    :goto_239
    return v6

    :cond_23a
    move/from16 v22, v2

    iget-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_241
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v6

    :goto_248
    if-ge v4, v3, :cond_2aa

    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v9

    iget-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    const-string v12, ""

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v7, 0x2764

    const/4 v11, -0x1

    const/16 v13, 0x3e8

    const/4 v15, 0x0

    invoke-static/range {v7 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v7

    if-eqz v7, :cond_28b

    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    move/from16 v9, v22

    invoke-virtual {v0, v8, v7, v9, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    goto :goto_28b

    :catchall_289
    move-exception v0

    goto :goto_2ac

    :cond_28b
    :goto_28b
    iget-object v5, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_295
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v8, v7, v6, v1}, Lcom/android/server/notification/ZenModeHelper;->ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V

    goto :goto_295

    :cond_2a5
    const/16 v22, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_248

    :cond_2aa
    monitor-exit v2

    return v6

    :goto_2ac
    monitor-exit v2
    :try_end_2ad
    .catchall {:try_start_241 .. :try_end_2ad} :catchall_289

    throw v0

    :pswitch_data_2ae
    .packed-switch 0x2757
        :pswitch_1d  #00002757
        :pswitch_1d  #00002758
        :pswitch_1d  #00002759
    .end packed-switch

    :pswitch_data_2b8
    .packed-switch 0x2757
        :pswitch_108  #00002757
        :pswitch_8f  #00002758
        :pswitch_2f  #00002759
    .end packed-switch
.end method
