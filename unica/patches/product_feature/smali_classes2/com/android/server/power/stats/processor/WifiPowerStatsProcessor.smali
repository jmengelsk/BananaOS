.class public final Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mHasWifiPowerController:Z

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.rx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.tx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.active"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.scan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.batchedscan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    iput-object v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-direct {v3, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iget-object v4, v2, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v5, "prs"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    const-string/jumbo v5, "dt-rx"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    const-string/jumbo v5, "dt-tx"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    const-string/jumbo v5, "dt-scan"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    const-string/jumbo v5, "dt-basic-scan"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    const-string/jumbo v5, "dt-batch-scan"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    const-string/jumbo v5, "dt-idle"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    const-string/jumbo v5, "dt-on"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    const-string/jumbo v5, "urxb"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    const-string/jumbo v5, "utxb"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    const-string/jumbo v5, "urxp"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    const-string/jumbo v5, "utxp"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    const-string/jumbo v5, "ut-scan"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    const-string/jumbo v5, "ut-bscan"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    iput-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget v4, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v4, v4, [J

    iput-object v4, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-boolean v2, v3, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    iput-boolean v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    :goto_0
    iget-object v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_2
    iget-object v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_6

    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    new-instance v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v3, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v5

    if-nez v5, :cond_3

    move/from16 p2, v2

    move-object v2, v1

    goto/16 :goto_4

    :cond_3
    iget-object v5, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget v5, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    add-int/lit8 v5, v5, -0x1

    :goto_2
    if-ltz v5, :cond_4

    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v8, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v8, v5, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v8

    add-long/2addr v8, v6

    iput-wide v8, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v7, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    aget-wide v7, v6, v7

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget v9, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    aget-wide v9, v6, v9

    iput-wide v9, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    iget-boolean v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    iget-object v12, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v11, :cond_5

    iget v7, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    aget-wide v7, v6, v7

    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v9, v9, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v7, v7

    mul-double/2addr v9, v7

    iput-wide v9, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget v7, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    aget-wide v7, v6, v7

    iget-object v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v13, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v7, v7

    mul-double/2addr v13, v7

    iput-wide v13, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget v7, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide v7, v6, v7

    iget-wide v11, v12, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v7, v7

    mul-double/2addr v11, v7

    iput-wide v11, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    iget v7, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide v7, v6, v7

    iget-object v15, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move-wide/from16 p2, v9

    iget-wide v9, v15, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v7, v7

    mul-double/2addr v9, v7

    iput-wide v9, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double v7, p2, v13

    add-double/2addr v7, v11

    add-double/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    move/from16 p2, v2

    goto :goto_3

    :cond_5
    iget v11, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    aget-wide v13, v6, v11

    iget-object v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move/from16 p2, v2

    iget-wide v1, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v13, v13

    mul-double/2addr v1, v13

    iput-wide v1, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v11, v12, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v7, v7

    mul-double/2addr v11, v7

    iput-wide v11, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v7, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v9, v9

    mul-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v1, v11

    add-double/2addr v1, v7

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    :goto_3
    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    move-object/from16 v2, p1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_4
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v23, v2

    move v2, v1

    move-object/from16 v1, v23

    goto/16 :goto_1

    :cond_6
    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget v1, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-wide v7, v3

    const-wide/16 v9, 0x0

    :goto_5
    if-ltz v1, :cond_8

    iget-object v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v11, v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v11, v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    iget-boolean v12, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v12, :cond_7

    iget-wide v12, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v14, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v12, v14

    iget-wide v14, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v12, v14

    iget-wide v14, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    :goto_6
    add-double/2addr v12, v14

    add-double/2addr v12, v7

    move-wide v7, v12

    goto :goto_7

    :cond_7
    iget-wide v12, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v14, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v12, v14

    iget-wide v14, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    goto :goto_6

    :goto_7
    iget-wide v11, v11, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v9, v11

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_8
    cmpl-double v1, v7, v3

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-nez v1, :cond_9

    move-wide v9, v11

    goto :goto_8

    :cond_9
    long-to-double v9, v9

    const-wide v13, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double/2addr v9, v13

    div-double/2addr v9, v7

    :goto_8
    cmpl-double v1, v9, v11

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_c

    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    iget-boolean v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v11, :cond_a

    iget-wide v11, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v11, v9

    iput-wide v11, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v13, v9

    iput-wide v13, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    move-wide/from16 p2, v3

    iget-wide v3, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    mul-double/2addr v3, v9

    iput-wide v3, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    const-wide/16 v15, 0x0

    iget-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    mul-double/2addr v5, v9

    iput-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v11, v13

    add-double/2addr v11, v3

    add-double/2addr v11, v5

    goto :goto_a

    :cond_a
    move-wide/from16 p2, v3

    const-wide/16 v15, 0x0

    iget-wide v3, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    mul-double/2addr v3, v9

    iput-wide v3, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    mul-double/2addr v5, v9

    iput-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    iget-wide v11, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    mul-double/2addr v11, v9

    iput-wide v11, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v3, v5

    add-double/2addr v11, v3

    :goto_a
    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v8, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_b

    :cond_b
    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v4, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v11, v12}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v8, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_b
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v3, p2

    goto :goto_9

    :cond_c
    move-wide/from16 p2, v3

    const-wide/16 v15, 0x0

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_f

    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    new-instance v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_d
    if-ltz v5, :cond_e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    iget-boolean v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v7, :cond_d

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    goto :goto_e

    :cond_d
    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    :goto_e
    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_f
    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_f
    if-ltz v3, :cond_13

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->get(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_10
    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_12

    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v9, :cond_11

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v12, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v11, v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v2, v5, v11, v12}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_11

    :cond_10
    iget-wide v11, v8, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-object v13, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v4, v13, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide v17, v14, v4

    add-long v11, v11, v17

    iput-wide v11, v8, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-wide v11, v8, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    iget v4, v13, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide v13, v14, v4

    add-long/2addr v11, v13

    iput-wide v11, v8, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    goto :goto_11

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_12
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_13
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_12
    if-ltz v3, :cond_1e

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_13
    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1d

    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v8, :cond_1c

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v12, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v2, v4, v12, v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_14

    :cond_14
    iget-boolean v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v11, :cond_17

    iget-wide v11, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    cmp-long v13, v11, v15

    if-eqz v13, :cond_15

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    move-wide/from16 v17, v15

    iget-object v15, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v15, v15, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    move/from16 v19, v5

    move-object/from16 v20, v6

    aget-wide v5, v1, v15

    long-to-double v5, v5

    mul-double/2addr v13, v5

    long-to-double v5, v11

    div-double/2addr v13, v5

    add-double v13, v13, p2

    goto :goto_15

    :cond_15
    move/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v17, v15

    move-object/from16 v16, v1

    move-wide/from16 v13, p2

    :goto_15
    iget-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    cmp-long v1, v5, v17

    if-eqz v1, :cond_16

    iget-wide v11, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v1, v1, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    move/from16 v21, v8

    move/from16 v22, v9

    aget-wide v8, v15, v1

    long-to-double v8, v8

    mul-double/2addr v11, v8

    long-to-double v5, v5

    div-double/2addr v11, v5

    add-double/2addr v13, v11

    goto :goto_16

    :cond_16
    move/from16 v21, v8

    move/from16 v22, v9

    :goto_16
    iget-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget-wide v8, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    add-long/2addr v5, v8

    cmp-long v1, v5, v17

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v8, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v9, v1, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide v11, v8, v9

    iget v1, v1, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    aget-wide v8, v8, v1

    add-long/2addr v11, v8

    iget-wide v8, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    long-to-double v11, v11

    mul-double/2addr v8, v11

    long-to-double v5, v5

    div-double/2addr v8, v5

    add-double/2addr v13, v8

    goto :goto_19

    :cond_17
    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v9

    move-wide/from16 v17, v15

    move-object/from16 v16, v1

    iget-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-wide v8, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    add-long/2addr v5, v8

    cmp-long v1, v5, v17

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v8, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v9, v1, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide v11, v8, v9

    iget v1, v1, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide v8, v8, v1

    add-long/2addr v11, v8

    iget-wide v8, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    long-to-double v11, v11

    mul-double/2addr v8, v11

    long-to-double v5, v5

    div-double/2addr v8, v5

    add-double v8, v8, p2

    goto :goto_17

    :cond_18
    move-wide/from16 v8, p2

    :goto_17
    iget-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    cmp-long v1, v5, v17

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v1, v1, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    aget-wide v11, v11, v1

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    long-to-double v11, v11

    mul-double/2addr v13, v11

    long-to-double v5, v5

    div-double/2addr v13, v5

    add-double/2addr v13, v8

    goto :goto_18

    :cond_19
    move-wide v13, v8

    :goto_18
    iget-wide v5, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    cmp-long v1, v5, v17

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v8, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v1, v1, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    aget-wide v8, v8, v1

    iget-wide v11, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    long-to-double v8, v8

    mul-double/2addr v11, v8

    long-to-double v5, v5

    div-double/2addr v11, v5

    add-double/2addr v13, v11

    :cond_1a
    :goto_19
    cmpl-double v1, v13, p2

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v5, v13, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v1, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v5, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v2, v4, v1, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_1b
    move-object/from16 v1, v16

    move-wide/from16 v15, v17

    move/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v8, v21

    move/from16 v9, v22

    goto/16 :goto_14

    :cond_1c
    move/from16 v19, v5

    move-wide/from16 v17, v15

    move-object/from16 v16, v1

    add-int/lit8 v5, v19, 0x1

    move-wide/from16 v15, v17

    goto/16 :goto_13

    :cond_1d
    move-wide/from16 v17, v15

    move-object/from16 v16, v1

    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v15, v17

    goto/16 :goto_12

    :cond_1e
    iget-object v0, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method
