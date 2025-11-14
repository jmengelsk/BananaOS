.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;
.super Landroid/os/BatteryStats$Uid$Wakelock;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;


# virtual methods
.method public final getWakeTime(I)Landroid/os/BatteryStats$Timer;
    .registers 3

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x12

    if-ne p1, v0, :cond_f

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "type = "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0

    :cond_1f
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0

    :cond_22
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method
