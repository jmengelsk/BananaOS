.class public final Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public mChannels:Ljava/util/Map;

.field public mEntityNames:Ljava/util/Map;

.field public mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field public mStateNames:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .registers 15

    const/16 v0, 0x2715

    const-string/jumbo v1, "StatsPullAtomCallbackImpl"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    if-eq p1, v0, :cond_90

    const/16 v0, 0x2736

    if-ne p1, v0, :cond_82

    :try_start_e
    iget-object v0, p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    new-array v5, v4, [I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v7, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v7}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v6, v5, v9}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService$LocalService;Ljava/util/concurrent/CompletableFuture;[II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyMeasurement;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_79

    if-nez v0, :cond_35

    goto/16 :goto_f7

    :cond_35
    move v1, v4

    :goto_36
    array-length v2, v0

    if-ge v1, v2, :cond_ef

    aget-object v2, v0, v1

    iget-wide v5, v2, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    iget-wide v7, v2, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_74

    iget-object v3, p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    iget v5, v2, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/Channel;

    iget-object v6, v3, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    iget v5, v2, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/Channel;

    iget-object v7, v3, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    iget-wide v8, v2, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    iget-wide v10, v2, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    move v5, p1

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_74
    move v5, p1

    :goto_75
    add-int/lit8 v1, v1, 0x1

    move p1, v5

    goto :goto_36

    :catch_79
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to readEnergyMeterAsync"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f7

    :cond_82
    move v5, p1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Unknown tagId="

    invoke-static {v5, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    move v5, p1

    :try_start_91
    iget-object p1, p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    new-array v0, v4, [I

    invoke-virtual {p1, v0}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a1} :catch_f0

    if-nez p1, :cond_a4

    goto :goto_f7

    :cond_a4
    move v0, v4

    :goto_a5
    array-length v1, p1

    if-ge v0, v1, :cond_ef

    aget-object v1, p1, v0

    move v2, v4

    :goto_ab
    iget-object v3, v1, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v6, v3

    if-ge v2, v6, :cond_ec

    aget-object v3, v3, v2

    iget-object v6, p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mEntityNames:Ljava/util/Map;

    iget v7, v1, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mStateNames:Ljava/util/Map;

    iget v8, v1, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget v8, v3, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v3, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    iget-wide v10, v3, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    :cond_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_ef
    return v4

    :catch_f0
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to getStateResidencyAsync"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f7
    const/4 p0, 0x1

    return p0
.end method
