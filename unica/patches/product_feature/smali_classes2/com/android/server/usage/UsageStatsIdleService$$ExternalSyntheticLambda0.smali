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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsIdleService;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    iput p3, p0, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

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

    if-eqz v3, :cond_68

    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    sget-boolean v3, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v6

    if-eqz v6, :cond_38

    invoke-virtual {v6, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_36

    goto :goto_38

    :cond_36
    move v4, v5

    goto :goto_60

    :cond_38
    :goto_38
    invoke-virtual {v2, p0}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v3

    iget-object v6, v2, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3f
    iget-object v7, v2, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    monitor-exit v6

    goto :goto_60

    :catchall_4d
    move-exception p0

    goto :goto_66

    :cond_4f
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_5b

    monitor-exit v6

    goto :goto_60

    :cond_5b
    invoke-virtual {p0, v3}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    move-result v4

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_3f .. :try_end_60} :catchall_4d

    :goto_60
    xor-int/lit8 p0, v4, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :goto_66
    :try_start_66
    monitor-exit v6
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_4d

    throw p0

    :cond_68
    check-cast v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v2, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6f
    iget-object v6, v2, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f

    monitor-exit v3

    goto :goto_90

    :catchall_7d
    move-exception p0

    goto :goto_96

    :cond_7f
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_8b

    monitor-exit v3

    goto :goto_90

    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->pruneUninstalledPackagesData()Z

    move-result v4

    monitor-exit v3
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_7d

    :goto_90
    xor-int/lit8 p0, v4, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :goto_96
    :try_start_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_7d

    throw p0
.end method
