.class public final Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_LEVELS:I


# instance fields
.field public final mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxTxPowerEstimators:Landroid/util/SparseArray;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpStateStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    const-wide v2, 0x100000000L

    const-wide/high16 v4, 0x7ff8000000000000L  # Double.NaN

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_23

    iput-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_2a

    :cond_23
    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v6, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v6, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_2a
    const-wide v2, 0x110000000L

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_3c

    iput-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_43

    :cond_3c
    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v6, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v6, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_43
    const-string/jumbo v2, "radio.active"

    const-wide v6, 0x4056800000000000L  # 90.0

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz v6, :cond_74

    const-string/jumbo v2, "modem.controller.rx"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v2, v8

    move v6, v10

    :goto_62
    sget v11, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v6, v11, :cond_71

    const-string/jumbo v11, "modem.controller.tx"

    invoke-virtual {v1, v11, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v11

    add-double/2addr v2, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    :cond_71
    add-int/2addr v11, v7

    int-to-double v11, v11

    div-double/2addr v2, v11

    :cond_74
    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v6, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v6, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v3, "radio.scanning"

    invoke-virtual {v1, v3, v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v11

    invoke-direct {v2, v11, v12}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move v2, v10

    :goto_8a
    const/4 v3, 0x3

    if-ge v2, v3, :cond_135

    const/4 v3, 0x2

    if-ne v2, v3, :cond_92

    const/4 v6, 0x5

    goto :goto_93

    :cond_92
    move v6, v7

    :goto_93
    move v11, v10

    :goto_94
    if-ge v11, v6, :cond_12c

    iget-object v12, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    if-ne v2, v3, :cond_9e

    shl-int/lit8 v13, v11, 0x8

    or-int/2addr v13, v2

    goto :goto_9f

    :cond_9e
    move v13, v2

    :goto_9f
    new-instance v14, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v15

    new-array v15, v15, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v15, v14, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/high16 v15, 0x20000000

    const/4 v3, -0x1

    invoke-static {v15, v2, v11, v3}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    const-string/jumbo v9, "Unavailable Power Profile constant for key 0x"

    const-string/jumbo v15, "MobileRadioPowerStats"

    if-eqz v3, :cond_d9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    goto :goto_db

    :cond_d9
    move-wide/from16 v7, v16

    :goto_db
    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v3, v7, v8}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v3, v14, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move v3, v10

    :goto_e3
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v7

    if-ge v3, v7, :cond_11f

    const/high16 v7, 0x30000000

    invoke-static {v7, v2, v11, v3}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_10f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    goto :goto_111

    :cond_10f
    move-wide/from16 v4, v16

    :goto_111
    iget-object v7, v14, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v8, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v8, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v4, 0x7ff8000000000000L  # Double.NaN

    goto :goto_e3

    :cond_11f
    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x2

    const-wide/high16 v4, 0x7ff8000000000000L  # Double.NaN

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    goto/16 :goto_94

    :cond_12c
    add-int/lit8 v2, v2, 0x1

    const-wide/high16 v4, 0x7ff8000000000000L  # Double.NaN

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    goto/16 :goto_8a

    :cond_135
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v2, :cond_9

    return-void

    :cond_9
    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_2d

    :cond_12
    iput-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v3, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-direct {v3, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    :goto_2d
    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v2, :cond_3a

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_3a
    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_46
    const-wide v3, 0x412e848000000000L  # 1000000.0

    if-ltz v2, :cond_112

    iget-object v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    new-instance v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v5, v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v7

    if-nez v7, :cond_6c

    goto/16 :goto_10e

    :cond_6c
    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget v7, v7, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    add-int/lit8 v7, v7, -0x1

    :goto_72
    if-ltz v7, :cond_84

    iget-wide v8, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v10, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v10, v7, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v10

    add-long/2addr v10, v8

    iput-wide v10, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v7, v7, -0x1

    goto :goto_72

    :cond_84
    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v7, :cond_99

    iget-wide v8, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v10, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v10, v10, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    aget-wide v10, v11, v10

    iget-wide v12, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v10, v10

    mul-double/2addr v12, v10

    add-double/2addr v12, v8

    iput-wide v12, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    :cond_99
    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v7, :cond_ae

    iget-wide v8, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v10, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v10, v10, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    aget-wide v10, v11, v10

    iget-wide v12, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v10, v10

    mul-double/2addr v12, v10

    add-double/2addr v12, v8

    iput-wide v12, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    :cond_ae
    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v7, :cond_c3

    iget-wide v8, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v10, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v10, v10, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    aget-wide v10, v11, v10

    iget-wide v12, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v10, v10

    mul-double/2addr v12, v10

    add-double/2addr v12, v8

    iput-wide v12, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    :cond_c3
    new-instance v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v1, v5, v6}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V

    iget-object v8, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_d0
    if-ltz v8, :cond_de

    iget-object v9, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->accept(I)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_d0

    :cond_de
    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v7, :cond_f0

    iget-object v8, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v8, v8, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    aget-wide v8, v9, v8

    iget-wide v10, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v7, v8

    mul-double/2addr v10, v7

    iput-wide v10, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    :cond_f0
    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v8, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v11, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v9, v11

    iget-wide v11, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v9, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v8, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    iget v6, v7, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    mul-double/2addr v9, v3

    double-to-long v3, v9

    aput-wide v3, v8, v6

    invoke-virtual {v1, v5, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_10e
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_46

    :cond_112
    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget v2, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1c9

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-wide v9, v5

    const-wide/16 v11, 0x0

    :goto_129
    if-ltz v2, :cond_151

    iget-object v13, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v13, v13, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v13, v13, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    iget-wide v14, v13, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    move-wide/from16 p2, v3

    iget-wide v3, v13, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v14, v3

    iget-wide v3, v13, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v14, v3

    iget-wide v3, v13, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    add-double/2addr v14, v3

    add-double/2addr v9, v14

    iget-wide v3, v13, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v11, v3

    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v3, p2

    goto :goto_129

    :cond_151
    move-wide/from16 p2, v3

    cmpl-double v2, v9, v5

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    if-nez v2, :cond_15b

    move-wide v11, v3

    goto :goto_163

    :cond_15b
    long-to-double v11, v11

    const-wide v13, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    mul-double/2addr v11, v13

    div-double/2addr v11, v9

    :goto_163
    cmpl-double v2, v11, v3

    if-eqz v2, :cond_1c9

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_173
    if-ltz v2, :cond_1c9

    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    iget-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v9, v11

    iput-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v9, v11

    iput-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    mul-double/2addr v9, v11

    iput-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    mul-double/2addr v9, v11

    iput-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    iget-object v9, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v4, v9}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v9

    if-nez v9, :cond_1a5

    move-wide v15, v5

    goto :goto_1c5

    :cond_1a5
    iget-object v9, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v13, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    move-wide v15, v5

    iget-wide v5, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v13, v5

    iget-wide v5, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v13, v5

    invoke-virtual {v9, v10, v13, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v6, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v9, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    iget v3, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    mul-double v9, v9, p2

    double-to-long v9, v9

    aput-wide v9, v6, v3

    invoke-virtual {v1, v4, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_1c5
    add-int/lit8 v2, v2, -0x1

    move-wide v5, v15

    goto :goto_173

    :cond_1c9
    move-wide v15, v5

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1d6
    if-ltz v2, :cond_223

    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    new-instance v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1f5
    if-ltz v5, :cond_220

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    iget-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v11, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v9, v11

    iput-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v11, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v9, v11

    iput-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-wide v11, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v9, v11

    iput-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v11, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v9, v11

    iput-wide v9, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_1f5

    :cond_220
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d6

    :cond_223
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eqz v3, :cond_35f

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_233
    if-ltz v3, :cond_29a

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_23a
    iget-object v9, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v9, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_295

    iget-object v9, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v9, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v10, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v10, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    iget-object v9, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_261
    if-ge v12, v11, :cond_290

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v13, v13, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v5, v13, v14}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v13

    if-nez v13, :cond_276

    goto :goto_261

    :cond_276
    iget-wide v13, v10, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-object v4, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    const-wide/16 v17, 0x0

    iget-object v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v8, v4, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide v19, v7, v8

    add-long v13, v13, v19

    iput-wide v13, v10, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-wide v13, v10, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    iget v4, v4, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide v7, v7, v4

    add-long/2addr v13, v7

    iput-wide v13, v10, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    goto :goto_261

    :cond_290
    const-wide/16 v17, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_23a

    :cond_295
    const-wide/16 v17, 0x0

    add-int/lit8 v3, v3, -0x1

    goto :goto_233

    :cond_29a
    const-wide/16 v17, 0x0

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2a2
    if-ltz v3, :cond_35f

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_2a9
    iget-object v6, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_353

    iget-object v6, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2d0
    if-ge v9, v8, :cond_345

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v12, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v4, v12, v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v11

    if-nez v11, :cond_2e5

    goto :goto_2d0

    :cond_2e5
    iget-wide v11, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    cmp-long v13, v11, v17

    if-eqz v13, :cond_302

    iget-wide v13, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    move-wide/from16 v19, v15

    iget-object v15, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    move-object/from16 p3, v2

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v15, v15, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    move/from16 v16, v3

    aget-wide v2, v2, v15

    long-to-double v2, v2

    mul-double/2addr v13, v2

    long-to-double v2, v11

    div-double/2addr v13, v2

    add-double v13, v13, v19

    goto :goto_30a

    :cond_302
    move-object/from16 p3, v2

    move-wide/from16 v19, v15

    move/from16 v16, v3

    move-wide/from16 v13, v19

    :goto_30a
    iget-wide v2, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    cmp-long v11, v2, v17

    if-eqz v11, :cond_324

    iget-wide v11, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v15, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    move/from16 v21, v5

    iget-object v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v15, v15, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    move-object/from16 v22, v6

    aget-wide v5, v5, v15

    long-to-double v5, v5

    mul-double/2addr v11, v5

    long-to-double v2, v2

    div-double/2addr v11, v2

    add-double/2addr v13, v11

    goto :goto_328

    :cond_324
    move/from16 v21, v5

    move-object/from16 v22, v6

    :goto_328
    cmpl-double v2, v13, v19

    if-eqz v2, :cond_33a

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v2, v3, v13, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v2, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_33a
    move-object/from16 v2, p3

    move/from16 v3, v16

    move-wide/from16 v15, v19

    move/from16 v5, v21

    move-object/from16 v6, v22

    goto :goto_2d0

    :cond_345
    move-object/from16 p3, v2

    move/from16 v21, v5

    move-wide/from16 v19, v15

    move/from16 v16, v3

    add-int/lit8 v5, v21, 0x1

    move-wide/from16 v15, v19

    goto/16 :goto_2a9

    :cond_353
    move-object/from16 p3, v2

    move-wide/from16 v19, v15

    move/from16 v16, v3

    add-int/lit8 v3, v16, -0x1

    move-wide/from16 v15, v19

    goto/16 :goto_2a2

    :cond_35f
    iget-object v0, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method
