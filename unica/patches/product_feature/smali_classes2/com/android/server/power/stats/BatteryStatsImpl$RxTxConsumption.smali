.class public final Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final rxConsumptionMah:D

.field public final txConsumptionMah:D

.field public final txToTotalRatio:D


# direct methods
.method public constructor <init>(DJDJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->rxConsumptionMah:D

    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txConsumptionMah:D

    add-long/2addr p3, p7

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txToTotalRatio:D

    return-void

    :cond_0
    long-to-double p1, p7

    long-to-double p3, p3

    div-double/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txToTotalRatio:D

    return-void
.end method
