.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/util/ArraySet;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$0:J

    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$1:J

    iput-object p5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    iput-boolean p7, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 7

    iget-object p2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$0:J

    invoke-virtual {v0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    iget-wide v3, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$1:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;->f$4:Z

    if-eqz v3, :cond_3

    iget-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
