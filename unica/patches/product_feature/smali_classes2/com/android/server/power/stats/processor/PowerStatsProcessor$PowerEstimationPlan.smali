.class public final Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final combinedDeviceStateEstimations:Ljava/util/List;

.field public final deviceStateEstimations:Ljava/util/List;

.field public final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public final uidStateEstimates:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_38

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    new-instance v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    invoke-direct {v6, p1, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;-><init>([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_38
    iget-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    const/4 v1, 0x2

    new-array v3, v1, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move v4, v2

    :goto_46
    const/4 v5, -0x1

    if-ge v4, v1, :cond_65

    aget-object v6, v0, v4

    iget-boolean v7, v6, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v7, :cond_50

    goto :goto_62

    :cond_50
    iget-object v6, v6, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v5, :cond_62

    aget-object v5, p1, v6

    iget-boolean v5, v5, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v5, :cond_62

    aget-object v5, v0, v4

    aput-object v5, v3, v4

    :cond_62
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_65
    new-array p1, v1, [I

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    iget-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    const/4 v1, 0x3

    new-array v3, v1, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    new-array v4, v1, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move v6, v2

    :goto_7a
    if-ge v6, v1, :cond_9d

    aget-object v7, p1, v6

    iget-boolean v8, v7, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v8, :cond_83

    goto :goto_9a

    :cond_83
    iget-object v7, v7, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_96

    aget-object v7, v0, v7

    iget-boolean v7, v7, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v7, :cond_96

    aget-object v7, p1, v6

    aput-object v7, v3, v6

    goto :goto_9a

    :cond_96
    aget-object v7, p1, v6

    aput-object v7, v4, v6

    :goto_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    :cond_9d
    invoke-static {p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object p1

    array-length v0, p1

    move v1, v2

    :goto_a3
    if-ge v1, v0, :cond_102

    aget-object v5, p1, v1

    invoke-virtual {p0, v3, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    move-result-object v6

    if-nez v6, :cond_c7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Mismatch in UID and combined device states: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PowerStatsProcessor"

    invoke-static {v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    :cond_c7
    move v7, v2

    :goto_c8
    iget-object v8, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_e4

    iget-object v8, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v9, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    if-ne v9, v6, :cond_e1

    goto :goto_e5

    :cond_e1
    add-int/lit8 v7, v7, 0x1

    goto :goto_c8

    :cond_e4
    const/4 v8, 0x0

    :goto_e5
    if-nez v8, :cond_f3

    new-instance v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {v8, v6, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;-><init>(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    iget-object v6, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    new-instance v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    invoke-direct {v7, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;-><init>([I)V

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ff
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    :cond_102
    return-void
.end method


# virtual methods
.method public final combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    if-lt p4, v0, :cond_49

    iget-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object p1

    :goto_e
    iget-object p4, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge v1, p4, :cond_2e

    iget-object p4, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v0, p4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2f

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2e
    const/4 p4, 0x0

    :goto_2f
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    move-result-object p1

    if-nez p1, :cond_41

    new-instance p1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    invoke-direct {p1, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;-><init>([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)V

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_49
    aget-object v0, p1, p4

    iget-boolean v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v0, :cond_61

    :goto_4f
    aget-object v0, p1, p4

    iget-object v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_60

    aput v1, p3, p4

    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_60
    return-void

    :cond_61
    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    return-void
.end method

.method public final getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .registers 5

    invoke-static {p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_5
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_25

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    return-object v0

    :cond_22
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final resetIntermediates()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    const/4 v1, 0x0

    if-ltz v0, :cond_1c

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1c
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_37

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_37
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_41
    if-ltz v0, :cond_68

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_57
    if-ltz v2, :cond_65

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, -0x1

    goto :goto_57

    :cond_65
    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    :cond_68
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Step 1. Compute device-wide power estimates for state combinations:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    const-string v5, "\n"

    const-string v6, "    "

    if-ge v4, v2, :cond_2c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_2c
    const-string/jumbo v1, "Step 2. Combine device-wide estimates that are untracked per UID:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    move v7, v4

    :goto_3c
    if-ge v7, v2, :cond_88

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v9, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_52

    goto :goto_3c

    :cond_52
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_60
    iget-object v9, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_83

    if-eqz v4, :cond_71

    const-string v9, " + "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    iget-object v9, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v9, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v10

    goto :goto_3c

    :cond_88
    if-nez v4, :cond_8f

    const-string v1, "    N/A\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    const-string/jumbo v1, "Step 3. Proportionally distribute power estimates to UIDs:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    :goto_9e
    if-ge v2, v1, :cond_e5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n        among: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v3

    :goto_b8
    iget-object v8, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_e1

    iget-object v8, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    if-eqz v7, :cond_d3

    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d3
    iget-object v9, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->states:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-static {v9, v8}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_b8

    :cond_e1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    :cond_e5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
