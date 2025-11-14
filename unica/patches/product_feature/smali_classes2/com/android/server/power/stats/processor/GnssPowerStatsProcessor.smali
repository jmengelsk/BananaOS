.class public final Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;


# instance fields
.field public final mGnssSignalDurations:[J

.field public mGnssSignalLevel:I

.field public mGnssSignalLevelTimestamp:J

.field public final mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mTmpDeviceStatsArray:[J

.field public final mUseSignalLevelEstimators:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 9

    const-string/jumbo v0, "gps.on"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    const/16 v3, 0xa

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_19
    if-ge v1, v0, :cond_35

    const-string/jumbo v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_29

    const/4 v2, 0x1

    :cond_29
    iget-object v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v6, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_35
    iput-boolean v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    return-void
.end method


# virtual methods
.method public final computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    if-eqz v0, :cond_5f

    if-eqz p3, :cond_7

    goto :goto_5f

    :cond_7
    iget-object p3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    if-nez p3, :cond_13

    iget-object p3, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget p3, p3, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array p3, p3, [J

    iput-object p3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    :cond_13
    iget-object p3, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1d
    if-ltz p3, :cond_5e

    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v2, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_5b

    :cond_34
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_37
    const/4 v4, 0x2

    sget-object v5, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    if-ge v3, v4, :cond_4f

    iget-object v4, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget v5, v5, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    iget-object v6, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v6, v6, v3

    iget-wide v6, v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v4, v4

    mul-double/2addr v6, v4

    add-double/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4f
    iget-object v3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v5, v3, v1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_5b
    add-int/lit8 p3, p3, -0x1

    goto :goto_1d

    :cond_5e
    return-void

    :cond_5f
    :goto_5f
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V

    return-void
.end method

.method public final getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .registers 2

    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .registers 11

    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    const/4 v0, -0x1

    if-eqz p1, :cond_16

    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit16 p1, p1, 0x180

    shr-int/lit8 p1, p1, 0x7

    const/4 v1, 0x2

    if-lt p1, v1, :cond_17

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    move p1, v0

    :cond_17
    :goto_17
    iget v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    if-ne p1, v1, :cond_1c

    return-void

    :cond_1c
    if-eq v1, v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    aget-wide v2, v0, v1

    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v6, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long/2addr v4, v6

    add-long/2addr v4, v2

    aput-wide v4, v0, v1

    :cond_2a
    iput p1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    return-void
.end method

.method public final recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .registers 14

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    iget v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    iget-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    aget-wide v3, v1, v0

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long v5, p3, v5

    add-long/2addr v5, v3

    aput-wide v5, v1, v0

    goto :goto_22

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    aget-wide v3, v1, v0

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long v5, p3, v5

    add-long/2addr v5, v3

    aput-wide v5, v1, v0

    :cond_22
    :goto_22
    const/4 v0, 0x0

    :goto_23
    const/4 v3, 0x2

    if-ge v0, v3, :cond_5b

    aget-wide v3, v1, v0

    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    sget-object v6, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    iget v7, v6, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    add-int/2addr v7, v0

    aput-wide v3, v5, v7

    if-eq p2, v2, :cond_58

    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    if-nez v5, :cond_4e

    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v5, v5, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v5, v5, [J

    iget-object v7, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v6, v6, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    add-int/2addr v6, v0

    aput-wide v3, v5, v6

    goto :goto_58

    :cond_4e
    iget v6, v6, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    add-int v7, v6, v0

    aget-wide v7, v5, v7

    add-long/2addr v7, v3

    add-int/2addr v6, v0

    aput-wide v7, v5, v6

    :cond_58
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_5b
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    const-wide/16 p0, 0x0

    invoke-static {v1, p0, p1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public final start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    iput-wide p2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    iget-object p0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method
