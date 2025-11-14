.class public final Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field public final mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

.field public final mTmpDeviceStats:[J

.field public mTmpScreenStats:[J


# direct methods
.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    const/16 v2, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .registers 6

    iget-object p2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object p2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object p2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object p2, p2, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-nez p2, :cond_12

    goto :goto_16

    :cond_12
    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_17

    :goto_16
    return-void

    :cond_17
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v1, :cond_21

    invoke-virtual {v1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    :cond_21
    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v1, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    :cond_32
    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-static {v1, v0, p0, p3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    return-void
.end method
