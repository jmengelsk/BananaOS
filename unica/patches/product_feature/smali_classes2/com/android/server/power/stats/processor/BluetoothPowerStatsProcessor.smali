.class public final Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "bluetooth.controller.rx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "bluetooth.controller.tx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "bluetooth.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-direct {v3, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iget-object v4, v2, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v5, "dt-rx"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    const-string/jumbo v5, "dt-tx"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    const-string/jumbo v5, "dt-idle"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    const-string/jumbo v5, "dt-scan"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    const-string/jumbo v5, "ub-rx"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    const-string/jumbo v5, "ub-tx"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    const-string/jumbo v5, "ut-scan"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    iput-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    :goto_0
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_2
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_5

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    new-instance v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v4, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v6, v6, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    sub-int/2addr v6, v3

    :goto_2
    if-ltz v6, :cond_4

    iget-wide v7, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v9, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v9, v6, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v8, v6, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    aget-wide v8, v7, v8

    iput-wide v8, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    iget v10, v6, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    aget-wide v10, v7, v10

    iput-wide v10, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    iget v12, v6, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide v12, v7, v12

    iput-wide v12, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget v12, v6, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide v12, v7, v12

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v14, v14, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v8, v8

    mul-double/2addr v14, v8

    iput-wide v14, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v8, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v8, v8, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v10, v10

    mul-double/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v10, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v10, v10, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v12, v12

    mul-double/2addr v10, v12

    iput-wide v10, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v14, v8

    add-double/2addr v14, v10

    invoke-virtual {v6, v7, v14, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v2, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_4
    if-ltz v2, :cond_6

    iget-object v12, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v12, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v12, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    iget-wide v13, v12, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    move/from16 p2, v3

    const-wide/16 v15, 0x0

    iget-wide v3, v12, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v13, v3

    iget-wide v3, v12, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v13, v3

    add-double/2addr v8, v13

    iget-wide v3, v12, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v10, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v3, p2

    goto :goto_4

    :cond_6
    move/from16 p2, v3

    const-wide/16 v15, 0x0

    cmpl-double v2, v8, v15

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_7

    move-wide v10, v3

    goto :goto_5

    :cond_7
    long-to-double v10, v10

    const-wide v12, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double/2addr v10, v12

    div-double/2addr v10, v8

    :goto_5
    cmpl-double v2, v10, v3

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_9

    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    iget-wide v8, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v8, v10

    iput-wide v8, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v12, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v12, v10

    iput-wide v12, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    const-wide/16 v17, 0x0

    iget-wide v6, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    mul-double/2addr v6, v10

    iput-wide v6, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v8, v12

    add-double/2addr v8, v6

    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v4, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v5, v8, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v4, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    :goto_8
    const-wide/16 v17, 0x0

    goto :goto_9

    :cond_a
    move/from16 p2, v3

    const-wide/16 v15, 0x0

    goto :goto_8

    :goto_9
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-ltz v2, :cond_c

    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    new-instance v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_b
    if-ltz v5, :cond_b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_c
    if-ltz v3, :cond_10

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_d
    iget-object v7, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    iget-object v7, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v9, :cond_e

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v12, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v11, v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v5, v11, v12}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_e

    :cond_d
    iget-wide v11, v8, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-object v13, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v4, v13, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide v19, v14, v4

    add-long v11, v11, v19

    iput-wide v11, v8, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-wide v11, v8, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    iget v4, v13, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide v13, v14, v4

    add-long/2addr v11, v13

    iput-wide v11, v8, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    goto :goto_e

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_10
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_f
    if-ltz v3, :cond_1d

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_10
    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1c

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    iget-wide v8, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    cmp-long v10, v8, v10

    if-lez v10, :cond_11

    move/from16 v10, p2

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    :goto_11
    iget-wide v11, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_12

    move/from16 v8, p2

    goto :goto_12

    :cond_12
    const/4 v8, 0x0

    :goto_12
    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v9, :cond_1b

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v14, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v4, v14, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v13

    if-nez v13, :cond_13

    goto :goto_13

    :cond_13
    if-eqz v10, :cond_16

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    cmp-long v19, v13, v17

    if-eqz v19, :cond_14

    move-object/from16 v19, v2

    move/from16 v20, v3

    iget-wide v2, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    move-wide/from16 v21, v15

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    move-wide/from16 v23, v2

    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v3, v15, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide v2, v2, v3

    long-to-double v2, v2

    mul-double v2, v2, v23

    long-to-double v13, v13

    div-double/2addr v2, v13

    add-double v2, v2, v21

    move/from16 v16, v5

    move-object/from16 v23, v6

    goto :goto_15

    :cond_14
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v15

    :cond_15
    move/from16 v16, v5

    move-object/from16 v23, v6

    goto :goto_14

    :cond_16
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v15

    iget-wide v2, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    cmp-long v13, v2, v17

    if-eqz v13, :cond_15

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    move/from16 v16, v5

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v15, v15, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    move-object/from16 v23, v6

    aget-wide v5, v5, v15

    long-to-double v5, v5

    mul-double/2addr v13, v5

    long-to-double v2, v2

    div-double/2addr v13, v2

    add-double v2, v13, v21

    goto :goto_15

    :goto_14
    move-wide/from16 v2, v21

    :goto_15
    if-eqz v8, :cond_18

    iget-wide v5, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    cmp-long v13, v5, v17

    if-eqz v13, :cond_17

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    move-wide/from16 v24, v2

    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v3, v15, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide v2, v2, v3

    long-to-double v2, v2

    mul-double/2addr v13, v2

    long-to-double v2, v5

    div-double/2addr v13, v2

    add-double v2, v13, v24

    goto :goto_17

    :cond_17
    move-wide/from16 v24, v2

    goto :goto_16

    :cond_18
    move-wide/from16 v24, v2

    iget-wide v2, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    cmp-long v5, v2, v17

    if-eqz v5, :cond_19

    iget-wide v5, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v13, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v13, v13, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide v13, v14, v13

    long-to-double v13, v13

    mul-double/2addr v5, v13

    long-to-double v2, v2

    div-double/2addr v5, v2

    add-double v2, v5, v24

    goto :goto_17

    :cond_19
    :goto_16
    move-wide/from16 v2, v24

    :goto_17
    cmpl-double v5, v2, v21

    if-eqz v5, :cond_1a

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v2, v12, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_1a
    move/from16 v5, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    move-wide/from16 v15, v21

    move-object/from16 v6, v23

    goto/16 :goto_13

    :cond_1b
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v15

    move/from16 v16, v5

    add-int/lit8 v5, v16, 0x1

    move-wide/from16 v15, v21

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v21, v15

    add-int/lit8 v3, v20, -0x1

    goto/16 :goto_f

    :cond_1d
    iget-object v0, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method
