.class public final Lcom/android/server/usage/UserUsageStatsService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/usage/UserUsageStatsService$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 12

    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_8a

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const/16 v3, 0xf

    move-object v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const/16 v3, 0x10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const/16 v3, 0x11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const/16 v2, 0x12

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    const/4 v0, 0x1

    return v0

    :pswitch_35  #0x1
    const/4 v1, 0x1

    if-nez p2, :cond_42

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5e

    :cond_42
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_49
    if-ge v4, v3, :cond_5e

    new-instance v5, Landroid/app/usage/ConfigurationStats;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v5, v6}, Landroid/app/usage/ConfigurationStats;-><init>(Landroid/app/usage/ConfigurationStats;)V

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_5e
    :goto_5e
    return v1

    :pswitch_5f  #0x0
    const/4 v1, 0x1

    if-nez p2, :cond_6c

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_88

    :cond_6c
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_73
    if-ge v4, v3, :cond_88

    new-instance v5, Landroid/app/usage/UsageStats;

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    invoke-direct {v5, v6}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_88
    :goto_88
    return v1

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_5f  #00000000
        :pswitch_35  #00000001
    .end packed-switch
.end method
