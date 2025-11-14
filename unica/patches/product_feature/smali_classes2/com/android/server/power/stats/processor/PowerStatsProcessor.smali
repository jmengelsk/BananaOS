.class public abstract Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static -$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget v4, p1, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    array-length v2, p0

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v3, v1, v2

    aput p0, v1, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method


# virtual methods
.method public addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public abstract finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 0

    return-void
.end method

.method public noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0

    return-void
.end method
