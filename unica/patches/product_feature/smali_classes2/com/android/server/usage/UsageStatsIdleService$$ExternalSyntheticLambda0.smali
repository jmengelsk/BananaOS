.class public final synthetic Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsIdleService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    iput p3, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    iget p0, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$2:I

    sget v2, Lcom/android/server/usage/UsageStatsIdleService;->$r8$clinit:I

    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobNamespace()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usagestats_mapping"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    sget-boolean v3, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2, p0}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v3

    iget-object v6, v2, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v2, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_3

    monitor-exit v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    move-result v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    xor-int/lit8 p0, v4, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v2, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v6, v2, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_5
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_6

    monitor-exit v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->pruneUninstalledPackagesData()Z

    move-result v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    xor-int/lit8 p0, v4, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
