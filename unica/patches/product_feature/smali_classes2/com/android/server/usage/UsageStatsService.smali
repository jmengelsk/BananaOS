.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final COMMON_USAGE_STATS_DIR:Ljava/io/File;

.field public static final DEBUG_RESPONSE_STATS:Z

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field public static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field public static final LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

.field public static final LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

.field public static final USE_DEDICATED_HANDLER_THREAD:Z


# instance fields
.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public mHandler:Lcom/android/server/usage/UsageStatsService$H;

.field public final mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

.field public mIoHandler:Landroid/os/Handler;

.field public final mIoHandlerCallback:Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

.field public final mLastTimeComponentUsedGlobal:Ljava/util/Map;

.field public final mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

.field public mRealTimeSnapshot:J

.field public final mReportedEvents:Landroid/util/SparseArray;

.field public mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public final mStandbyChangeListener:Lcom/android/server/usage/UsageStatsService$1;

.field public mSystemTimeSnapshot:J

.field public final mUidObserver:Lcom/android/server/usage/UsageStatsService$3;

.field public final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field public final mUsageEventListeners:Landroid/util/ArraySet;

.field public final mUsageReporters:Landroid/util/SparseArray;

.field public mUsageSource:I

.field public final mUsageStatsWatchers:Ljava/util/HashMap;

.field public final mUsageStatsWatchersComponent:Ljava/util/HashMap;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserState:Landroid/util/SparseArray;

.field public final mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mVisibleActivities:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mgetTrimmedString(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x7f

    if-le p0, v0, :cond_10

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    return-object p1
.end method

.method public static -$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V
    .registers 9

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    const-string/jumbo v3, "globalcomponentusage"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const-string/jumbo v2, "UsageStatsService"

    if-nez v1, :cond_31

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/usage/UsageStatsService;->LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_89

    :cond_2b
    const-string/jumbo v1, "Reading globalcomponentusage file from old location"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :try_start_36
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_74

    :try_start_3a
    invoke-static {v3, v1}, Lcom/android/server/usage/UsageStatsProtoV2;->readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_68

    if-eqz v3, :cond_42

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_42
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_4e
    if-ge v4, v3, :cond_89

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    aget-object v6, v1, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v7, v1, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_65} :catch_74

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :catchall_68
    move-exception p0

    if-eqz v3, :cond_73

    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v1

    :try_start_70
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    throw p0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_74

    :catch_74
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Could not read "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-void
.end method

.method public static -$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_f
    move-exception p0

    goto/16 :goto_ad

    :cond_12
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p2}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    goto :goto_27

    :catchall_24
    move-exception p0

    goto/16 :goto_ab

    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_24

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    goto :goto_a9

    :cond_3f
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    if-nez v3, :cond_4b

    monitor-exit v0

    return-void

    :cond_4b
    invoke-virtual {v3, v1, v2, p2}, Lcom/android/server/usage/UserUsageStatsService;->onPackageRemoved(JLjava/lang/String;)I

    move-result p2

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_3d

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a8

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/server/usage/UsageStatsIdleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    const-string/jumbo v0, "usagestats_prune"

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_a8
    return-void

    :goto_a9
    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_3d

    throw p0

    :goto_ab
    :try_start_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_24

    throw p0

    :goto_ad
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_f

    throw p0
.end method

.method public static -$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 14

    const-string v0, "Attempted to unlock stopped or removed user "

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/server/usage/UsageStatsIdleService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, p1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    const-wide/16 v7, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    const-string/jumbo v4, "usagestats_mapping"

    const-class v6, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v4}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_6d
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v3, :cond_81

    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_7f

    goto :goto_81

    :cond_7f
    move v6, v7

    goto :goto_82

    :cond_81
    :goto_81
    move v6, v2

    :goto_82
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_85
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1c

    invoke-direct {v9, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string/jumbo v1, "android"

    iput-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->migrateStatsToSystemCeIfNeededLocked(I)V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const-string/jumbo v1, "loadPendingEvents"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p1, v10}, Lcom/android/server/usage/UsageStatsService;->loadPendingEventsLocked(ILjava/util/LinkedList;)V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_b8
    .catchall {:try_start_85 .. :try_end_b8} :catchall_f6

    :try_start_b8
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_ce

    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_ce

    :catchall_cb
    move-exception v0

    move-object p0, v0

    goto :goto_12d

    :cond_ce
    :goto_ce
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_b8 .. :try_end_cf} :catchall_cb

    :try_start_cf
    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsService;->initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    if-nez p0, :cond_f9

    const-string/jumbo p0, "UsageStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return-void

    :catchall_f6
    move-exception v0

    move-object p0, v0

    goto :goto_12f

    :cond_f9
    :goto_f9
    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_109

    invoke-virtual {v10}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(ILandroid/app/usage/UsageEvents$Event;)V

    goto :goto_f9

    :cond_109
    invoke-virtual {v1, v2, v9}, Lcom/android/server/usage/UsageStatsService;->reportEvent(ILandroid/app/usage/UsageEvents$Event;)V

    new-instance p1, Ljava/io/File;

    invoke-static {v2}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "usagestats"

    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    if-nez v11, :cond_120

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    :cond_120
    monitor-exit v8
    :try_end_121
    .catchall {:try_start_cf .. :try_end_121} :catchall_f6

    iget-object p0, v1, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_12d
    :try_start_12d
    monitor-exit v1
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_cb

    :try_start_12e
    throw p0

    :goto_12f
    monitor-exit v8
    :try_end_130
    .catchall {:try_start_12e .. :try_end_130} :catchall_f6

    throw p0
.end method

.method public static -$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_b
    if-ltz v2, :cond_39

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/AppLaunchEstimateInfo;

    iget-wide v5, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_1a

    goto :goto_36

    :cond_1a
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v5

    iget-wide v7, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, v8}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    iget-object v4, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_39
    if-eqz v3, :cond_42

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_42
    return-void
.end method

.method public static -$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    const-string/jumbo v0, "persist.debug.use_dedicated_handler_thread"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->USE_DEDICATED_HANDLER_THREAD:Z

    const-string/jumbo v0, "UsageStatsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/usage/UsageStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;-><init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchersComponent:Ljava/util/HashMap;

    new-instance p1, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Landroid/util/SparseSetArray;

    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    new-instance p1, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/UsageStatsService$1;

    new-instance p1, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandlerCallback:Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Lcom/android/server/usage/UsageStatsService$3;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    return-void
.end method

.method public static buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyRecursively(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_42

    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p0, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to move usage stats file : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_42
    array-length p1, v0

    sub-int/2addr p1, v1

    :goto_44
    if-ltz p1, :cond_87

    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7e

    new-instance v1, Ljava/io/File;

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_66

    goto :goto_7f

    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create usage stats directory during migration: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    move-object v1, p0

    :cond_7f
    :goto_7f
    aget-object v2, v0, p1

    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_44

    :cond_87
    return-void
.end method

.method public static deleteLegacyUserDir(I)V
    .registers 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "Error occurred while attempting to delete legacy usage stats dir for user "

    const-string/jumbo v1, "UsageStatsService"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_18

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "UsageStatsService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method

.method public static loadPendingEventsLocked(ILjava/util/LinkedList;)V
    .registers 11

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_98

    array-length v1, v0

    if-nez v1, :cond_17

    goto/16 :goto_98

    :cond_17
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_98

    new-instance v3, Landroid/util/AtomicFile;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :try_start_2a
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_77

    :try_start_2e
    sget v5, Lcom/android/server/usage/UsageStatsProtoV2;->$r8$clinit:I

    new-instance v5, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v5, v3}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_35
    :goto_35
    invoke-virtual {v5}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_6b

    const/4 v7, -0x1

    if-eq v6, v7, :cond_62

    const/16 v7, 0x17

    if-eq v6, v7, :cond_41

    goto :goto_35

    :cond_41
    const-wide v6, 0x20b00000017L

    :try_start_46
    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v8

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz v8, :cond_35

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_56} :catch_57
    .catchall {:try_start_46 .. :try_end_56} :catchall_6b

    goto :goto_35

    :catch_57
    move-exception v6

    :try_start_58
    const-string/jumbo v7, "UsageStatsProtoV2"

    const-string/jumbo v8, "Unable to parse some pending events from proto."

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_6b

    goto :goto_35

    :cond_62
    if-eqz v3, :cond_67

    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_67
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6a} :catch_77

    goto :goto_95

    :catchall_6b
    move-exception v4

    if-eqz v3, :cond_76

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v3

    :try_start_73
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw v4
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_77

    :catch_77
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UsageStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_98
    :goto_98
    return-void
.end method

.method public static logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x7

    if-eq p0, v0, :cond_27

    const/16 v0, 0x8

    if-eq p0, v0, :cond_27

    const/16 v0, 0x9

    if-eq p0, v0, :cond_27

    const/16 v0, 0xb

    if-eq p0, v0, :cond_27

    const/16 v0, 0x13

    if-eq p0, v0, :cond_27

    const/16 v0, 0x14

    if-eq p0, v0, :cond_27

    const-string/jumbo v0, "Unsupported usage event logging: "

    const-string/jumbo v1, "UsageStatsService"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :cond_27
    const/16 p0, 0x10d

    const-string v1, ""

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static migrateStatsToSystemCeIfNeededLocked(I)V
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string/jumbo v2, "Usage stats directory does not exist: "

    if-nez v1, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_32

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "migrated"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x4

    const-string/jumbo v5, "UsageStatsService"

    if-eqz v3, :cond_ad

    :try_start_44
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4e} :catch_5f

    :try_start_4e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v4, :cond_63

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyUserDir(I)V
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_61

    :try_start_5b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    return-void

    :catch_5f
    move-exception v3

    goto :goto_70

    :catchall_61
    move-exception v6

    goto :goto_67

    :cond_63
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_66} :catch_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_66} :catch_5f

    goto :goto_ad

    :goto_67
    :try_start_67
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v3

    :try_start_6c
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6f
    throw v6
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_70} :catch_5f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_5f

    :goto_70
    const-string v6, "Failed to read migration status file, possibly corrupted."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_ad

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8b

    goto :goto_ad

    :cond_8b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a1
    const-string/jumbo p0, "Unable to delete usage stats CE directory."

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_ad
    :goto_ad
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Starting migration to system CE for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    :cond_d3
    :try_start_d3
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_dd} :catch_104

    :try_start_dd
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_ec
    .catchall {:try_start_dd .. :try_end_ec} :catchall_106

    :try_start_ec
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_104

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished migration to system CE for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyUserDir(I)V

    return-void

    :catch_104
    move-exception p0

    goto :goto_110

    :catchall_106
    move-exception p0

    :try_start_107
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10b

    goto :goto_10f

    :catchall_10b
    move-exception v0

    :try_start_10c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10f
    throw p0
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_110} :catch_104

    :goto_110
    const-string v0, "Failed to write migrated status file"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v2, :cond_40

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-lez v6, :cond_40

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Time changed in by "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UsageStatsService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    :cond_40
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method public final flushToDisk()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x19

    invoke-direct {v1, v4, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string/jumbo v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    return-void

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final flushToDiskLocked()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2f

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    goto :goto_2c

    :cond_1f
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public final getEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p2

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v7, v1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v2, v8

    if-ltz v4, :cond_1f

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_1e

    goto :goto_1f

    :cond_1e
    return-wide v2

    :cond_1f
    :goto_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v10, 0x240c8400

    sub-long v3, v5, v10

    const-wide v12, 0x757b12c00L

    add-long/2addr v12, v5

    const-string v2, "Failed to query earliest package events for locked user "

    iget-object v14, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_33
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    move-wide/from16 v16, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_58

    const-string/jumbo v3, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    goto :goto_65

    :catchall_56
    move-exception v0

    goto :goto_b6

    :cond_58
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    if-nez v2, :cond_60

    monitor-exit v14

    goto :goto_65

    :cond_60
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v11

    monitor-exit v14
    :try_end_65
    .catchall {:try_start_33 .. :try_end_65} :catchall_56

    :goto_65
    if-nez v11, :cond_68

    goto :goto_a2

    :cond_68
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {v11, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    sub-long v3, v5, v3

    const-wide/32 v14, 0x5265c00

    cmp-long v3, v3, v14

    const/4 v4, 0x1

    if-lez v3, :cond_83

    move v3, v4

    goto :goto_84

    :cond_83
    const/4 v3, 0x0

    :cond_84
    :goto_84
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v10

    if-ne v10, v4, :cond_9c

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v18

    if-eqz v3, :cond_93

    add-long v18, v18, v16

    goto :goto_95

    :cond_93
    add-long v18, v18, v14

    :goto_95
    cmp-long v10, v18, v5

    if-lez v10, :cond_9c

    move-wide/from16 v12, v18

    goto :goto_a2

    :cond_9c
    invoke-virtual {v11, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v10

    if-nez v10, :cond_84

    :cond_a2
    :goto_a2
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v7, v1, v12, v13}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v3, v12, v8

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    return-wide v12

    :goto_b6
    :try_start_b6
    monitor-exit v14
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_56

    throw v0
.end method

.method public final getInstalledPackages(I)Ljava/util/HashMap;
    .registers 7

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_2d

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_2d
    return-object p1
.end method

.method public final getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    .registers 6

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-nez v1, :cond_24

    new-instance v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;-><init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    :cond_24
    :goto_24
    monitor-exit v0

    return-object v1

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public final getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;
    .registers 4

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch usage stats service for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". The user might not have been initialized yet."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-object p0
.end method

.method public final initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UsageStatsService;)V

    :try_start_15
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;Z)V

    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p2

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    const-string/jumbo p3, "UsageStatsService"

    if-nez p0, :cond_30

    const-string p0, "Attempted to initialize service for stopped or removed user "

    invoke-static {p1, p0, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    const-string p0, "Failed to initialized unlocked user "

    invoke-static {p1, p0, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public final onBootPhase(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    if-nez p1, :cond_1a

    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    :cond_1a
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    sget-object p1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_54

    :try_start_40
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Lcom/android/server/usage/UsageStatsService$3;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-interface {p1, v0, v2, v3, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4c} :catch_4d

    goto :goto_69

    :catch_4d
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Missing procfs interface: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    :cond_6c
    return-void
.end method

.method public final onStart()V
    .registers 13

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->USE_DEDICATED_HANDLER_THREAD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_71

    new-instance v2, Lcom/android/server/usage/UsageStatsService$H;

    sget-object v3, Lcom/android/server/usage/UsageStatsHandlerThread;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3c
    sget-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    if-eqz v4, :cond_41

    goto :goto_62

    :cond_41
    new-instance v4, Lcom/android/server/usage/UsageStatsHandlerThread;

    const-string/jumbo v5, "android.usagestats"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->start()V

    sget-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-wide/32 v5, 0x80000

    invoke-virtual {v4, v5, v6}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x7530

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :goto_62
    sget-object v4, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_3c .. :try_end_65} :catchall_6d

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    goto :goto_7e

    :catchall_6d
    move-exception v0

    move-object p0, v0

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6d

    throw p0

    :cond_71
    new-instance v2, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    :goto_7e
    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandlerCallback:Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    new-instance v3, Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;-><init>(Lcom/android/server/usage/AppStandbyInternal;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    new-instance v2, Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$2;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/UsageStatsService$1;

    invoke-interface {v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_de

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    goto :goto_df

    :cond_de
    move-object v5, v4

    :goto_df
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v5, v8, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;

    const/4 v1, 0x1

    invoke-direct {v7, p0, v1}, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;I)V

    if-eqz v0, :cond_102

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    move-object v11, v1

    goto :goto_103

    :cond_102
    move-object v11, v4

    :goto_103
    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;I)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_11d

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    :cond_11d
    move-object v11, v4

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->publishBinderServices()V

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUserRemoved(I)V
    .registers 6

    const-string/jumbo v0, "Removing user "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    const-string/jumbo v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and all data."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v2, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_92

    :try_start_27
    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_94

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_92

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_31
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_90

    :cond_46
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_44

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v1

    :try_start_4a
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_8d

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onUserRemoved(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onUserRemoved(I)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "usagestats_prune"

    sget v2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    const-class v2, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_74

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_74
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "usagestats_mapping"

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_8c

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_8c
    return-void

    :catchall_8d
    move-exception p0

    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0

    :goto_90
    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_44

    throw p0

    :catchall_92
    move-exception p0

    goto :goto_97

    :catchall_94
    move-exception p0

    :try_start_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw p0

    :goto_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_96 .. :try_end_98} :catchall_92

    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    goto :goto_6b

    :cond_1a
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x1d

    invoke-direct {v1, v4, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string/jumbo v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(ILandroid/app/usage/UsageEvents$Event;)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    iget-object v1, v1, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    :cond_3f
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_18

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_52
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_67

    :catchall_65
    move-exception p0

    goto :goto_69

    :cond_67
    :goto_67
    monitor-exit v1

    return-void

    :goto_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_65

    throw p0

    :goto_6b
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_18

    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I
    .registers 5

    add-int/lit8 p2, p2, 0x1

    const/16 v0, -0x2710

    :try_start_4
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_a} :catch_2d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_a} :catch_2d

    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_19

    const-string/jumbo p0, "the specified user does not exist."

    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    const-string/jumbo p0, "the specified user is currently in a locked state."

    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2c
    return p1

    :catch_2d
    const-string/jumbo p0, "invalid user specified."

    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final persistGlobalComponentUsageLocked()V
    .registers 6

    const-string v0, "Failed to write "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_72

    :cond_d
    sget-object v1, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_34

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Common usage stats directory does not exist: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "globalcomponentusage"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_42
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_59
    .catchall {:try_start_42 .. :try_end_46} :catchall_57

    :try_start_46
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writeGlobalComponentUsage(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4e} :catch_55
    .catchall {:try_start_46 .. :try_end_4e} :catchall_52

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_52
    move-exception p0

    move-object v3, v4

    goto :goto_73

    :catch_55
    move-object v3, v4

    goto :goto_59

    :catchall_57
    move-exception p0

    goto :goto_73

    :catch_59
    :goto_59
    :try_start_59
    const-string/jumbo p0, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_57

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_72
    return-void

    :goto_73
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0
.end method

.method public final persistPendingEventsLocked(I)V
    .registers 9

    const-string v0, "Failed to write "

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_ba

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_ba

    :cond_14
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "usagestats"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const-string/jumbo v4, "UsageStatsService"

    if-nez v3, :cond_62

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_62

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to create "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "User "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was already removed! Discarding pending events"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void

    :cond_62
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pendingevents_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_80
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_97
    .catchall {:try_start_80 .. :try_end_84} :catchall_91

    :try_start_84
    invoke-static {v5, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V

    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8a} :catch_96
    .catchall {:try_start_84 .. :try_end_8a} :catchall_93

    :try_start_8a
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_97
    .catchall {:try_start_8a .. :try_end_8d} :catchall_91

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_91
    move-exception p0

    goto :goto_b6

    :catchall_93
    move-exception p0

    move-object v3, v5

    goto :goto_b6

    :catch_96
    move-object v3, v5

    :catch_97
    :try_start_97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_97 .. :try_end_b2} :catchall_91

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_ba

    :goto_b6
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0

    :cond_ba
    :goto_ba
    return-void
.end method

.method public publishBinderServices()V
    .registers 3

    new-instance v0, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    const-string/jumbo v1, "usagestats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 17

    const-string v0, "Failed to query configuration stats for locked user "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    const-string/jumbo p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v3

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    :cond_29
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    if-nez v2, :cond_31

    monitor-exit v1

    return-object v3

    :cond_31
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    move-wide v6, p3

    move-wide v8, p5

    invoke-static/range {v4 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_48

    :cond_3e
    sget-object v8, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    const/4 v9, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v3

    :goto_48
    monitor-exit v1

    return-object v3

    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_26

    throw p0
.end method

.method public final queryEventStats(IIJJ)Ljava/util/List;
    .registers 17

    const-string v0, "Failed to query event stats for locked user "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    const-string/jumbo p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v3

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    :cond_29
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    if-nez v2, :cond_31

    monitor-exit v1

    return-object v3

    :cond_31
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    move-wide v6, p3

    move-wide v8, p5

    invoke-static/range {v4 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_48

    :cond_3e
    sget-object v8, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    const/4 v9, 0x1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v3

    :goto_48
    monitor-exit v1

    return-object v3

    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_26

    throw p0
.end method

.method public final queryEventsForPackage(ILjava/lang/String;JJZ)Landroid/app/usage/UsageEvents;
    .registers 14

    const-string v0, "Failed to query package events for locked user "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    const-string/jumbo p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v3

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_3b

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_31

    monitor-exit v1

    return-object v3

    :cond_31
    move-wide v4, p5

    move-object p6, p2

    move-wide p2, p3

    move-wide p4, v4

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_26

    throw p0
.end method

.method public final queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .registers 13

    const-string v0, "Failed to query events for locked user "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    const-string/jumbo p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v3

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_37

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_31

    monitor-exit v1

    return-object v3

    :cond_31
    invoke-virtual/range {p1 .. p8}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_26

    throw p0
.end method

.method public final queryUsageStats(IJJIZ)Ljava/util/List;
    .registers 20

    const-string v0, "Failed to query usage stats for locked user "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_29

    const-string/jumbo p0, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v3

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_76

    :cond_29
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v4

    if-nez v4, :cond_31

    monitor-exit v1

    return-object v3

    :cond_31
    invoke-virtual {v4}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v5

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-static/range {v5 .. v10}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_40

    move-object v0, v3

    goto :goto_4c

    :cond_40
    sget-object v10, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    const/4 v11, 0x1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v5, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v0

    :goto_4c
    if-nez v0, :cond_50

    monitor-exit v1

    return-object v3

    :cond_50
    if-eqz p7, :cond_74

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_58
    if-ltz v2, :cond_74

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v4, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_71
    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    :cond_74
    monitor-exit v1

    return-object v0

    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_5 .. :try_end_77} :catchall_26

    throw p0
.end method

.method public final readUsageSourceSetting()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "app_time_limit_usage_source"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 22

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    const-string/jumbo p0, "Too many app usage observers added by uid "

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    cmp-long v0, p4, v2

    if-ltz v0, :cond_74

    iget-object v11, v1, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v11

    move/from16 v0, p9

    :try_start_12
    invoke-virtual {v1, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v3

    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_72

    :cond_2b
    :goto_2b
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_60

    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    cmp-long p0, p6, p4

    if-ltz p0, :cond_49

    const/4 p0, 0x0

    move-object v10, p0

    :goto_42
    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    goto :goto_4c

    :cond_49
    move-object/from16 v10, p8

    goto :goto_42

    :goto_4c
    invoke-direct/range {v0 .. v10}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    iget-object p0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide p0

    invoke-static {v2, v0, p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    monitor-exit v11

    return-void

    :cond_60
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_72
    monitor-exit v11
    :try_end_73
    .catchall {:try_start_12 .. :try_end_73} :catchall_28

    throw p0

    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Time limit must be >= "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 18

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    const-string/jumbo p0, "Too many app usage observers added by uid "

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    cmp-long v0, p4, v2

    if-ltz v0, :cond_69

    iget-object v9, v1, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v9

    move/from16 v0, p7

    :try_start_12
    invoke-virtual {v1, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v3

    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_67

    :cond_2b
    :goto_2b
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_55

    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    iget-object p0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide p0

    invoke-static {v2, v0, p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    monitor-exit v9

    return-void

    :cond_55
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_67
    monitor-exit v9
    :try_end_68
    .catchall {:try_start_12 .. :try_end_68} :catchall_28

    throw p0

    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Time limit must be >= "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 24

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    const-string/jumbo p0, "Too many app usage observers added by uid "

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    cmp-long v0, p4, v2

    if-ltz v0, :cond_6f

    iget-object v12, v1, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v12

    move/from16 v0, p10

    :try_start_12
    invoke-virtual {v1, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v3

    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    :cond_2b
    :goto_2b
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5b

    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    move v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v9, p6

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    iget-object p0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide p0

    invoke-static {v2, v0, p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    monitor-exit v12

    return-void

    :cond_5b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_6d
    monitor-exit v12
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_28

    throw p0

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Time limit must be >= "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reportEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 16

    const-string/jumbo v0, "Unexpected activity event reported! ("

    const-string v1, "Failed to report event for locked user "

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_19

    iget-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_19

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_254

    :cond_19
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x17

    if-eq v2, v3, :cond_2a

    if-eq v2, v4, :cond_2a

    if-eq v2, v8, :cond_2a

    move v2, v7

    goto :goto_32

    :cond_2a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v9, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v9, v5, v6, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    :goto_32
    iget-object v9, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v9, :cond_43

    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v10, p1, v9}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_43

    iget v9, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v9, v3

    iput v9, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    :cond_43
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_46
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_96

    const-string/jumbo p0, "UsageStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " eventType:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instanceId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    return-void

    :catchall_93
    move-exception p0

    goto/16 :goto_265

    :cond_96
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v10, 0x9

    if-eq v1, v3, :cond_1e3

    if-eq v1, v4, :cond_199

    const/4 v3, 0x7

    if-eq v1, v3, :cond_180

    const/16 v3, 0x8

    if-eq v1, v3, :cond_179

    if-eq v1, v10, :cond_179

    const/16 v3, 0x13

    if-eq v1, v3, :cond_179

    const/16 v3, 0x14

    if-eq v1, v3, :cond_179

    if-eq v1, v8, :cond_bd

    const/16 v3, 0x18

    if-eq v1, v3, :cond_bb

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_185

    goto/16 :goto_24d

    :cond_bb
    iput v8, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    :cond_bd
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v3, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v1, :cond_102

    const-string/jumbo p0, "UsageStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " event : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instanceId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    return-void

    :cond_102
    iget v0, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    if-eq v0, v4, :cond_10b

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    :cond_10b
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_10e
    .catchall {:try_start_46 .. :try_end_10e} :catchall_93

    :try_start_10e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v3, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    monitor-exit v0
    :try_end_119
    .catchall {:try_start_10e .. :try_end_119} :catchall_176

    if-eqz v2, :cond_156

    :try_start_11b
    monitor-enter v2
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_93

    :try_start_11c
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v3, v7

    :goto_121
    if-ge v3, v0, :cond_152

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_135

    :try_start_129
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(ILjava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_129 .. :try_end_134} :catch_137
    .catchall {:try_start_129 .. :try_end_134} :catchall_135

    goto :goto_14f

    :catchall_135
    move-exception p0

    goto :goto_154

    :catch_137
    move-exception v4

    :try_start_138
    const-string/jumbo v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to stop usage for during reporter death: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14f
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    :cond_152
    monitor-exit v2

    goto :goto_156

    :goto_154
    monitor-exit v2
    :try_end_155
    .catchall {:try_start_138 .. :try_end_155} :catchall_135

    :try_start_155
    throw p0

    :cond_156
    :goto_156
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_162

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_162
    .catchall {:try_start_155 .. :try_end_162} :catchall_93

    :cond_162
    :try_start_162
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->mUsageSourcePackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(ILjava/lang/String;)V
    :try_end_169
    .catch Ljava/lang/IllegalArgumentException; {:try_start_162 .. :try_end_169} :catch_16b
    .catchall {:try_start_162 .. :try_end_169} :catchall_93

    goto/16 :goto_24d

    :catch_16b
    move-exception v0

    :try_start_16c
    const-string/jumbo v1, "UsageStatsService"

    const-string v2, "Failed to note usage stop"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_174
    .catchall {:try_start_16c .. :try_end_174} :catchall_93

    goto/16 :goto_24d

    :catchall_176
    move-exception p0

    :try_start_177
    monitor-exit v0
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    :try_start_178
    throw p0

    :cond_179
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    goto/16 :goto_24d

    :cond_180
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    :cond_185
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_24d

    :cond_199
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v0, :cond_1cf

    iget v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    if-eq v0, v4, :cond_1ac

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_1ae

    :cond_1ac
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;
    :try_end_1ae
    .catchall {:try_start_178 .. :try_end_1ae} :catchall_93

    :goto_1ae
    :try_start_1ae
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1, v0, v5, v6}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(ILjava/lang/String;J)V
    :try_end_1b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ae .. :try_end_1b3} :catch_1b4
    .catchall {:try_start_1ae .. :try_end_1b3} :catchall_93

    goto :goto_1bd

    :catch_1b4
    move-exception v1

    :try_start_1b5
    const-string/jumbo v2, "UsageStatsService"

    const-string v3, "Failed to note usage start"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1bd
    new-instance v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_1d4

    :cond_1cf
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {v4, v2, v1}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    :goto_1d4
    iput v4, v0, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v1, :cond_24d

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    iput-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_24d

    :cond_1e3
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v1, ""

    const/16 v8, 0x10d

    invoke-static {v8, v2, v0, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f7

    goto :goto_24d

    :cond_1f7
    iget v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    if-eq v0, v4, :cond_1fe

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_200

    :cond_1fe
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;
    :try_end_200
    .catchall {:try_start_1b5 .. :try_end_200} :catchall_93

    :goto_200
    :try_start_200
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1, v0, v5, v6}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(ILjava/lang/String;J)V
    :try_end_205
    .catch Ljava/lang/IllegalArgumentException; {:try_start_200 .. :try_end_205} :catch_206
    .catchall {:try_start_200 .. :try_end_205} :catchall_93

    goto :goto_20f

    :catch_206
    move-exception v1

    :try_start_207
    const-string/jumbo v2, "UsageStatsService"

    const-string v4, "Failed to note usage start"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20f
    new-instance v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_239

    const-wide/32 v11, 0x240c8400

    add-long/2addr v2, v11

    cmp-long v0, v0, v2

    if-lez v0, :cond_24d

    :cond_239
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v5, v6}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24d

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_24d
    :goto_24d
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    if-nez v0, :cond_255

    monitor-exit v9

    :goto_254
    return-void

    :cond_255
    invoke-virtual {v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    monitor-exit v9
    :try_end_259
    .catchall {:try_start_207 .. :try_end_259} :catchall_93

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_265
    :try_start_265
    monitor-exit v9
    :try_end_266
    .catchall {:try_start_265 .. :try_end_266} :catchall_93

    throw p0
.end method

.method public final reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 9

    const-string v0, "Attempted to report event for non-existent user "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_19
    const-wide/32 v1, 0x80000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string/jumbo v3, "usageStatsQueueEvent("

    const-string v4, ") #"

    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v4}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_3b
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_3e
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_9d

    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    if-eqz v4, :cond_66

    invoke-virtual {v4, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_66

    :cond_59
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9d

    :catchall_64
    move-exception p0

    goto :goto_b4

    :cond_66
    :goto_66
    const-string/jumbo p0, "UsageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " eventType:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_9d
    :goto_9d
    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_af

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const-wide/32 v4, 0x124f80

    invoke-virtual {p0, p2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_af
    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_3e .. :try_end_b0} :catchall_64

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_b4
    :try_start_b4
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_64

    throw p0
.end method

.method public final reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1f

    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_1d
    move-exception p0

    goto :goto_21

    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method
