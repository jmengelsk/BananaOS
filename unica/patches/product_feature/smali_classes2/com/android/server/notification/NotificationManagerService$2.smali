.class public final Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final onReceive$com$android$server$notification$NotificationManagerService$10(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3c

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_308

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget v6, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v7, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x6

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3c
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string/jumbo v3, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_308

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget v6, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v7, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/16 v12, 0xf

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_65
    iget-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_6c
    if-ltz p2, :cond_be

    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    if-ne v1, v11, :cond_bc

    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/notification/SnoozeHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x33f

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    goto :goto_bc

    :catchall_b9
    move-exception v0

    move-object p0, v0

    goto :goto_c0

    :cond_bc
    :goto_bc
    add-int/2addr p2, v4

    goto :goto_6c

    :cond_be
    monitor-exit p1

    return-void

    :goto_c0
    monitor-exit p1
    :try_end_c1
    .catchall {:try_start_65 .. :try_end_c1} :catchall_b9

    throw p0

    :cond_c2
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    const-string/jumbo p0, "NotificationService"

    const-string/jumbo p1, "Receiving  ACTION_USER_SWITCHED"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d5
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, -0x2710

    if-eqz v3, :cond_128

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v5, :cond_120

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_ff

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V

    :cond_ff
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object p1, p1, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(ILandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService$Archive;->updateHistoryEnabled(IZ)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object p1, p1, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(ILandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(ILandroid/net/Uri;)V

    :cond_120
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    return-void

    :cond_128
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez p2, :cond_149

    goto :goto_15f

    :cond_149
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_156

    const-string/jumbo v2, "ZenModeHelper"

    const-string/jumbo v3, "onUserRemoved u="

    invoke-static {p2, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_156
    iget-object v3, p1, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_159
    iget-object p1, p1, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v3
    :try_end_15f
    .catchall {:try_start_159 .. :try_end_15f} :catchall_1d4

    :goto_15f
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_166
    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_16d
    if-ltz v3, :cond_18a

    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_188

    iget-object v1, p1, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_188

    :catchall_185
    move-exception v0

    move-object p0, v0

    goto :goto_1d2

    :cond_188
    :goto_188
    add-int/2addr v3, v4

    goto :goto_16d

    :cond_18a
    monitor-exit v2
    :try_end_18b
    .catchall {:try_start_166 .. :try_end_18b} :catchall_185

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserRemoved(I)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object v1, p1, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a7
    iget-object v2, p1, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p1, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p1, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V

    monitor-exit v1
    :try_end_1ba
    .catchall {:try_start_1a7 .. :try_end_1ba} :catchall_1ce

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/PreferencesHelper;->syncHasPriorityChannels()V

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    return-void

    :catchall_1ce
    move-exception v0

    move-object p0, v0

    :try_start_1d0
    monitor-exit v1
    :try_end_1d1
    .catchall {:try_start_1d0 .. :try_end_1d1} :catchall_1ce

    throw p0

    :goto_1d2
    :try_start_1d2
    monitor-exit v2
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_185

    throw p0

    :catchall_1d4
    move-exception v0

    move-object p0, v0

    :try_start_1d6
    monitor-exit v3
    :try_end_1d7
    .catchall {:try_start_1d6 .. :try_end_1d7} :catchall_1d4

    throw p0

    :cond_1d8
    const-string/jumbo v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_248

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-boolean v3, v2, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v3, :cond_203

    const-string/jumbo v3, "onUserUnlocked u="

    invoke-static {p2, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_203
    invoke-virtual {v2, p2, v1}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_308

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-boolean v1, p1, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v1, :cond_224

    const-string/jumbo v1, "onUserUnlocked u="

    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_224
    invoke-virtual {p1, p2, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result p1

    if-eqz p1, :cond_234

    goto :goto_247

    :cond_234
    iget-boolean p1, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz p1, :cond_244

    const-string/jumbo p1, "onUserUnlocked u="

    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_244
    invoke-virtual {p0, p2, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    :goto_247
    return-void

    :cond_248
    const-string/jumbo p1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a5

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-nez p2, :cond_27a

    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    const-string/jumbo v2, "toast"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mGoodCatchStateListener:Lcom/android/server/notification/NotificationManagerService$27;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo p1, "NotificationService"

    const-string/jumbo p2, "SemGoodCatchManager is created"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27a
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-nez p2, :cond_308

    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "NotificationManagerService"

    const-string/jumbo v2, "noti_blocked"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationManagerService$27;

    invoke-direct {p2, v0, v1, v2, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo p0, "NotificationService"

    const-string/jumbo p1, "mNotiSemGoodCatchManager is created"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a5
    const-string/jumbo p1, "samsung.intent.action.PHONE_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2be

    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq p1, p2, :cond_308

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCMCinCallState:Z

    return-void

    :cond_2be
    const-string/jumbo p1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e0

    const-string/jumbo p1, "NotificationService"

    const-string p2, "ACTION_DATE_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mOldNotiEnabled:Z

    if-eqz p1, :cond_308

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance p2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2e0
    const-string/jumbo p1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_308

    const-string/jumbo p1, "NotificationService"

    const-string p2, "ACTION_SOFT_RESET"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2f1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/INotificationManager;->resetDefaultAllowOngoingActivity()V
    :try_end_2fa
    .catch Landroid/os/RemoteException; {:try_start_2f1 .. :try_end_2fa} :catch_2fb

    return-void

    :catch_2fb
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "NotificationService"

    const-string p2, "ACTION_SOFT_RESET - getBinderService exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_308
    return-void
.end method

.method private final onReceive$com$android$server$notification$NotificationManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f7

    invoke-static {p1}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object p2, v0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p2, v1}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    iget-object p2, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1e
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_2e

    monitor-exit p2

    goto/16 :goto_a3

    :catchall_2a
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f5

    :cond_2e
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v7

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v5, :cond_3f

    iget v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-nez v6, :cond_3f

    iget-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v9, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    sget-boolean v3, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v3, :cond_8f

    const-string/jumbo v3, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Locale change - updating default zen rule name from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v3, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    move v3, v8

    goto :goto_3f

    :cond_95
    if-eqz v3, :cond_a2

    const-string/jumbo v3, "updateZenRulesOnLocaleChange"

    const/4 v2, 0x5

    const/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    :cond_a2
    monitor-exit p2
    :try_end_a3
    .catchall {:try_start_1e .. :try_end_a3} :catchall_2a

    :goto_a3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_ae
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_b4
    if-ge v7, v0, :cond_f1

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_ee

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v3, "miscellaneous"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040467

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    goto :goto_ee

    :catchall_eb
    move-exception v0

    move-object p0, v0

    goto :goto_f3

    :cond_ee
    :goto_ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    :cond_f1
    monitor-exit v1

    return-void

    :goto_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_ae .. :try_end_f4} :catchall_eb

    throw p0

    :goto_f5
    :try_start_f5
    monitor-exit p2
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_2a

    throw p0

    :cond_f7
    return-void
.end method

.method private final onReceive$com$android$server$notification$NotificationManagerService$9(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    goto/16 :goto_444

    :cond_c
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_58

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string/jumbo v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string/jumbo v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    const-string/jumbo v6, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    const-string/jumbo v6, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a

    const-string/jumbo v6, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_444

    goto :goto_5a

    :cond_56
    move v5, v4

    goto :goto_5a

    :cond_58
    move v0, v4

    move v5, v0

    :cond_5a
    :goto_5a
    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v6, 0x1

    if-eqz v0, :cond_70

    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_70

    move v8, v6

    goto :goto_71

    :cond_70
    move v8, v4

    :goto_71
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_92

    const-string/jumbo v0, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "action="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " removing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    move v10, v4

    move v11, v10

    move-object v9, v5

    move-object v5, v0

    move v0, v6

    goto/16 :goto_16b

    :cond_b0
    const-string/jumbo v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    move v11, v4

    move-object v9, v5

    move v10, v6

    move-object v5, v0

    move v0, v11

    goto/16 :goto_16b

    :cond_ce
    const-string/jumbo v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    move v10, v4

    move-object v9, v5

    move v11, v6

    move-object v5, v0

    move v0, v10

    goto/16 :goto_16b

    :cond_ec
    const-string/jumbo v0, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    const-string/jumbo v0, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_111

    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    move v10, v4

    move v9, v6

    goto :goto_121

    :cond_111
    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    move v9, v4

    move v10, v6

    :goto_121
    move v11, v10

    move v10, v9

    move-object v9, v5

    move-object v5, v0

    move v0, v4

    goto :goto_16b

    :cond_127
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_12f

    goto/16 :goto_444

    :cond_12f
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_137

    goto/16 :goto_444

    :cond_137
    if-eqz v5, :cond_159

    :try_start_139
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eq v14, v7, :cond_141

    move v5, v14

    goto :goto_142

    :cond_141
    move v5, v4

    :goto_142
    invoke-interface {v0, v9, v5}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_146
    .catch Ljava/lang/IllegalArgumentException; {:try_start_139 .. :try_end_146} :catch_14c
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_146} :catch_159

    if-eq v0, v6, :cond_14a

    if-nez v0, :cond_159

    :cond_14a
    move v0, v4

    goto :goto_15a

    :catch_14c
    move-exception v0

    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_159

    const-string/jumbo v5, "NotificationService"

    const-string v10, "Exception trying to look up app enabled setting"

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_159
    :cond_159
    move v0, v6

    :goto_15a
    new-array v5, v6, [Ljava/lang/String;

    aput-object v9, v5, v4

    new-array v9, v6, [I

    const-string/jumbo v10, "android.intent.extra.UID"

    invoke-virtual {v2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    aput v10, v9, v4

    move v10, v4

    move v11, v10

    :goto_16b
    if-eqz v5, :cond_196

    array-length v12, v5

    if-lez v12, :cond_196

    if-eqz v0, :cond_19b

    array-length v0, v5

    move v10, v4

    :goto_174
    if-ge v10, v0, :cond_196

    aget-object v12, v5, v10

    move v11, v8

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v13, v9

    sget v9, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    move v15, v10

    sget v10, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v17, v15

    const/4 v15, 0x5

    move/from16 v18, v11

    const/4 v11, 0x0

    move-object/from16 v7, v16

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v10, v17, 0x1

    move-object v9, v7

    move/from16 v8, v18

    const/4 v7, -0x1

    goto :goto_174

    :cond_196
    move/from16 v18, v8

    move-object v7, v9

    goto/16 :goto_2b4

    :cond_19b
    move/from16 v18, v8

    move-object v7, v9

    if-eqz v10, :cond_22d

    if-eqz v7, :cond_22d

    array-length v0, v7

    if-lez v0, :cond_22d

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1aa
    invoke-static {v7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v4

    :goto_1cc
    if-ge v13, v12, :cond_1fe

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v15, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    iget-object v4, v15, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    iput-boolean v6, v15, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1fa

    :catchall_1f8
    move-exception v0

    goto :goto_22b

    :cond_1fa
    :goto_1fa
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_1cc

    :cond_1fe
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_20a

    goto :goto_228

    :cond_20a
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_212
    if-ge v9, v4, :cond_228

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, v12, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v13, v10, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    const/16 v15, 0xe

    invoke-virtual {v12, v10, v15, v13}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_212

    :cond_228
    :goto_228
    monitor-exit v8

    goto/16 :goto_2b4

    :goto_22b
    monitor-exit v8
    :try_end_22c
    .catchall {:try_start_1aa .. :try_end_22c} :catchall_1f8

    throw v0

    :cond_22d
    if-eqz v11, :cond_2b4

    if-eqz v7, :cond_2b4

    array-length v0, v7

    if-lez v0, :cond_2b4

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_239
    invoke-static {v7}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_25b
    if-ge v12, v11, :cond_28d

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    iget-object v15, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28a

    iget-object v15, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28a

    const/4 v15, 0x0

    iput-boolean v15, v13, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28a

    :catchall_288
    move-exception v0

    goto :goto_2b2

    :cond_28a
    :goto_28a
    add-int/lit8 v12, v12, 0x1

    goto :goto_25b

    :cond_28d
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_299

    goto :goto_2b0

    :cond_299
    invoke-virtual {v0, v10}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v15, 0x0

    :goto_2a1
    if-ge v15, v8, :cond_2b0

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v9, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2a1

    :cond_2b0
    :goto_2b0
    monitor-exit v4

    goto :goto_2b4

    :goto_2b2
    monitor-exit v4
    :try_end_2b3
    .catchall {:try_start_239 .. :try_end_2b3} :catchall_288

    throw v0

    :cond_2b4
    :goto_2b4
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_2c7

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_361

    :cond_2c7
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2d3

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_2d1
    const/4 v8, -0x1

    goto :goto_2d5

    :cond_2d3
    move-object v0, v4

    goto :goto_2d1

    :goto_2d5
    if-eq v14, v8, :cond_2d9

    move v8, v14

    goto :goto_2da

    :cond_2d9
    const/4 v8, 0x0

    :goto_2da
    if-eqz v0, :cond_361

    :try_start_2dc
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v10, 0x80

    invoke-interface {v9, v0, v10, v11, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-eqz v9, :cond_361

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_361

    const-string/jumbo v10, "user"

    const-string/jumbo v11, "com.samsung.android.notification.listener.autobind"

    const-string/jumbo v12, "default"

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_361

    const-string/jumbo v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Notification listener autobind, pkg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;
    :try_end_319
    .catch Landroid/os/RemoteException; {:try_start_2dc .. :try_end_319} :catch_35d

    :try_start_319
    invoke-virtual {v9}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "com.samsung.android.permission.SEM_AUTO_BIND_NOTIFICATION_LISTENER_SERVICE"

    const/4 v11, -0x1

    invoke-static {v10, v9, v11, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v9
    :try_end_32d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_319 .. :try_end_32d} :catch_361
    .catch Landroid/os/RemoteException; {:try_start_319 .. :try_end_32d} :catch_35d

    if-nez v9, :cond_361

    :try_start_32f
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/high16 v10, 0xc0000

    invoke-virtual {v9, v10, v8, v0}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_33d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_361

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;
    :try_end_349
    .catch Landroid/os/RemoteException; {:try_start_32f .. :try_end_349} :catch_35d

    :try_start_349
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v11, "PACKAGE_CHANGED"

    iput-object v11, v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerFrom:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v10

    invoke-interface {v10, v0, v8, v6, v6}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_357
    .catch Landroid/os/RemoteException; {:try_start_349 .. :try_end_357} :catch_358

    goto :goto_33d

    :catch_358
    move-exception v0

    :try_start_359
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_35c
    .catch Landroid/os/RemoteException; {:try_start_359 .. :try_end_35c} :catch_35d

    goto :goto_33d

    :catch_35d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :catch_361
    :cond_361
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37c

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37c

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_424

    :cond_37c
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_387

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_388

    :cond_387
    move-object v0, v4

    :goto_388
    if-eqz v0, :cond_424

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_424

    const/4 v8, -0x1

    if-eq v14, v8, :cond_39b

    move v2, v14

    goto :goto_39c

    :cond_39b
    const/4 v2, 0x0

    :goto_39c
    const-string/jumbo v8, "NotificationService"

    const-string/jumbo v9, "Ongoing activity package intent receive - action = "

    const-string v10, " pkg = "

    const-string v11, " userId = "

    invoke-static {v9, v3, v10, v0, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c5

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v8, -0x1

    const/4 v15, 0x0

    invoke-virtual {v3, v8, v2, v0, v15}, Lcom/android/server/notification/NotificationManagerService;->updateOngoingActivityCurrentSupportAppList(IILjava/lang/String;Z)V

    goto :goto_408

    :cond_3c5
    const/4 v8, -0x1

    const/4 v15, 0x0

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityCurrentSupportAppList:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v15

    :goto_3dc
    if-ge v11, v10, :cond_3f6

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    if-ge v3, v12, :cond_3f3

    goto :goto_3f6

    :cond_3f3
    add-int/lit8 v15, v15, 0x1

    goto :goto_3dc

    :cond_3f6
    :goto_3f6
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityCurrentSupportAppList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v15, v3, :cond_403

    move v15, v8

    :cond_403
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v15, v2, v0, v6}, Lcom/android/server/notification/NotificationManagerService;->updateOngoingActivityCurrentSupportAppList(IILjava/lang/String;Z)V

    :goto_408
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.ONGOING_ACTIVITY_LIST_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v2, "Package is changed - Send broadcast ACTION_ONGOING_ACTIVITY_LIST_CHANGED"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_424
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput v14, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_444
    :goto_444
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->$r8$classId:I

    packed-switch v5, :pswitch_data_622

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_63

    :cond_12
    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1f
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v4, "key"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_60

    if-eqz v0, :cond_63

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v11

    const v9, 0x8040

    const/4 v10, 0x1

    const/16 v12, 0x13

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_63

    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    :goto_63
    return-void

    :pswitch_64  #0x6
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    :try_start_71
    const-string/jumbo v2, "setting_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "new_value"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "restored_from_sdk_int"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v5

    invoke-virtual {v4, v0, v5, v2, v3}, Lcom/android/server/notification/ManagedServices;->onSettingRestored(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v1

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;->onSettingRestored(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_9c} :catch_9d

    goto :goto_a6

    :catch_9d
    move-exception v0

    const-string/jumbo v1, "NotificationService"

    const-string v2, "Cannot restore managed services from settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a6
    :goto_a6
    return-void

    :pswitch_a7  #0x5
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "com.samsung.notification.REQUEST_REBIND_LISTENER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "packageName"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "className"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " component:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " user:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "NotificationService"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_f2
    const-string/jumbo v1, "REBIND_LISTENER"

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerFrom:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, v5, v2, v3, v3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_fe} :catch_ff

    goto :goto_103

    :catch_ff
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_103
    :goto_103
    return-void

    :pswitch_104  #0x4
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService$2;->onReceive$com$android$server$notification$NotificationManagerService$9(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_108  #0x3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService$2;->onReceive$com$android$server$notification$NotificationManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_10c  #0x2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "com.samsung.android.scpm.policy.UPDATE.NSF_CONVERSATION_APPS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "filterId"

    const-string v7, ", "

    const-string/jumbo v8, "rmsg"

    const-string/jumbo v9, "rcode"

    const-string/jumbo v10, "r"

    const-string v11, ""

    const-string v12, "ConversationAppPloicyToken"

    const-string/jumbo v13, "conversation_app_ploicy_pref"

    const-string/jumbo v15, "content://com.samsung.android.scpm.policy/"

    const-string/jumbo v14, "NotificationService"

    if-eqz v5, :cond_21b

    const-string/jumbo v0, "Receiving SCPM update intent - conversation"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string/jumbo v1, "policy filterId : "

    const-string/jumbo v5, "getConversationAppPolicyScpmData - cannot get new policy : "

    const-string v2, "/NSF_CONVERSATION_APPS"

    const-string/jumbo v3, "getConversationAppPolicyScpmData"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isScpmAvailable()Z

    move-result v3

    if-eqz v3, :cond_418

    :try_start_152
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_17d
    .catch Ljava/io/FileNotFoundException; {:try_start_152 .. :try_end_17d} :catch_1f0
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_17d} :catch_1ec
    .catchall {:try_start_152 .. :try_end_17d} :catchall_1e9

    if-nez v4, :cond_1ae

    const/4 v10, 0x1

    :try_start_180
    invoke-virtual {v0, v10, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(ILjava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1de

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1de

    :catchall_1a4
    move-exception v0

    :goto_1a5
    const/4 v14, 0x0

    goto/16 :goto_212

    :catch_1a8
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1f4

    :catch_1ab
    move-exception v0

    const/4 v1, 0x0

    goto :goto_203

    :cond_1ae
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(ILjava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1de

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1d1
    .catch Ljava/io/FileNotFoundException; {:try_start_180 .. :try_end_1d1} :catch_1ab
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1d1} :catch_1a8
    .catchall {:try_start_180 .. :try_end_1d1} :catchall_1a4

    const/4 v10, 0x1

    :try_start_1d2
    invoke-virtual {v0, v1, v10}, Lcom/android/server/notification/NotificationManagerService;->readConversationAppPolicyJson(Ljava/io/FileInputStream;Z)V
    :try_end_1d5
    .catch Ljava/io/FileNotFoundException; {:try_start_1d2 .. :try_end_1d5} :catch_1dc
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d5} :catch_1da
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_1d7

    move-object v14, v1

    goto :goto_1df

    :catchall_1d7
    move-exception v0

    move-object v14, v1

    goto :goto_212

    :catch_1da
    move-exception v0

    goto :goto_1f4

    :catch_1dc
    move-exception v0

    goto :goto_203

    :cond_1de
    :goto_1de
    const/4 v14, 0x0

    :goto_1df
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v4, :cond_418

    :goto_1e4
    :try_start_1e4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_418

    goto/16 :goto_418

    :catchall_1e9
    move-exception v0

    const/4 v4, 0x0

    goto :goto_1a5

    :catch_1ec
    move-exception v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_1f4

    :catch_1f0
    move-exception v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_203

    :goto_1f4
    :try_start_1f4
    const-string/jumbo v2, "getConversationAppPolicyScpmData - File open fail"

    invoke-static {v14, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1fd
    .catchall {:try_start_1f4 .. :try_end_1fd} :catchall_1d7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v4, :cond_418

    goto :goto_1e4

    :goto_203
    :try_start_203
    const-string/jumbo v2, "getConversationAppPolicyScpmData - File not found"

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_20c
    .catchall {:try_start_203 .. :try_end_20c} :catchall_1d7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v4, :cond_418

    goto :goto_1e4

    :goto_212
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v4, :cond_21a

    :try_start_217
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21a} :catch_21a

    :catch_21a
    :cond_21a
    throw v0

    :cond_21b
    const-string/jumbo v2, "com.samsung.android.scpm.policy.UPDATE.nsf-ongoing-dismiss-exception-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30b

    const-string/jumbo v0, "Receiving SCPM update intent - ongoing dismiss exception"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string/jumbo v1, "OngoingDismissException policy filterId : "

    const-string/jumbo v2, "getOngoingDismissExceptionPolicyScpmData - cannot get new policy : "

    const-string v3, "/nsf-ongoing-dismiss-exception-keys"

    const-string/jumbo v5, "getOngoingDismissExceptionPolicyScpmData"

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isScpmAvailable()Z

    move-result v5

    if-eqz v5, :cond_418

    :try_start_242
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v13, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_26d
    .catch Ljava/io/FileNotFoundException; {:try_start_242 .. :try_end_26d} :catch_2e0
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_26d} :catch_2dc
    .catchall {:try_start_242 .. :try_end_26d} :catchall_2d9

    if-nez v5, :cond_29e

    const/4 v10, 0x1

    :try_start_270
    invoke-virtual {v0, v10, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(ILjava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2ce

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ce

    :catchall_294
    move-exception v0

    :goto_295
    const/4 v14, 0x0

    goto/16 :goto_302

    :catch_298
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2e4

    :catch_29b
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2f3

    :cond_29e
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(ILjava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2ce

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2c1
    .catch Ljava/io/FileNotFoundException; {:try_start_270 .. :try_end_2c1} :catch_29b
    .catch Ljava/lang/Exception; {:try_start_270 .. :try_end_2c1} :catch_298
    .catchall {:try_start_270 .. :try_end_2c1} :catchall_294

    const/4 v10, 0x1

    :try_start_2c2
    invoke-virtual {v0, v1, v10}, Lcom/android/server/notification/NotificationManagerService;->readOngoingDismissExceptionPolicyJson(Ljava/io/FileInputStream;Z)V
    :try_end_2c5
    .catch Ljava/io/FileNotFoundException; {:try_start_2c2 .. :try_end_2c5} :catch_2cc
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2c5} :catch_2ca
    .catchall {:try_start_2c2 .. :try_end_2c5} :catchall_2c7

    move-object v14, v1

    goto :goto_2cf

    :catchall_2c7
    move-exception v0

    move-object v14, v1

    goto :goto_302

    :catch_2ca
    move-exception v0

    goto :goto_2e4

    :catch_2cc
    move-exception v0

    goto :goto_2f3

    :cond_2ce
    :goto_2ce
    const/4 v14, 0x0

    :goto_2cf
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_418

    :goto_2d4
    :try_start_2d4
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d7
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2d7} :catch_418

    goto/16 :goto_418

    :catchall_2d9
    move-exception v0

    const/4 v5, 0x0

    goto :goto_295

    :catch_2dc
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_2e4

    :catch_2e0
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_2f3

    :goto_2e4
    :try_start_2e4
    const-string/jumbo v2, "getOngoingDismissExceptionPolicyScpmData - File open fail"

    invoke-static {v14, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2ed
    .catchall {:try_start_2e4 .. :try_end_2ed} :catchall_2c7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_418

    goto :goto_2d4

    :goto_2f3
    :try_start_2f3
    const-string/jumbo v2, "getOngoingDismissExceptionPolicyScpmData - File not found"

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2fc
    .catchall {:try_start_2f3 .. :try_end_2fc} :catchall_2c7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_418

    goto :goto_2d4

    :goto_302
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_30a

    :try_start_307
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30a
    .catch Ljava/io/IOException; {:try_start_307 .. :try_end_30a} :catch_30a

    :catch_30a
    :cond_30a
    throw v0

    :cond_30b
    const-string/jumbo v2, "com.samsung.android.scpm.policy.UPDATE.nsf-notification-scpm-policies-6941"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3fa

    const-string/jumbo v0, "Receiving SCPM update intent - notification scpm policies"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string/jumbo v1, "ScpmNotification policy filterId : "

    const-string/jumbo v2, "getNotificationPoliciesScpmData - cannot get new policy : "

    const-string v3, "/nsf-notification-scpm-policies-6941"

    const-string/jumbo v5, "getNotificationPoliciesScpmData"

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isScpmAvailable()Z

    move-result v5

    if-eqz v5, :cond_418

    :try_start_332
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v13, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_35d
    .catch Ljava/io/FileNotFoundException; {:try_start_332 .. :try_end_35d} :catch_3cf
    .catch Ljava/lang/Exception; {:try_start_332 .. :try_end_35d} :catch_3cb
    .catchall {:try_start_332 .. :try_end_35d} :catchall_3c8

    if-nez v5, :cond_38e

    const/4 v10, 0x1

    :try_start_360
    invoke-virtual {v0, v10, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(ILjava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3be

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3be

    :catchall_384
    move-exception v0

    :goto_385
    const/4 v14, 0x0

    goto/16 :goto_3f1

    :catch_388
    move-exception v0

    const/4 v1, 0x0

    goto :goto_3d3

    :catch_38b
    move-exception v0

    const/4 v1, 0x0

    goto :goto_3e2

    :cond_38e
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->getScpmBundle(ILjava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3be

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3b1
    .catch Ljava/io/FileNotFoundException; {:try_start_360 .. :try_end_3b1} :catch_38b
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_3b1} :catch_388
    .catchall {:try_start_360 .. :try_end_3b1} :catchall_384

    const/4 v10, 0x1

    :try_start_3b2
    invoke-virtual {v0, v1, v10}, Lcom/android/server/notification/NotificationManagerService;->readScpmNotificationPoliciesJson(Ljava/io/FileInputStream;Z)V
    :try_end_3b5
    .catch Ljava/io/FileNotFoundException; {:try_start_3b2 .. :try_end_3b5} :catch_3bc
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3b5} :catch_3ba
    .catchall {:try_start_3b2 .. :try_end_3b5} :catchall_3b7

    move-object v14, v1

    goto :goto_3bf

    :catchall_3b7
    move-exception v0

    move-object v14, v1

    goto :goto_3f1

    :catch_3ba
    move-exception v0

    goto :goto_3d3

    :catch_3bc
    move-exception v0

    goto :goto_3e2

    :cond_3be
    :goto_3be
    const/4 v14, 0x0

    :goto_3bf
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_418

    :goto_3c4
    :try_start_3c4
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c7
    .catch Ljava/io/IOException; {:try_start_3c4 .. :try_end_3c7} :catch_418

    goto :goto_418

    :catchall_3c8
    move-exception v0

    const/4 v5, 0x0

    goto :goto_385

    :catch_3cb
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_3d3

    :catch_3cf
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_3e2

    :goto_3d3
    :try_start_3d3
    const-string/jumbo v2, "getNotificationPoliciesScpmData - File open fail"

    invoke-static {v14, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3dc
    .catchall {:try_start_3d3 .. :try_end_3dc} :catchall_3b7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_418

    goto :goto_3c4

    :goto_3e2
    :try_start_3e2
    const-string/jumbo v2, "getNotificationPoliciesScpmData - File not found"

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3eb
    .catchall {:try_start_3e2 .. :try_end_3eb} :catchall_3b7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_418

    goto :goto_3c4

    :goto_3f1
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v5, :cond_3f9

    :try_start_3f6
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f9
    .catch Ljava/io/IOException; {:try_start_3f6 .. :try_end_3f9} :catch_3f9

    :catch_3f9
    :cond_3f9
    throw v0

    :cond_3fa
    const-string/jumbo v2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_418

    const-string/jumbo v0, "Receiving SCPM clear data intent"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4, v1}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_418
    :cond_418
    :goto_418
    return-void

    :pswitch_419  #0x1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService$2;->onReceive$com$android$server$notification$NotificationManagerService$10(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_41d  #0x0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.intent.action.ONGOING_ACTIVITY_PACKAGE_ADD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x3

    const-string/jumbo v6, "NotificationService"

    if-eqz v3, :cond_436

    const-string/jumbo v2, "Receiving Ongoing Activity package add"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_459

    :cond_436
    const-string/jumbo v3, "com.samsung.intent.action.ONGOING_ACTIVITY_PACKAGE_REMOVE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_447

    const-string/jumbo v2, "Receiving Ongoing Activity package remove"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x2

    goto :goto_459

    :cond_447
    const-string/jumbo v3, "com.samsung.intent.action.ONGOING_ACTIVITY_PACKAGE_RESET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_458

    const-string/jumbo v2, "Receiving Ongoing Activity package reset"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v5

    goto :goto_459

    :cond_458
    move v10, v4

    :goto_459
    const-wide/16 v2, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    if-eq v10, v8, :cond_55e

    const/4 v8, 0x2

    if-ne v10, v8, :cond_465

    goto/16 :goto_55e

    :cond_465
    if-ne v10, v5, :cond_610

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-wide/16 v7, 0x1

    iput-wide v7, v0, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesVersion:J

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->loadDefaultOngoingActivitySupportAppList()V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityPolicyList:Ljava/util/List;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/PreferencesHelper;->setOngoingActivityAppList(Ljava/util/List;)V

    :try_start_479
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/INotificationManager;->resetDefaultAllowOngoingActivity()V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivitySettingValue:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityPolicyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_550

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v4

    array-length v8, v5

    const/4 v10, 0x1

    if-le v8, v10, :cond_4da

    const-string/jumbo v8, "off"

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v10

    array-length v9, v5

    const/4 v10, 0x2

    if-le v9, v10, :cond_4d8

    const-string/jumbo v9, "RON"

    aget-object v5, v5, v10

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d8

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityRonUsingAppList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d8

    :catch_4d5
    move-exception v0

    goto/16 :goto_556

    :cond_4d8
    :goto_4d8
    move v10, v8

    goto :goto_4db

    :cond_4da
    const/4 v10, 0x1

    :goto_4db
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v5, v7, v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    if-lez v5, :cond_529

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v8, v5, v7}, Lcom/android/server/notification/PreferencesHelper;->getOngoingActivityAllowedState(ILjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4fe

    const/4 v10, 0x1

    goto :goto_4ff

    :cond_4fe
    move v10, v4

    :goto_4ff
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivitySettingValue:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Receiving Ongoing Activity package reset - installed pkg = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isOn = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49a

    :cond_529
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivitySettingValue:Landroid/util/ArrayMap;

    if-lez v10, :cond_531

    const/4 v10, 0x1

    goto :goto_532

    :cond_531
    move v10, v4

    :goto_532
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Receiving Ongoing Activity package reset - not installed pkg = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49a

    :cond_550
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSaveScpmNotificationPoliciesFile()V
    :try_end_555
    .catch Landroid/os/RemoteException; {:try_start_479 .. :try_end_555} :catch_4d5

    goto :goto_559

    :goto_556
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_559
    const-string/jumbo v7, "Reset Ongoing Activity list to default"

    goto/16 :goto_610

    :cond_55e
    :goto_55e
    const-string/jumbo v5, "ongoingActivityPackage"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz v0, :cond_610

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v0, v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-lez v2, :cond_609

    const-wide/16 v8, 0x2

    const/4 v3, 0x1

    if-eq v10, v3, :cond_5b4

    const/4 v3, 0x2

    if-eq v10, v3, :cond_581

    :goto_57f
    move-object v3, v5

    goto :goto_5e2

    :cond_581
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5ad

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-wide v8, v3, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesVersion:J

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityPolicyList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, " is removed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    goto :goto_5e2

    :cond_5ad
    const-string v3, " is already removed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_57f

    :cond_5b4
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5db

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-wide v8, v3, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesVersion:J

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityAppList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityPolicyList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, " is added"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_57f

    :cond_5db
    const-string v3, " is already added"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_57f

    :goto_5e2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_610

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v5, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mOngoingActivityPolicyList:Ljava/util/List;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/PreferencesHelper;->setOngoingActivityAppList(Ljava/util/List;)V

    :try_start_5f1
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v5, v0, v2, v3}, Landroid/app/INotificationManager;->setAllowOngoingActivity(Ljava/lang/String;IZ)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSaveScpmNotificationPoliciesFile()V
    :try_end_603
    .catch Landroid/os/RemoteException; {:try_start_5f1 .. :try_end_603} :catch_604

    goto :goto_610

    :catch_604
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_610

    :cond_609
    const-string/jumbo v2, "Unistalled pkg : "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_610
    :goto_610
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_622
    .packed-switch 0x0
        :pswitch_41d  #00000000
        :pswitch_419  #00000001
        :pswitch_10c  #00000002
        :pswitch_108  #00000003
        :pswitch_104  #00000004
        :pswitch_a7  #00000005
        :pswitch_64  #00000006
    .end packed-switch
.end method
