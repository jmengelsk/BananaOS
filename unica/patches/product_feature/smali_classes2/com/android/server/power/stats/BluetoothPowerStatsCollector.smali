.class public final Lcom/android/server/power/stats/BluetoothPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mDeviceStats:[J

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastIdleTime:J

.field public mLastRxTime:J

.field public mLastTxTime:J

.field public mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

.field public final mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mUidStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;)V
    .registers 10

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    iput-object p1, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iput-object p2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .registers 15

    iget-boolean v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    goto/16 :goto_95

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    iput-object v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    new-instance v3, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V

    iput-object v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    new-instance v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v3

    invoke-direct {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    const-string/jumbo v4, "rx"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    const-string/jumbo v4, "tx"

    invoke-virtual {v0, v2, v5, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    const-string/jumbo v4, "idle"

    invoke-virtual {v0, v2, v5, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    const-string/jumbo v4, "scan"

    invoke-virtual {v0, v2, v2, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    const-string/jumbo v3, "rx-B"

    invoke-virtual {v0, v2, v5, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    const-string/jumbo v3, "tx-B"

    invoke-virtual {v0, v2, v5, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {v0, v2, v2, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    new-instance v10, Landroid/os/PersistableBundle;

    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0, v10}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v6, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v9, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v4}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    iput-boolean v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    :goto_95
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    new-instance v6, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;

    invoke-direct {v7, v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v5, :cond_b9

    goto :goto_bf

    :cond_b9
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-nez v5, :cond_c2

    :goto_bf
    move-object v6, v1

    goto/16 :goto_1cc

    :cond_c2
    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    :try_start_c5
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v6, v7, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cf} :catch_d0

    goto :goto_d9

    :catch_d0
    move-exception v0

    const-string v5, "BluetoothPowerStatsCollector"

    const-string v6, "Cannot acquire BluetoothActivityEnergyInfo"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    :goto_d9
    if-nez v0, :cond_dc

    goto :goto_bf

    :cond_dc
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    sub-long v7, v5, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    iget v1, v1, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    aput-wide v7, v9, v1

    iput-wide v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    sub-long v9, v5, v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v11, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    iget v1, v1, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    aput-wide v9, v11, v1

    iput-wide v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v5

    iget-wide v11, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    sub-long v11, v5, v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v13, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    iget v1, v1, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide v11, v13, v1

    iput-wide v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    add-long/2addr v7, v9

    add-long/2addr v7, v11

    iput-wide v7, v1, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_12d
    if-ltz v5, :cond_168

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/UidTraffic;

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v8, v7}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    if-nez v8, :cond_153

    new-instance v8, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_153
    iget-wide v9, v8, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v11

    add-long/2addr v11, v9

    iput-wide v11, v8, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    iget-wide v9, v8, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v6, v9

    iput-wide v6, v8, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_12d

    :cond_168
    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_16f
    if-ltz v1, :cond_1cb

    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    iget-wide v6, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    iget-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    sub-long/2addr v6, v8

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    iput-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    iput-wide v3, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    iget-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    iget-wide v10, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    sub-long/2addr v8, v10

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v10, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    iput-wide v10, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    iput-wide v3, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    cmp-long v5, v6, v3

    if-nez v5, :cond_19f

    cmp-long v5, v8, v3

    if-eqz v5, :cond_1c8

    :cond_19f
    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v10, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v10, v10, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    if-nez v10, :cond_1be

    iget-object v10, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v10, v10, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array v10, v10, [J

    iget-object v11, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v11, v11, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1be
    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v11, v5, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide v6, v10, v11

    iget v5, v5, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide v8, v10, v5

    :cond_1c8
    add-int/lit8 v1, v1, -0x1

    goto :goto_16f

    :cond_1cb
    move-object v6, v0

    :goto_1cc
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    new-instance v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;)V

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5

    :try_start_1d6
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mretrieveBluetoothScanTimesLocked(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;)V

    monitor-exit v5
    :try_end_1dc
    .catchall {:try_start_1d6 .. :try_end_1dc} :catchall_258

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move-wide v1, v3

    :goto_1e4
    if-ltz v0, :cond_22f

    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    iget-wide v7, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    cmp-long v9, v7, v3

    if-nez v9, :cond_1f5

    goto :goto_22c

    :cond_1f5
    iget-wide v9, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    sub-long/2addr v7, v9

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-wide v9, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    iput-wide v9, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    iput-wide v3, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    cmp-long v5, v7, v3

    if-eqz v5, :cond_22c

    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v9, v9, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    if-nez v9, :cond_225

    iget-object v9, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v9, v9, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array v9, v9, [J

    iget-object v10, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v10, v10, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_225
    iget-object v5, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget v5, v5, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    aput-wide v7, v9, v5

    add-long/2addr v1, v7

    :cond_22c
    :goto_22c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e4

    :cond_22f
    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    iget v4, v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide v1, v3, v4

    iget-object v1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

    if-eqz v0, :cond_255

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v11

    const-wide/16 v7, -0x1

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    :cond_255
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0

    :catchall_258
    move-exception v0

    move-object p0, v0

    :try_start_25a
    monitor-exit v5
    :try_end_25b
    .catchall {:try_start_25a .. :try_end_25b} :catchall_258

    throw p0
.end method

.method public final onUidRemoved(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
