.class public final synthetic Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[D

.field public final synthetic f$6:Lcom/android/server/power/stats/format/PowerStatsLayout;

.field public final synthetic f$7:[J

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iput p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iput-object p5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$4:[J

    iput-object p6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$5:[D

    iput-object p7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iput-object p8, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$7:[J

    iput-boolean p9, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$8:Z

    iput-object p10, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$9:Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iget v1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$4:[J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$5:[D

    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$7:[J

    iget-boolean v8, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$8:Z

    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$9:Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    check-cast p1, [I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->areMatchingStates(II[I)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_72

    :cond_20
    invoke-virtual {v3, p1, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_72

    :cond_27
    const/4 p1, 0x0

    aget-wide v0, v5, p1

    iget v2, v6, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const/4 v3, -0x1

    const-wide v9, 0x412e848000000000L  # 1000000.0

    if-ne v2, v3, :cond_37

    const-wide/16 v2, 0x0

    goto :goto_3b

    :cond_37
    aget-wide v2, v4, v2

    long-to-double v2, v2

    div-double/2addr v2, v9

    :goto_3b
    add-double/2addr v2, v0

    aput-wide v2, v5, p1

    aget-wide v0, v7, p1

    invoke-virtual {v6, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v2

    add-long/2addr v2, v0

    aput-wide v2, v7, p1

    if-eqz v8, :cond_72

    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    sget-object p1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget v2, p1, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePercentPosition:I

    aget-wide v2, v4, v2

    long-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v2, v9

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    iget v2, p1, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargePosition:I

    aget-wide v2, v4, v2

    long-to-double v2, v2

    const-wide v5, 0x408f400000000000L  # 1000.0

    div-double/2addr v2, v5

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    iget p1, p1, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->mDeviceBatteryDischargeDurationPosition:I

    aget-wide v2, v4, p1

    long-to-int p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    :cond_72
    :goto_72
    return-void
.end method
