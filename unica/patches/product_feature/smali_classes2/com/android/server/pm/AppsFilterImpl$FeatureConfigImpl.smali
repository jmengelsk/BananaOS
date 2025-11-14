.class public final Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/FeatureConfig;
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# instance fields
.field public mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mDisabledPackages:Landroid/util/ArraySet;

.field public volatile mFeatureEnabled:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mLoggingEnabled:Landroid/util/SparseBooleanArray;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-boolean v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_1b
    iget-object v2, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_26

    iget-object p1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    return-void

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method


# virtual methods
.method public final enableLogging(IZ)V
    .registers 3

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-nez p2, :cond_d

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    :cond_14
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_2e

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2e

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    iget-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_2e

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    :cond_2e
    return-void
.end method

.method public final isGloballyEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    return p0
.end method

.method public final isLoggingEnabled(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final onCompatChange(Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_61

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v11

    invoke-virtual {v0, v2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V

    iget-object v3, v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    iget-boolean v5, v3, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v5, :cond_23

    goto :goto_44

    :cond_23
    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v8

    iget-object v13, v3, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v13

    :try_start_30
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v5, 0x0

    const/4 v9, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    monitor-exit v13
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_71

    invoke-virtual {v3}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    :goto_44
    iget-object v0, v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v5

    sub-long v16, v5, v11

    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v1

    array-length v1, v1

    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v19

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v15

    iget-boolean v2, v0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v2, :cond_62

    :goto_61
    return-void

    :cond_62
    iget-object v0, v0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget v0, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const/16 v13, 0x222

    const/4 v14, 0x4

    move/from16 v20, v0

    move/from16 v18, v1

    invoke-static/range {v13 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIII)V

    return-void

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v13
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final onSystemReady()V
    .registers 4

    const-string/jumbo v0, "package_manager_service"

    const-string/jumbo v1, "package_query_filtering_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x81452eb

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V

    return-void
.end method

.method public final packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final snapshot()Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
    .registers 2

    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    return-object v0
.end method

.method public final updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-wide/32 v2, 0x81452eb

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter v1

    if-eqz v0, :cond_25

    :try_start_19
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    :catchall_23
    move-exception p0

    goto :goto_37

    :cond_25
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_23

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    :cond_36
    return-void

    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_23

    throw p0
.end method

.method public final updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .registers 5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-nez p2, :cond_1e

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isTestOnly()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->enableLogging(IZ)V

    if-eqz p2, :cond_40

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    monitor-enter p2

    :try_start_2b
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_3d

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0

    :cond_40
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    if-eqz p2, :cond_4d

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_4d
    return-void
.end method
