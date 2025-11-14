.class public final synthetic Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;

.field public final synthetic f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final synthetic f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iput-object p3, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    check-cast p1, [I

    iget-object v2, v0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    iget v1, v1, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->mDeviceScreenDozePowerPosition:I

    aget-wide v1, v2, v1

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_1
    :goto_0
    return-void
.end method
