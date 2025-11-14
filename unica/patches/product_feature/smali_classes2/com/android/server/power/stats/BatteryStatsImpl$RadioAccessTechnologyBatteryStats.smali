.class public final Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActive:Z

.field public mFrequencyRange:I

.field public mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mSignalStrength:I

.field public final perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method public constructor <init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    aput p1, v1, v0

    const-class v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    move v1, v0

    :goto_23
    if-ge v1, p1, :cond_40

    move v2, v0

    :goto_26
    if-ge v2, v3, :cond_3b

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v1

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3b
    move-object v6, p2

    move-object v9, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_40
    return-void
.end method


# virtual methods
.method public final getRxDurationCounter(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    if-nez v0, :cond_24

    if-nez p2, :cond_a

    return-object v2

    :cond_a
    array-length p2, v1

    const/4 v0, 0x0

    aget-object v3, v1, v0

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    new-array v4, p2, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    :goto_16
    if-ge v0, p2, :cond_24

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_24
    if-ltz p1, :cond_2f

    array-length p2, v1

    if-lt p1, p2, :cond_2a

    goto :goto_2f

    :cond_2a
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    return-object p0

    :cond_2f
    :goto_2f
    const-string/jumbo p0, "Unexpected frequency range ("

    const-string p2, ") requested in getRxDurationCounter"

    const-string v0, "BatteryStatsImpl"

    invoke-static {p1, p0, p2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getTxDurationCounter(IIZ)Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .registers 13

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3c

    if-nez p3, :cond_b

    return-object v2

    :cond_b
    array-length p3, v1

    aget-object v0, v1, v3

    array-length v4, v0

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput p3, v5, v3

    const-class v6, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move v5, v3

    :goto_26
    if-ge v5, p3, :cond_3c

    move v6, v3

    :goto_29
    if-ge v6, v4, :cond_39

    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v7, v7, v5

    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v8, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3c
    const-string p3, ") requested in getTxDurationCounter"

    const-string v0, "BatteryStatsImpl"

    if-ltz p1, :cond_5c

    array-length v4, v1

    if-lt p1, v4, :cond_46

    goto :goto_5c

    :cond_46
    if-ltz p2, :cond_55

    aget-object v1, v1, v3

    array-length v1, v1

    if-lt p2, v1, :cond_4e

    goto :goto_55

    :cond_4e
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    return-object p0

    :cond_55
    :goto_55
    const-string/jumbo p0, "Unexpected signal strength ("

    invoke-static {p2, p0, p3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5c
    :goto_5c
    const-string/jumbo p0, "Unexpected frequency range ("

    invoke-static {p1, p0, p3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final noteActive(JZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-ne v0, p3, :cond_5

    return-void

    :cond_5
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p3, :cond_17

    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object p3, v0, p3

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object p0, p3, p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void

    :cond_17
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object p3, v0, p3

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object p0, p3, p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    return-void
.end method
