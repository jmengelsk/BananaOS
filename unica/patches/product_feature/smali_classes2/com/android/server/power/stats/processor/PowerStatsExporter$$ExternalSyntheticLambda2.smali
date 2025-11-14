.class public final synthetic Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final synthetic f$3:[J

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/power/stats/format/PowerStatsLayout;

.field public final synthetic f$6:Z

.field public final synthetic f$7:[D

.field public final synthetic f$8:[J


# direct methods
.method public synthetic constructor <init>(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iput-object p4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$3:[J

    iput p5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iput-boolean p7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$6:Z

    iput-object p8, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$7:[D

    iput-object p9, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$8:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 12

    iget v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$3:[J

    iget v4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$4:I

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iget-boolean v6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$6:Z

    iget-object v7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$7:[D

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$8:[J

    check-cast p1, [I

    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->areMatchingStates(II[I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_21

    :cond_1b
    invoke-virtual {v2, v4, p1, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_21
    return-void

    :cond_22
    iget v0, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    const-wide/16 v0, 0x0

    goto :goto_33

    :cond_2a
    aget-wide v0, v3, v0

    long-to-double v0, v0

    const-wide v8, 0x412e848000000000L  # 1000000.0

    div-double/2addr v0, v8

    :goto_33
    invoke-virtual {v5, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v2

    if-eqz v6, :cond_4a

    const/4 v4, 0x2

    aget p1, p1, v4

    if-nez p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v4, p1

    :goto_40
    aget-wide v5, v7, v4

    add-double/2addr v5, v0

    aput-wide v5, v7, v4

    aget-wide v5, p0, v4

    add-long/2addr v5, v2

    aput-wide v5, p0, v4

    :cond_4a
    const/4 p1, 0x0

    aget-wide v4, v7, p1

    add-double/2addr v4, v0

    aput-wide v4, v7, p1

    aget-wide v0, p0, p1

    add-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method
