.class public final Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v5, 0x1

    const-wide/16 v6, 0x7530

    const-string v3, "*usage.launchTime*"

    const-string v4, "Estimated launch times"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    iput p2, v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .registers 3

    check-cast p2, Ljava/lang/String;

    iget p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .registers 5

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    iget v2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1f

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    return-void
.end method
