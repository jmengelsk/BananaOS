.class public final Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayCount:I

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v0, v0, [[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    iget v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    if-ge v1, v2, :cond_65

    iget-object v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    const-string/jumbo v2, "screen.full.display"

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v5, 0x5

    new-array v6, v5, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aput-object v6, v4, v1

    move v4, v0

    :goto_3a
    if-ge v4, v5, :cond_52

    int-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L  # 0.5

    add-double/2addr v6, v8

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4014000000000000L  # 5.0

    div-double/2addr v6, v8

    iget-object v8, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v8, v8, v1

    new-instance v9, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v9, v6, v7}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_52
    iget-object v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "ambient.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_65
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v2, :cond_9

    return-void

    :cond_9
    iget-object v3, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_4c

    :cond_12
    new-instance v3, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-direct {v3, v2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iget v4, v3, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    iget v5, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    if-eq v4, v5, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incompatible number of displays: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ScreenPowerStatsProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    iput-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v3, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    :goto_4c
    iget-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    if-nez v2, :cond_59

    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    :cond_59
    iget-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_65
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-ltz v2, :cond_149

    iget-object v8, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v9, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v10, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v10, v9}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v9

    if-nez v9, :cond_87

    move/from16 v16, v2

    move-object v15, v3

    move/from16 p2, v4

    goto/16 :goto_142

    :cond_87
    iget-object v9, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    aget v10, v9, v4

    const-wide v11, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    if-nez v10, :cond_fe

    iget-object v10, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget v13, v10, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-lez v13, :cond_a6

    iget-object v6, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v10, v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v5, v11

    :goto_a0
    move/from16 v16, v2

    move-object v15, v3

    move/from16 p2, v4

    goto :goto_ed

    :cond_a6
    move v10, v5

    :goto_a7
    iget-object v11, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget v12, v11, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    if-ge v10, v12, :cond_eb

    iget-object v12, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v13, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v13, v13, v10

    iget v11, v11, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenOnDurationPosition:I

    add-int/2addr v11, v10

    aget-wide v14, v12, v11

    move/from16 p2, v4

    iget-wide v4, v13, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v13, v14

    mul-double/2addr v4, v13

    move-wide v13, v4

    const/4 v4, 0x0

    :goto_c0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_e1

    iget-object v5, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v5, v5, v10

    aget-object v5, v5, v4

    iget-object v11, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v11, v11, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceBrightnessDurationPositions:[I

    aget v11, v11, v4

    add-int/2addr v11, v10

    move/from16 v16, v2

    move-object v15, v3

    aget-wide v2, v12, v11

    move v11, v4

    iget-wide v4, v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v2, v2

    mul-double/2addr v4, v2

    add-double/2addr v13, v4

    add-int/lit8 v4, v11, 0x1

    move-object v3, v15

    move/from16 v2, v16

    goto :goto_c0

    :cond_e1
    move/from16 v16, v2

    move-object v15, v3

    add-double/2addr v6, v13

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p2

    const/4 v5, 0x0

    goto :goto_a7

    :cond_eb
    move-wide v5, v6

    goto :goto_a0

    :goto_ed
    iget-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    new-instance v2, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    iput-object v2, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    goto :goto_13d

    :cond_fe
    move/from16 v16, v2

    move-object v15, v3

    move/from16 p2, v4

    iget-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget v3, v2, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    if-lez v3, :cond_113

    iget-object v3, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy(I[J)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, v11

    goto :goto_12e

    :cond_113
    const/4 v5, 0x0

    :goto_114
    iget-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget v3, v2, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDisplayCount:I

    if-ge v5, v3, :cond_12d

    iget-object v3, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v3, v3, v5

    iget-object v4, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v2, v2, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozeDurationPosition:I

    add-int/2addr v2, v5

    aget-wide v10, v4, v2

    iget-wide v2, v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v10, v10

    mul-double/2addr v2, v10

    add-double/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_114

    :cond_12d
    move-wide v2, v6

    :goto_12e
    iget-object v4, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v4, v4, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    const-wide v6, 0x412e848000000000L  # 1000000.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    aput-wide v2, v5, v4

    :goto_13d
    iget-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v9, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_142
    add-int/lit8 v2, v16, -0x1

    move/from16 v4, p2

    move-object v3, v15

    goto/16 :goto_65

    :cond_149
    move-object v15, v3

    move/from16 p2, v4

    iget-object v2, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_158
    if-ltz v2, :cond_195

    iget-object v3, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-wide v8, v6

    :goto_171
    if-ltz v5, :cond_185

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v10, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    if-eqz v10, :cond_182

    iget-wide v10, v10, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    add-double/2addr v8, v10

    :cond_182
    add-int/lit8 v5, v5, -0x1

    goto :goto_171

    :cond_185
    cmpl-double v4, v8, v6

    if-eqz v4, :cond_192

    new-instance v4, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide v8, v4, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    iput-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    :cond_192
    add-int/lit8 v2, v2, -0x1

    goto :goto_158

    :cond_195
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-eqz v3, :cond_248

    invoke-virtual {v15}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, p2

    const/4 v5, 0x2

    aput v4, v3, v5

    iget-object v4, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1b7
    if-ltz v4, :cond_248

    iget-object v5, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    aget v7, v5, p2

    if-nez v7, :cond_1d3

    if-nez v6, :cond_1d6

    :cond_1d3
    move v9, v4

    goto/16 :goto_244

    :cond_1d6
    const/4 v7, 0x0

    aget v5, v5, v7

    aput v5, v3, v7

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_1e4
    if-ltz v5, :cond_1fe

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->get(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v12, v3, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v12

    if-eqz v12, :cond_1fb

    iget-object v12, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v12, v12, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    aget-wide v12, v13, v12

    add-long/2addr v10, v12

    :cond_1fb
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e4

    :cond_1fe
    cmp-long v5, v10, v8

    if-nez v5, :cond_203

    goto :goto_248

    :cond_203
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_209
    if-ltz v5, :cond_1d3

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->get(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v12, v3, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v13

    if-eqz v13, :cond_239

    iget-object v13, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget v15, v13, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mUidTopActivityTimePosition:I

    move-wide/from16 v16, v8

    aget-wide v7, v14, v15

    cmp-long v9, v7, v16

    if-eqz v9, :cond_236

    move v9, v4

    move v15, v5

    iget-wide v4, v6, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    long-to-double v7, v7

    mul-double/2addr v4, v7

    long-to-double v7, v10

    div-double/2addr v4, v7

    invoke-virtual {v13, v14, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    iget-object v4, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v12, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    goto :goto_23d

    :cond_236
    move v9, v4

    move v15, v5

    goto :goto_23d

    :cond_239
    move v15, v5

    move-wide/from16 v16, v8

    move v9, v4

    :goto_23d
    add-int/lit8 v5, v15, -0x1

    move v4, v9

    move-wide/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_209

    :goto_244
    add-int/lit8 v4, v9, -0x1

    goto/16 :goto_1b7

    :cond_248
    :goto_248
    iget-object v0, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method
