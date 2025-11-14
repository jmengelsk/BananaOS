.class public final Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic val$beginTime:J

.field public final synthetic val$endTime:J

.field public final synthetic val$flags:I

.field public final synthetic val$isQueryForAllEvents:Z

.field public final synthetic val$isQueryForAllPackages:Z

.field public final synthetic val$names:Landroid/util/ArraySet;

.field public final synthetic val$pkgNameFilter:Landroid/util/ArraySet;

.field public final synthetic val$queryEventFilter:[Z


# direct methods
.method public constructor <init>(JJZ[ZIZLandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    iput-boolean p5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllEvents:Z

    iput-object p6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$queryEventFilter:[Z

    iput p7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    iput-boolean p8, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllPackages:Z

    iput-object p9, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pkgNameFilter:Landroid/util/ArraySet;

    iput-object p10, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 12

    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    invoke-virtual {p2, v0, v1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p2

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    :goto_e
    const/4 v1, 0x1

    if-ge p2, v0, :cond_96

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    iget-wide v3, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_21

    const/4 p0, 0x0

    return p0

    :cond_21
    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-boolean v4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllEvents:Z

    if-nez v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$queryEventFilter:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_2e

    goto :goto_92

    :cond_2e
    const/16 v4, 0x8

    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    if-ne v3, v4, :cond_3a

    and-int/lit8 v6, v5, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3a

    goto :goto_92

    :cond_3a
    const/16 v6, 0x1e

    if-ne v3, v6, :cond_43

    and-int/lit8 v6, v5, 0x8

    if-ne v6, v4, :cond_43

    goto :goto_92

    :cond_43
    const/16 v4, 0xa

    if-eq v3, v4, :cond_4b

    const/16 v4, 0xc

    if-ne v3, v4, :cond_54

    :cond_4b
    and-int/lit8 v3, v5, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_54

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    :cond_54
    and-int/lit8 v3, v5, 0x1

    if-ne v3, v1, :cond_5c

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    :cond_5c
    iget-boolean v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllPackages:Z

    if-nez v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pkgNameFilter:Landroid/util/ArraySet;

    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    goto :goto_92

    :cond_6b
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_74

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_7d

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v1, :cond_86

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_86
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v1, :cond_8f

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8f
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_92
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_e

    :cond_96
    return v1
.end method
