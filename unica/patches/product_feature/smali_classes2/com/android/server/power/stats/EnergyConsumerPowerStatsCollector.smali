.class public Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public final mEnergyConsumerId:I

.field public final mEnergyConsumerType:I

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastUpdateTimestamp:J

.field public final mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

.field public final mPowerComponentId:I

.field public final mPowerComponentName:Ljava/lang/String;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;ILjava/lang/String;IILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V
    .registers 14

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    invoke-virtual {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    iput-object p1, v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iput p2, v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    iput-object p3, v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    iput p5, v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    iput p4, v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    iput-object p6, v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .registers 13

    iget-boolean v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    iget-object v1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    if-eqz v0, :cond_7

    goto :goto_49

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v0, :cond_c

    goto :goto_63

    :cond_c
    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    if-eq v3, v0, :cond_1d

    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    goto :goto_28

    :cond_1d
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    iget v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    :goto_28
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v1, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v7, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v10, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    iget v5, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    iget-object v6, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v4}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    :goto_49
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    move-result v0

    if-nez v0, :cond_65

    :goto_63
    const/4 p0, 0x0

    return-object p0

    :cond_65
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    return-object v2
.end method
