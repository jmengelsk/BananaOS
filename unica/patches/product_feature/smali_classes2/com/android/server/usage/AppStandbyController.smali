.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usage/AppStandbyInternal;
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# static fields
.field static final DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

.field static final DEFAULT_SCREEN_TIME_THRESHOLDS:[J

.field static final MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

.field static final MINIMUM_SCREEN_TIME_THRESHOLDS:[J

.field public static final THRESHOLD_BUCKETS:[I


# instance fields
.field public final mActiveAdminApps:Landroid/util/SparseArray;

.field public final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAdminProtectedPackages:Landroid/util/SparseArray;

.field public volatile mAppIdleEnabled:Z

.field public final mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

.field public final mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppStandbyElapsedThresholds:[J

.field public final mAppStandbyProperties:Ljava/util/Map;

.field public mAppStandbyScreenThresholds:[J

.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mAppsToRestoreToRare:Landroid/util/SparseSetArray;

.field public volatile mBroadcastResponseExemptedPermissions:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

.field public volatile mBroadcastResponseExemptedRoles:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedRolesList:Ljava/util/List;

.field public volatile mBroadcastResponseFgThresholdState:I

.field public volatile mBroadcastResponseWindowDurationMillis:J

.field public volatile mBroadcastSessionsDurationMs:J

.field public volatile mBroadcastSessionsWithResponseDurationMs:J

.field public mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field public volatile mCachedNetworkScorer:Ljava/lang/String;

.field public volatile mCachedNetworkScorerAtMillis:J

.field public mCarrierPrivilegedApps:Ljava/util/List;

.field public final mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

.field public mCheckIdleIntervalMillis:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Lcom/android/server/usage/AppStandbyController$2;

.field public mExemptedSyncScheduledDozeTimeoutMillis:J

.field public mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field public mExemptedSyncStartTimeoutMillis:J

.field public final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field public final mHasFeatureTelephonySubscription:Z

.field public mHaveCarrierPrivilegedApps:Z

.field public final mHeadlessSystemApps:Landroid/util/ArraySet;

.field public mInitialForegroundServiceStartTimeoutMillis:J

.field public final mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field public volatile mIsCharging:Z

.field public mLinkCrossProfileApps:Z

.field public volatile mNoteResponseEventForAllBroadcastSessions:Z

.field public mNotificationSeenPromotedBucket:I

.field public mNotificationSeenTimeoutMillis:J

.field public final mPackageAccessListeners:Ljava/util/ArrayList;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPendingIdleStateChecks:Landroid/util/SparseLongArray;

.field public mPendingInitializeDefaults:Z

.field public mPredictionTimeoutMillis:J

.field public mRetainNotificationSeenImpactForPreTApps:Z

.field public mSlicePinnedTimeoutMillis:J

.field public mStrongUsageTimeoutMillis:J

.field public mSyncAdapaterPromotedBucket:I

.field public mSyncAdapterTimeoutMillis:J

.field public final mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

.field public mSystemInteractionTimeoutMillis:J

.field public final mSystemPackagesAppIds:Ljava/util/ArrayList;

.field public mSystemServicesReady:Z

.field public mSystemUpdateUsageTimeoutMillis:J

.field public mTriggerQuotaBumpOnNotificationSeen:Z

.field public mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method public static -$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V
    .locals 9

    const/16 v0, 0x28

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    if-eqz p5, :cond_1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_2
    move-object p1, v3

    move p2, v4

    move p3, v6

    move p4, v7

    goto :goto_1

    :cond_2
    monitor-exit v8

    return-void

    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-virtual {v4, v0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p3

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v1, p1

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v11, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    array-length v12, v10

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v1, v10, v13

    move-object/from16 v14, p2

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    invoke-virtual {v11, v1, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v15

    :try_start_0
    iget v3, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapaterPromotedBucket:I

    iget-wide v7, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    const/16 v4, 0x8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    monitor-exit v15

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static -$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->triggerTemporaryQuotaBump(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    const/16 v0, 0x28

    const/16 v1, 0x2d

    const/16 v2, 0xa

    const/16 v3, 0x14

    const/16 v4, 0x1e

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
        0x1499700
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x1b7740
        0x36ee80
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
        0x2932e000
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x36ee80
        0x36ee80
        0x6ddd00
        0xdbba00
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    sget-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    const-wide/32 v5, 0xdbba00

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const-wide/32 v3, 0x36ee80

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    const-wide/32 v3, 0x2932e00

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    const-wide/32 v7, 0x6ddd00

    iput-wide v7, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    const-wide/32 v3, 0x927c0

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    const/16 v7, 0xa

    iput v7, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapaterPromotedBucket:I

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    iput-wide v5, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    const-wide/32 v3, 0x1b7740

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    const-wide/32 v3, 0x1d4c0

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    new-instance v1, Lcom/android/server/usage/AppStandbyController$2;

    invoke-direct {v1, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Lcom/android/server/usage/AppStandbyController$2;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v7, p0, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "android.hardware.telephony.subscription"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mHasFeatureTelephonySubscription:Z

    new-instance v0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.os.action.CHARGING"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-enter p1

    :try_start_0
    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-lez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final addActiveDeviceAdmin(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkAndUpdateStandbyState(IIJLjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p5

    if-gtz p2, :cond_0

    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    move-result v2

    const/16 v4, 0xa

    if-gt v2, v4, :cond_2

    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v9

    :try_start_1
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;)Z

    move-result v10

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v8, 0x0

    const/16 v4, 0x100

    move-wide/from16 v5, p3

    move-object v7, v3

    move v3, v2

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    move v1, v2

    move v2, v3

    move-object v3, v7

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;)Z

    move-result v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x100

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move-wide/from16 v5, p3

    move-object v8, v0

    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v9

    :try_start_3
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;)Z

    move-result v10

    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    iget v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v11, 0xff00

    and-int/2addr v11, v7

    const/16 v12, 0x400

    if-ne v11, v12, :cond_3

    monitor-exit v9

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_3
    iget v12, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v13, 0x32

    if-ne v12, v13, :cond_4

    monitor-exit v9

    return-void

    :cond_4
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-wide v14, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_5

    iget-object v14, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v14, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v14

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr v14, v4

    iget-wide v4, v8, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long v4, v14, v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x200

    const/16 v6, 0x100

    if-eq v11, v6, :cond_6

    const/16 v14, 0x300

    if-eq v11, v14, :cond_6

    if-eq v11, v5, :cond_6

    if-eqz v4, :cond_9

    :cond_6
    if-nez v4, :cond_7

    iget v14, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v15, 0xa

    if-lt v14, v15, :cond_7

    const/16 v15, 0x28

    if-gt v14, v15, :cond_7

    const/16 v7, 0x501

    move v5, v7

    move v13, v14

    :goto_2
    move-wide/from16 v6, p3

    goto :goto_4

    :cond_7
    if-ne v11, v6, :cond_8

    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v6, v6, 0xff

    const/4 v11, 0x2

    if-eq v6, v11, :cond_9

    :cond_8
    move-wide/from16 v6, p3

    goto :goto_3

    :cond_9
    move v5, v7

    goto :goto_2

    :goto_3
    invoke-virtual {v8, v1, v3, v6, v7}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(ILjava/lang/String;J)I

    move-result v13

    :goto_4
    iget-object v11, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v11, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v14

    invoke-static {v0, v13, v14, v15}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v11

    const/4 v1, -0x1

    if-eq v11, v1, :cond_c

    const/16 v1, 0xa

    if-eq v11, v1, :cond_b

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v1, v11, :cond_a

    goto :goto_6

    :cond_a
    const/16 v5, 0x307

    :goto_5
    move/from16 p2, v4

    move v13, v11

    goto :goto_7

    :cond_b
    :goto_6
    iget v5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_5

    :cond_c
    move/from16 p2, v4

    :goto_7
    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    cmp-long v1, v3, v16

    if-ltz v1, :cond_d

    move-wide/from16 v16, v3

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    cmp-long v1, v3, v16

    if-lez v1, :cond_d

    sub-long v14, v14, v16

    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-wide v3, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    cmp-long v1, v14, v3

    if-ltz v1, :cond_d

    iget v5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    const/16 v0, 0x2d

    move v13, v0

    :cond_d
    move v3, v5

    if-le v13, v2, :cond_e

    goto :goto_8

    :cond_e
    move v2, v13

    :goto_8
    if-ne v12, v2, :cond_10

    if-eqz p2, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v1, p1

    move-object/from16 v3, p5

    move-object v0, v8

    move v6, v10

    goto :goto_a

    :cond_10
    :goto_9
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v7, 0x0

    move/from16 v1, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    move v4, v3

    move-object v3, v6

    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;)Z

    move-result v6

    const/4 v5, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    :goto_a
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_b
    if-eq v10, v6, :cond_11

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    :catch_0
    :cond_11
    :goto_c
    return-void

    :goto_d
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public checkIdleStates(I)Z
    .locals 13

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-static {v0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget v5, v0, v3

    if-eq p1, v2, :cond_3

    if-eq p1, v5, :cond_3

    :cond_2
    move-object v4, p0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v12, v1

    :goto_1
    if-ge v12, v11, :cond_2

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(IIJLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearCarrierPrivilegedApps()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/32 p1, -0x80000000

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    const-string p1, "Carrier privileged apps (have="

    const-string v0, "Flags: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    com.android.server.usage.avoid_idle_check: true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    com.android.server.usage.adjust_default_bucket_elevation_params: true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    com.android.server.usage.persist_restore_to_rare_apps_list: true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "Settings:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mStrongUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mNotificationSeenTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mNotificationSeenPromotedBucket="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mTriggerQuotaBumpOnNotificationSeen="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mRetainNotificationSeenImpactForPreTApps="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSlicePinnedTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSyncAdapterTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSyncAdapaterPromotedBucket="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapaterPromotedBucket:I

    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSystemInteractionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mInitialForegroundServiceStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mPredictionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mUnexemptedSyncScheduledTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mSystemUpdateUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseWindowDurationMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseFgThresholdState="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    invoke-static {p1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastSessionsDurationMs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastSessionsWithResponseDurationMs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mNoteResponseEventForAllBroadcastSessions="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseExemptedRoles="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "  mBroadcastResponseExemptedPermissions="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "mAppIdleEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mIsCharging="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "mScreenThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "mElapsedThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "mHeadlessSystemApps=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "mSystemPackagesAppIds=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string/jumbo p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "mActiveAdminApps=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_4

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_9

    :cond_4
    :goto_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string/jumbo p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "mAdminProtectedPackages=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_4
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_6
    if-ge v1, p1, :cond_7

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, p1, -0x1

    if-eq v1, v2, :cond_6

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_6
    :goto_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string/jumbo p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->dump(Ljava/io/PrintWriter;)V

    return-void

    :goto_8
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :goto_9
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :goto_a
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :goto_b
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :catchall_4
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0
.end method

.method public final dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public flushHandler(J)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public final flushToDisk()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v1, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    iget-object v6, v1, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v5, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v5, v1, v5

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iput-wide v1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceIdleState(Ljava/lang/String;IZ)V
    .locals 12

    move v3, p2

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    move-result v4

    const/16 v6, 0x28

    if-eqz p3, :cond_2

    if-ge v4, v6, :cond_2

    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tried to force an app to be idle when its min bucket is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v8

    move v9, v2

    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    if-eqz p3, :cond_5

    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    iget-object v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_0
    if-ltz v7, :cond_4

    iget-object v11, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v11

    if-ge v11, v6, :cond_3

    iget-object v11, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x400

    goto :goto_1

    :cond_5
    const/16 v6, 0xa

    const/16 v2, 0x303

    :goto_1
    const/4 v7, 0x0

    move v1, v3

    move v3, v2

    move v2, v6

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    move v6, v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v7

    const/16 v4, 0x400

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v1, p2

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    move v3, v1

    if-eq v8, v7, :cond_6

    invoke-virtual {p0, p2, p1, v7}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getActiveAdminAppsForTest(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAdminProtectedPackagesForTest(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppId(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x400200

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public getAppIdleHistoryForTest()Lcom/android/server/usage/AppIdleHistory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppMinBucket(IILjava/lang/String;)I
    .locals 10

    if-nez p3, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x5

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_2

    goto/16 :goto_9

    :cond_2
    const-string/jumbo v0, "android"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget v4, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    monitor-enter v4

    :try_start_0
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    if-eqz v0, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p0, p3, p2}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_9

    :cond_6
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    monitor-exit v0

    move v4, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_7
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_1

    :cond_8
    move v4, v3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v4, :cond_9

    goto/16 :goto_9

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    const-wide/16 v8, 0x1388

    sub-long v8, v4, v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "network_score"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    :cond_b
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_9

    :cond_c
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_e

    monitor-exit v4

    return v1

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :cond_d
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v6, v0, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v5, :cond_e

    monitor-exit v4

    return v1

    :cond_e
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v0, :cond_f

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p3, p2}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_b

    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1040353

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_9

    :cond_11
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iget-object p2, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iget-object p2, p2, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-wide/32 v4, 0xfa7a8de

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v4, v5, p3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2, p1, p3}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_3

    :cond_13
    move p1, v3

    goto :goto_4

    :cond_14
    :goto_3
    move p1, v2

    :goto_4
    if-eqz p1, :cond_15

    :goto_5
    const/16 p0, 0x14

    return p0

    :goto_6
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_7
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_15
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mHasFeatureTelephonySubscription:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter p1

    :try_start_6
    iget-boolean p2, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    :cond_16
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz p2, :cond_17

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit p1

    goto :goto_8

    :catchall_3
    move-exception p0

    goto :goto_a

    :cond_17
    monitor-exit p1

    :goto_8
    if-eqz v3, :cond_18

    :goto_9
    return v1

    :goto_a
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_18
    invoke-virtual {p0, p3}, Lcom/android/server/usage/AppStandbyController;->isHeadlessSystemApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    :goto_b
    const/16 p0, 0xa

    return p0

    :cond_19
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1a

    const/16 p0, 0x1e

    return p0

    :cond_1a
    :goto_c
    const/16 p0, 0x32

    return p0
.end method

.method public final getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
    .locals 0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p4, p4, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p4, p3, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/16 p0, 0x32

    return p0

    :cond_0
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter p4

    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    move-result p0

    monitor-exit p4

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .locals 0

    iget-boolean p3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez p3, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    if-eqz p5, :cond_1

    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p3, p3, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter p3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-nez p0, :cond_2

    const/16 p0, 0x32

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_0
    monitor-exit p3

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppStandbyBucketReason(Ljava/lang/String;IJ)I
    .locals 0

    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter p3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p2, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    :cond_0
    monitor-exit p3

    return p2

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppStandbyBuckets(I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v6, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    :goto_1
    invoke-direct {v4, v5, v6}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    return-object p0
.end method

.method public final getBroadcastResponseExemptedRoles()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    return-object p0
.end method

.method public final getBroadcastResponseFgThresholdState()I
    .locals 0

    iget p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    return p0
.end method

.method public final getBroadcastResponseWindowDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    return-wide v0
.end method

.method public final getBroadcastSessionsDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    return-wide v0
.end method

.method public final getBroadcastSessionsWithResponseDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    return-wide v0
.end method

.method public final getBucketForLocked(ILjava/lang/String;J)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-ltz p2, :cond_1

    invoke-virtual {v0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr p2, v3

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    aget-wide v0, p0, p1

    cmp-long p4, p2, v0

    if-ltz p4, :cond_0

    move v2, p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    sget-object p0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget p0, p0, v2

    return p0

    :cond_3
    const/16 p0, 0x32

    return p0
.end method

.method public final getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    if-nez v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-ltz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    invoke-virtual {v2, p2, v0}, Landroid/content/pm/CrossProfileAppsInternal;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/CrossProfileAppsInternal;->getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    if-nez v1, :cond_3

    const-string/jumbo p0, "Null package retrieved for UID "

    const-string p1, "AppStandbyController"

    invoke-static {v0, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getEstimatedLaunchTime(Ljava/lang/String;I)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    goto :goto_1

    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    :goto_1
    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getIdleUidsForUser(I)[I
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    :cond_0
    const-string/jumbo v1, "getIdleUidsForUser"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    move/from16 v9, p1

    invoke-virtual {v1, v9, v8, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    :cond_1
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    const/4 v12, 0x0

    move v13, v1

    move v14, v12

    :goto_0
    if-ltz v13, :cond_7

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    iget v1, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    move/from16 v16, v11

    goto :goto_1

    :cond_2
    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    move/from16 v16, v2

    :goto_1
    if-eqz v16, :cond_3

    move v2, v1

    iget-object v1, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v17, v9

    move v9, v2

    move v2, v3

    move/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v11

    goto :goto_2

    :cond_3
    move v9, v1

    :cond_4
    move v0, v12

    :goto_2
    if-eqz v16, :cond_5

    if-nez v0, :cond_5

    add-int/lit8 v14, v14, 0x1

    :cond_5
    if-gez v9, :cond_6

    iget v1, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v9, v0}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    :goto_3
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v9, p1

    goto :goto_0

    :cond_7
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v14

    new-array v1, v0, [I

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_4
    if-ltz v2, :cond_9

    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method public final getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p2

    const/4 v3, 0x0

    invoke-static {p2, p1, v3}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p2, v3, v5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v0

    iget-wide p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p2

    const/4 v3, 0x0

    invoke-static {p2, p1, v3}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p2, v3, v5

    if-eqz p2, :cond_1

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v0

    iget-wide p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long/2addr v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initializeDefaultsForSystemApps(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v4, p1

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    const/4 v11, 0x1

    if-nez v1, :cond_0

    iput-boolean v11, v0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    return-void

    :cond_0
    const-string v1, "AppStandbyController"

    const-string v2, "Initializing defaults for system apps on user "

    const-string v3, ", appIdleEnabled="

    invoke-static {v4, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v15, :cond_2

    :try_start_0
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    move-object v3, v1

    :try_start_1
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v6, v0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    add-long v9, v12, v6

    invoke-virtual {v1, v4}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-static {v6, v5, v11}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x0

    move-object/from16 v16, v3

    move-object v3, v5

    const/16 v5, 0xa

    move/from16 v17, v2

    move-object v2, v6

    const/4 v6, 0x6

    :try_start_2
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_2

    :cond_1
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_2

    :goto_1
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v1, v16

    goto :goto_0

    :cond_2
    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v4, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    monitor-exit v16

    return-void

    :catchall_2
    move-exception v0

    :goto_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method public isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAppIdleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method public final isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 0

    iget-boolean p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter p4

    :try_start_0
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p5, p3, p1}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;)Z

    move-result p5

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    move-result p0

    const/16 p1, 0x28

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isAppIdleFiltered(Ljava/lang/String;IJZ)Z
    .locals 6

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p5, p5, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p5, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0
.end method

.method public final isHeadlessSystemApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isInParole()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final maybeInformListeners(IILjava/lang/String;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p3, v2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq v2, p2, :cond_1

    iput p2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    sget-object v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_0
    iput-object p3, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iput p1, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iput p2, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iput p4, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iput-boolean p5, v1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeUnrestrictApp(Ljava/lang/String;IIIII)V
    .locals 15

    move/from16 v0, p4

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual {v2, v10, v9}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    iget v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2

    iget v2, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v3, 0xff00

    and-int/2addr v3, v2

    move/from16 v5, p3

    if-eq v3, v5, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit16 v3, v2, 0xff

    if-ne v3, v0, :cond_1

    or-int v0, p5, p6

    const/16 v4, 0x28

    :goto_0
    move v13, v0

    move v11, v4

    goto :goto_1

    :cond_1
    not-int v0, v0

    and-int/2addr v0, v2

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v10, 0x0

    move/from16 v4, p2

    move v5, v11

    move v6, v13

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    const/4 v14, 0x0

    move-object v9, p0

    move-object/from16 v12, p1

    move/from16 v10, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public maybeUnrestrictBuggyApp(Ljava/lang/String;I)V
    .locals 7

    const/16 v5, 0x100

    const/4 v6, 0x1

    const/16 v3, 0x600

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public final maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x1c0200

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyBatteryStats(ILjava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz p0, :cond_1

    const/16 p3, 0xf

    invoke-interface {p0, p3, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz p0, :cond_1

    const/16 p3, 0x10

    invoke-interface {p0, p3, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final onAdminDataAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v1, 0x3e8

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "deviceidle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string/jumbo v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/BatteryManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryManager;

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    const-class v3, Landroid/content/pm/CrossProfileAppsInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/CrossProfileAppsInternal;

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mCrossProfileAppsInternal:Landroid/content/pm/CrossProfileAppsInternal;

    const-class v3, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-wide/32 v3, 0x2932e00

    iput-wide v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mWellbeingApp:Ljava/lang/String;

    :cond_2
    :goto_0
    iput p1, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    if-ne p1, v2, :cond_7

    const-string p1, "AppStandbyController"

    const-string/jumbo v0, "Setting app idle enabled state"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz p1, :cond_3

    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    :cond_3
    new-instance p1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "adaptive_battery_management_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string/jumbo v1, "app_standby"

    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-wide/32 v3, 0x6ddd00

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapaterPromotedBucket:I

    const-wide/32 v3, 0x493e0

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->processProperties(Landroid/provider/DeviceConfig$Properties;)V

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->updateSettings()V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "appops"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    const/16 v1, 0x80

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "AppStandbyController"

    const-string v1, "Failed start watching for app op"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Lcom/android/server/usage/AppStandbyController$2;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6, v1}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(JZ)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v4, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez p1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    :cond_6
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x205c2000

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_7
    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {p1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public final onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x6

    if-eq v2, v0, :cond_2

    const/4 v0, 0x7

    if-eq v2, v0, :cond_2

    const/16 v0, 0xa

    if-eq v2, v0, :cond_2

    const/16 v0, 0xe

    if-eq v2, v0, :cond_2

    const/16 v0, 0xd

    if-eq v2, v0, :cond_2

    const/16 v0, 0x13

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(IIJLjava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_2
    if-ge p1, p0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(IIJLjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    monitor-exit v7

    return-void

    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v1, v1, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final postCheckIdleStates(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final postOneTimeCheckIdleStates()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    iput-object p1, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    iput p3, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final postReportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final postReportSyncScheduled(Ljava/lang/String;IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reportEventLocked(IIJLjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p2

    move-object/from16 v3, p5

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;)Z

    move-result v11

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    iget v12, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v13, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/16 v5, 0xe

    const/16 v6, 0x13

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/16 v15, 0xa

    const/4 v9, 0x1

    if-eq v1, v9, :cond_6

    const/4 v10, 0x2

    if-eq v1, v10, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v15, :cond_7

    if-eq v1, v6, :cond_2

    const/16 v10, 0xd

    if-eq v1, v10, :cond_1

    if-eq v1, v5, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    const/16 v10, 0x9

    goto :goto_0

    :cond_1
    move v10, v15

    goto :goto_0

    :cond_2
    const/16 v10, 0xf

    goto :goto_0

    :cond_3
    const/4 v10, 0x3

    goto :goto_0

    :cond_4
    move v10, v9

    goto :goto_0

    :cond_5
    const/4 v10, 0x5

    goto :goto_0

    :cond_6
    const/4 v10, 0x4

    :cond_7
    :goto_0
    or-int/lit16 v14, v10, 0x300

    const/4 v8, -0x1

    if-ne v1, v15, :cond_b

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v1

    goto :goto_1

    :cond_8
    const/16 v1, 0x2710

    :goto_1
    const/16 v5, 0x21

    if-ge v1, v5, :cond_9

    const/16 v1, 0x14

    const-wide/32 v5, 0x2932e00

    :goto_2
    move-wide/from16 v16, v5

    move v5, v1

    goto :goto_3

    :cond_9
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v1, v7, v4, v8, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    iget v1, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    iget-wide v5, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move v6, v8

    const-wide/16 v7, 0x0

    move/from16 v19, v6

    move/from16 v18, v9

    move v6, v10

    add-long v9, p3, v16

    move/from16 v15, v19

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    move/from16 v4, p2

    move-object/from16 v3, p5

    move-object v6, v2

    move-wide/from16 v1, v16

    goto/16 :goto_5

    :cond_b
    move v15, v8

    move/from16 v18, v9

    if-ne v1, v5, :cond_c

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    add-long v3, p3, v3

    const/16 v5, 0x14

    const-wide/16 v7, 0x0

    move v6, v10

    move-wide v9, v3

    move/from16 v4, p2

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    :goto_4
    move-object v6, v2

    move-wide v1, v3

    move/from16 v4, p2

    move-object/from16 v3, p5

    goto :goto_5

    :cond_c
    const/4 v3, 0x6

    if-ne v1, v3, :cond_d

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v3, p3, v3

    const/16 v5, 0xa

    const-wide/16 v7, 0x0

    move v6, v10

    move-wide v9, v3

    move/from16 v4, p2

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    goto :goto_4

    :cond_d
    if-ne v1, v6, :cond_f

    const/16 v1, 0x32

    if-eq v12, v1, :cond_e

    goto/16 :goto_9

    :cond_e
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v3, p3, v3

    const/16 v5, 0xa

    const-wide/16 v7, 0x0

    move v6, v10

    move-wide v9, v3

    move/from16 v4, p2

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    goto :goto_4

    :cond_f
    move v6, v10

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0xa

    move/from16 v4, p2

    move-wide/from16 v7, p3

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    move-object v6, v2

    iget-wide v1, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    :goto_5
    iget v5, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v5, v12, :cond_11

    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v7, 0xb

    invoke-virtual {v5, v7, v4, v15, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v1, 0xa

    if-ne v2, v1, :cond_10

    const v1, 0xff00

    and-int/2addr v1, v13

    const/16 v5, 0x300

    if-eq v1, v5, :cond_10

    move/from16 v5, v18

    :goto_6
    move v1, v4

    move v4, v14

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    goto :goto_6

    :goto_7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    move v4, v1

    :cond_11
    iget v1, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_12

    move/from16 v14, v18

    goto :goto_8

    :cond_12
    const/4 v14, 0x0

    :goto_8
    if-eq v11, v14, :cond_13

    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    :cond_13
    :goto_9
    return-void
.end method

.method public final reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V
    .locals 3

    move v2, p3

    move-object p3, p1

    move p1, p2

    move p2, v2

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(IILjava/lang/String;IJJ)V

    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(IILjava/lang/String;IJJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reportNoninteractiveUsageLocked(IILjava/lang/String;IJJ)V
    .locals 12

    move-wide/from16 v10, p7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    add-long v8, p5, v10

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, p3, v3}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    const-wide/16 v6, 0x0

    move v3, p1

    move v4, p2

    move-object v2, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V

    move-object p2, v1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v3, 0xb

    const/4 v4, -0x1

    invoke-virtual {v0, v3, p1, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v2, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v4, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    return-void
.end method

.method public final restoreAppsToRare(Ljava/util/Set;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    int-to-long v6, v1

    invoke-virtual {v0, v2, v6, v7, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result p0

    move-object v7, v2

    move v2, v3

    const/16 p2, 0x32

    if-ne p0, p2, :cond_0

    const/4 v8, 0x0

    move-wide v5, v4

    const/16 v4, 0x102

    const/16 v3, 0x28

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    move-wide v4, v5

    :cond_0
    :goto_1
    move-object p0, v1

    move p2, v2

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v7, v2

    move v2, p2

    const-string p0, "AppStandbyController"

    const-string/jumbo p2, "Tried to restore bucket for uninstalled app: "

    invoke-static {p2, v7, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {p0, v2, v7}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v1, p0

    move v2, p2

    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance p1, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, v2, p2, v1}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;)V

    const-wide/32 v3, 0xa4cb800

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter p0

    :try_start_0
    iget-object p1, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object p2, v1, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/android/server/usage/AppIdleHistory;->writeRestoreToRareAppsList(ILandroid/util/ArraySet;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final restrictApp(Ljava/lang/String;II)V
    .locals 1

    const/16 v0, 0x600

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyController;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public final restrictApp(Ljava/lang/String;III)V
    .locals 8

    const/16 v0, 0x600

    const-string v1, "AppStandbyController"

    if-eq p3, v0, :cond_0

    const/16 v0, 0x400

    if-eq p3, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Tried to restrict app "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for an unsupported reason"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    int-to-long v2, v2

    invoke-virtual {v0, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ltz v0, :cond_1

    const v0, 0xff00

    and-int/2addr p3, v0

    and-int/lit16 p4, p4, 0xff

    or-int v3, p3, p4

    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v2, 0x2d

    const/4 v7, 0x0

    move-object v0, p0

    move-object v6, p1

    move v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    return-void

    :cond_1
    move-object v6, p1

    const-string/jumbo p0, "Tried to restrict uninstalled app: "

    invoke-static {p0, v6, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setActiveAdminApps(Ljava/util/Set;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAdminProtectedPackages(Ljava/util/Set;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget p1, p1, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setAppIdleAsync(Ljava/lang/String;ZI)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAppIdleEnabled(Z)V
    .locals 2

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v1

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final setAppStandbyBucket(IIIJLjava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v1, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    const-string/jumbo v4, "Tried to restrict recently used app: "

    const-string/jumbo v8, "Tried to set bucket of uninstalled app: "

    iget-boolean v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v9

    :try_start_0
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v10, v10, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x0

    int-to-long v12, v11

    invoke-virtual {v10, v7, v12, v13, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    if-ltz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    if-nez v10, :cond_2

    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_2
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v8, v2, v7}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v8

    const v10, 0xff00

    and-int v13, v1, v10

    const/16 v14, 0x500

    if-ne v13, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    move v14, v11

    :goto_1
    iget v15, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move/from16 v16, v10

    const/16 v10, 0xa

    if-ge v15, v10, :cond_4

    monitor-exit v9

    return-void

    :cond_4
    const/16 v10, 0x32

    if-eq v15, v10, :cond_5

    if-ne v3, v10, :cond_6

    :cond_5
    if-eqz v14, :cond_6

    monitor-exit v9

    return-void

    :cond_6
    iget v10, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int v10, v10, v16

    const/16 v11, 0x600

    if-ne v10, v11, :cond_7

    const/16 v17, 0x1

    goto :goto_2

    :cond_7
    const/16 v17, 0x0

    :goto_2
    const/16 v12, 0x400

    if-eqz v14, :cond_9

    if-eq v10, v12, :cond_8

    if-eqz v17, :cond_9

    :cond_8
    monitor-exit v9

    return-void

    :cond_9
    if-ne v13, v11, :cond_a

    const/16 v18, 0x1

    goto :goto_3

    :cond_a
    const/16 v18, 0x0

    :goto_3
    const/16 v12, 0x2d

    const/16 v11, 0x28

    if-ne v15, v3, :cond_f

    if-eqz v17, :cond_f

    if-eqz v18, :cond_f

    if-ne v3, v12, :cond_b

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v4, v2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v10

    const/4 v12, 0x1

    invoke-static {v10, v7, v12}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v10

    invoke-virtual {v4, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v12

    iput-wide v12, v10, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    iput v1, v10, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    :cond_b
    iget v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v4, v4, 0xff

    const/16 v10, 0x600

    or-int/2addr v4, v10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v4, v1

    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt v1, v11, :cond_c

    const/4 v12, 0x1

    goto :goto_4

    :cond_c
    const/4 v12, 0x0

    :goto_4
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    if-lt v3, v11, :cond_d

    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    :goto_5
    if-eq v12, v11, :cond_e

    invoke-virtual {v0, v2, v7, v11}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    :cond_e
    monitor-exit v9

    return-void

    :cond_f
    const/16 v11, 0x400

    if-ne v13, v11, :cond_10

    const/16 v18, 0x1

    goto :goto_6

    :cond_10
    const/16 v18, 0x0

    :goto_6
    const/16 v11, 0x200

    if-ne v15, v12, :cond_14

    if-ne v10, v11, :cond_11

    if-eqz v14, :cond_14

    const/16 v10, 0x28

    if-lt v3, v10, :cond_14

    monitor-exit v9

    return-void

    :cond_11
    const/16 v10, 0x300

    if-ne v13, v10, :cond_12

    and-int/lit16 v10, v1, 0xff

    const/4 v13, 0x3

    if-eq v10, v13, :cond_13

    const/4 v13, 0x4

    if-ne v10, v13, :cond_12

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v10, 0x1

    :goto_8
    if-nez v10, :cond_14

    if-nez v18, :cond_14

    monitor-exit v9

    return-void

    :cond_14
    const/4 v10, -0x1

    if-ne v3, v12, :cond_15

    iget-object v13, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v13, v2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v15

    const/4 v11, 0x1

    invoke-static {v15, v7, v11}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v15

    invoke-virtual {v13, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v11

    iput-wide v11, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    iput v1, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    if-eqz v18, :cond_17

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_16

    and-int/lit16 v4, v1, 0xff

    const/4 v11, 0x2

    if-eq v4, v11, :cond_16

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v13

    const v15, 0x104020e

    invoke-virtual {v12, v15, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v4, v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_15
    :goto_9
    move/from16 v16, v14

    goto :goto_a

    :cond_16
    const/4 v13, 0x0

    const-string v4, "AppStandbyController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " restricted by user"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_17
    const/4 v13, 0x0

    iget-wide v11, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    move/from16 v16, v14

    iget-wide v13, v15, Lcom/android/server/usage/AppStandbyController$Injector;->mAutoRestrictedBucketDelayMs:J

    add-long/2addr v11, v13

    sub-long/2addr v11, v5

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_18

    const-string v3, "AppStandbyController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v10, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v9

    return-void

    :cond_18
    :goto_a
    if-eqz v16, :cond_1c

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v11

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v11, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    iput v3, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    invoke-static {v8, v3, v11, v12}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v4

    if-eq v4, v10, :cond_1b

    const/16 v10, 0xa

    if-eq v4, v10, :cond_1a

    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v1, v4, :cond_19

    goto :goto_b

    :cond_19
    const/16 v1, 0x307

    goto :goto_c

    :cond_1a
    :goto_b
    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_c

    :cond_1b
    const/16 v10, 0x28

    if-ne v3, v10, :cond_1c

    invoke-virtual {v0, v2, v7, v5, v6}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(ILjava/lang/String;J)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v10, 0x2d

    if-ne v4, v10, :cond_1c

    move v4, v10

    const/16 v1, 0x200

    goto :goto_c

    :cond_1c
    move v4, v3

    :goto_c
    :try_start_1
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v0, v3, v2, v7}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(IILjava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catch_0
    const/16 v10, 0x32

    :goto_d
    :try_start_2
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v10, 0x28

    if-lt v4, v10, :cond_1d

    const/4 v12, 0x1

    :goto_e
    move v4, v1

    goto :goto_f

    :cond_1d
    const/4 v12, 0x0

    goto :goto_e

    :goto_f
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    if-lt v3, v10, :cond_1e

    const/4 v11, 0x1

    goto :goto_10

    :cond_1e
    const/4 v11, 0x0

    :goto_10
    if-eq v12, v11, :cond_1f

    invoke-virtual {v0, v2, v7, v11}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(ILjava/lang/String;Z)V

    :cond_1f
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    move v1, v2

    move v2, v3

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    return-void

    :goto_11
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;III)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v8, 0x0

    move-object v1, p0

    move-object v7, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    return-void
.end method

.method public final setAppStandbyBucket(Ljava/lang/String;IIII)V
    .locals 1

    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;III)V

    return-void
.end method

.method public final setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V
    .locals 10

    const/16 v0, 0x700

    if-eq p4, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xa

    if-lt p3, v1, :cond_3

    const/16 v1, 0x32

    if-gt p3, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(ILjava/lang/String;)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    if-nez p6, :cond_1

    iget v2, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v3, 0xff00

    and-int/2addr v2, v3

    if-ne v2, v0, :cond_1

    const/16 p3, 0x2d

    :cond_1
    move v4, p3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v8, p1

    move v3, p2

    move v5, p4

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move v3, p2

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(IILjava/lang/String;IZ)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const-string p0, "AppStandbyController"

    const-string/jumbo p2, "Tried to restrict uninstalled app: "

    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot set the standby bucket to "

    invoke-static {p3, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAppStandbyBuckets(Ljava/util/List;III)V
    .locals 16

    move-object/from16 v0, p0

    const-string/jumbo v6, "setAppStandbyBucket"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v3, p2

    move/from16 v2, p3

    move/from16 v1, p4

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v8, v2

    const/4 v1, 0x0

    if-eqz v8, :cond_1

    const/16 v2, 0x7d0

    if-ne v8, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    move v7, v2

    :goto_1
    const/16 v2, 0x3e8

    invoke-static {v8, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    move/from16 v4, p4

    if-ne v4, v2, :cond_3

    :cond_2
    if-eqz v7, :cond_4

    :cond_3
    const/16 v2, 0x400

    goto :goto_2

    :cond_4
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x600

    goto :goto_2

    :cond_5
    const/16 v2, 0x500

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move v10, v1

    :goto_3
    if-ge v10, v9, :cond_9

    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/AppStandbyInfo;

    iget-object v6, v1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget v1, v1, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/16 v12, 0xa

    if-lt v1, v12, :cond_8

    const/16 v12, 0x32

    if-gt v1, v12, :cond_8

    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v12, v12, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v13, 0x4c0000

    invoke-virtual {v12, v6, v13, v14, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12

    if-eq v12, v8, :cond_7

    if-ltz v12, :cond_6

    move v15, v2

    move v2, v1

    move v1, v3

    move v3, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set standby bucket for non existent package ("

    const-string v2, ")"

    invoke-static {v1, v6, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set the standby bucket to "

    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method

.method public final setAppStandbyBucketsForMARs(Ljava/util/List;IIIZZ)V
    .locals 9

    const/16 v0, 0x700

    if-eq p4, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v0, :cond_1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/AppStandbyInfo;

    iget-object v2, v1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucketForMARs(Ljava/lang/String;IIIZZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setChargingState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final setEstimatedLaunchTime(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p2, p1, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldNoteResponseEventForAllBroadcastSessions()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    return p0
.end method

.method public final updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
