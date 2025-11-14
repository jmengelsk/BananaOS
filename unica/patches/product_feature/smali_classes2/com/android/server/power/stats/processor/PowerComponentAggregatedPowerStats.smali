.class public final Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

.field public final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public final mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field public final mDeviceStates:[I

.field public mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPowerStatsTimestamp:J

.field public mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

.field public final mStateStats:Landroid/util/SparseArray;

.field public mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public final mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field public final mUidStats:Landroid/util/SparseArray;

.field public mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public final powerComponentId:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget p1, p2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    iput p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    return-void
.end method

.method public static dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V
    .locals 11

    const/4 v0, 0x1

    new-array v4, v0, [Z

    const/4 v10, 0x0

    aput-boolean v0, v4, v10

    iget-object v0, p1, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v1, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    new-array v3, v1, [J

    new-instance v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-object v5, p0

    move-object v2, p1

    move-object v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    array-length p0, v7

    new-array p0, p0, [I

    invoke-static {v1, v7, p0, v10}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    aget-boolean p0, v4, v10

    if-nez p0, :cond_0

    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 6

    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(I)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v3

    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iget-object v4, v3, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v4, v2, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    iput-boolean v1, v3, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v3, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    iput-boolean v1, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_3

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_3
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v4, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iget-object v5, v3, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v5, v4, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    iput-boolean v1, v3, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    iput-boolean v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    iput-boolean v1, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_2
    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iget-boolean v2, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    iput-boolean v1, v2, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    return-void
.end method

.method public final createDeviceStats(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-direct {v2, v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats;

    iget v3, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/stats/processor/MultiStateStats;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-wide v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    move-wide p1, v2

    :cond_2
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v3, v0, v2, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v4, v0, v2, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final createStateStats(I)Lcom/android/server/power/stats/processor/MultiStateStats;
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats;

    iget v2, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    invoke-direct {v1, v0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_2

    iget-object p1, v1, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {p1, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    :cond_2
    return-object v1
.end method

.method public final createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-direct {v2, v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats;

    iget v3, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    invoke-direct {v2, v0, v3}, Lcom/android/server/power/stats/processor/MultiStateStats;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V

    iput-object v2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-wide v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    move-wide p2, v2

    :cond_2
    cmp-long p0, p2, v4

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v1

    if-ge p0, v0, :cond_3

    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aget v2, v2, p0

    invoke-virtual {v0, p0, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dumpDevice(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v2, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v1

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const-string v2, " states"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-static {p1, v4, v0, v3, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    return-void
.end method

.method public final getActiveUids()Landroid/util/IntArray;
    .locals 3

    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iget-boolean v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getDeviceStats([I[J)Z
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid number of tracked states: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    iget-boolean v4, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-static {v4, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v3, v5, v3

    aput v3, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public final getUidStats(I[I[J)Z
    .locals 3

    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result p0

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid number of tracked states: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " expected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUids()Landroid/util/IntArray;
    .locals 3

    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final setDeviceStats([I[J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    return-void
.end method

.method public final setUidStats(I[I[J)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    iget-object p0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result p0

    invoke-virtual {p1, p0, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v2, [I

    add-int/lit8 v4, v2, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, v3, v4

    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v7, v6, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v6

    invoke-static {v1, v5, v7, v8, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
