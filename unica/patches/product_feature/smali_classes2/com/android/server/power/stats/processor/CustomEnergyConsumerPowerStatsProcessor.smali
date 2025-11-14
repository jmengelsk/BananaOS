.class public final Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;


# instance fields
.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v2, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_1f
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2b
    sget-object v3, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    const-wide v4, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    if-ltz v2, :cond_61

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v8, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v8, v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v7

    if-nez v7, :cond_4b

    goto :goto_5e

    :cond_4b
    iget-object v7, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v8

    long-to-double v8, v8

    mul-double/2addr v8, v4

    invoke-virtual {v3, v7, v8, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v3, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    :cond_61
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v6

    if-eqz v6, :cond_ce

    iget-object v6, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_77
    if-ltz v6, :cond_ce

    iget-object v7, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_8f
    if-ltz v8, :cond_cb

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_9d
    if-ltz v10, :cond_c8

    invoke-virtual {v2, v10}, Landroid/util/IntArray;->get(I)I

    move-result v11

    iget-object v12, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v13, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v11, v13, v12}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v12

    if-eqz v12, :cond_c5

    iget-object v12, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v13, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    aget-wide v13, v12, v13

    long-to-double v13, v13

    mul-double/2addr v13, v4

    const-wide/16 v15, 0x0

    cmpl-double v15, v13, v15

    if-eqz v15, :cond_c5

    invoke-virtual {v3, v12, v13, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v12, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_c5
    add-int/lit8 v10, v10, -0x1

    goto :goto_9d

    :cond_c8
    add-int/lit8 v8, v8, -0x1

    goto :goto_8f

    :cond_cb
    add-int/lit8 v6, v6, -0x1

    goto :goto_77

    :cond_ce
    return-void
.end method
