.class public final Lcom/android/server/power/stats/processor/FlashlightPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 0

    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 p1, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
