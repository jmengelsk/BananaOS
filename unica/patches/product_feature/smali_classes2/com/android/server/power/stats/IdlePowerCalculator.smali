.class public final Lcom/android/server/power/stats/IdlePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAveragePowerCpuIdleMahPerUs:D

.field public final mAveragePowerCpuSuspendMahPerUs:D

.field public mDurationMs:J

.field public mPowerMah:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "cpu.suspend"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x41ead27480000000L    # 3.6E9

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    const-string/jumbo v0, "cpu.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 4

    const/4 p7, 0x0

    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide p3

    invoke-virtual {p2, p5, p6, p7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide p5

    long-to-double v0, p3

    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    mul-double/2addr v0, v2

    long-to-double p5, p5

    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    mul-double/2addr p5, v2

    add-double/2addr p5, v0

    iput-wide p5, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    iput-wide p3, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    const-wide/16 p2, 0x0

    cmpl-double p2, p5, p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p1

    iget-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const/16 p4, 0x10

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    check-cast p1, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_0
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0x10

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
