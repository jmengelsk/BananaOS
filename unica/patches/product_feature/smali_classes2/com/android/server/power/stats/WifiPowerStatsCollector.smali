.class public final Lcom/android/server/power/stats/WifiPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mDeviceStats:[J

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastNetworkStats:Landroid/net/NetworkStats;

.field public final mLastScanTimes:Landroid/util/SparseArray;

.field public mLastWifiActiveDuration:J

.field public mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

.field public volatile mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

.field public final mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

.field public mPowerReportingSupported:Z

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

.field public volatile mWifiManager:Landroid/net/wifi/WifiManager;

.field public volatile mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;)V
    .registers 10

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    new-instance p0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    iput-object p1, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iput-object p2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .registers 27

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    goto/16 :goto_106

    :cond_a
    iget-boolean v0, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v0, :cond_f

    return-object v3

    :cond_f
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    iput-object v4, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v4

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    iput-boolean v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v5, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V

    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    new-instance v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    iget-boolean v6, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    invoke-direct {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    iput-boolean v6, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    const-string/jumbo v7, "scan"

    const/4 v8, -0x1

    if-eqz v6, :cond_7f

    iput v8, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    const-string/jumbo v6, "rx"

    invoke-virtual {v5, v4, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    const-string/jumbo v6, "tx"

    invoke-virtual {v5, v4, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    const-string/jumbo v6, "idle"

    invoke-virtual {v5, v4, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {v5, v4, v2, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    goto :goto_90

    :cond_7f
    const-string/jumbo v6, "rx-tx"

    invoke-virtual {v5, v4, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    iput v8, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    iput v8, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    iput v8, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    iput v8, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    :goto_90
    const-string/jumbo v6, "basic-scan"

    invoke-virtual {v5, v4, v4, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    const-string/jumbo v6, "batched-scan"

    invoke-virtual {v5, v4, v4, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    invoke-virtual {v5, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    const-string/jumbo v0, "rx-pkts"

    invoke-virtual {v5, v4, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    const-string/jumbo v0, "rx-B"

    invoke-virtual {v5, v4, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    const-string/jumbo v0, "tx-pkts"

    invoke-virtual {v5, v4, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    const-string/jumbo v0, "tx-B"

    invoke-virtual {v5, v4, v2, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {v5, v4, v4, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {v5, v4, v4, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    iput-object v5, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    new-instance v12, Landroid/os/PersistableBundle;

    invoke-direct {v12}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0, v12}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v6, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget v8, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v11, v0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/4 v10, 0x0

    const/16 v7, 0xb

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v6}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iput-boolean v4, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    :goto_106
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-boolean v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    if-eqz v0, :cond_1c6

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v6, v7}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    :try_start_12c
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v6, v7, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_136} :catch_137

    goto :goto_141

    :catch_137
    move-exception v0

    const-string/jumbo v2, "WifiPowerStatsCollector"

    const-string v6, "Cannot acquire WifiActivityEnergyInfo"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    :goto_141
    if-nez v0, :cond_146

    move-object v14, v3

    goto/16 :goto_1c4

    :cond_146
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    if-eqz v2, :cond_18f

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v6

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v2}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v2}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v10

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v2}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v12

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v2}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v20, v6

    move-wide/from16 v18, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    goto :goto_197

    :cond_18f
    move-wide/from16 v18, v4

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-wide/from16 v24, v22

    :goto_197
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v6, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget v7, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    aput-wide v20, v6, v7

    iget v7, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    aput-wide v18, v6, v7

    iget v7, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide v22, v6, v7

    iget v2, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide v24, v6, v2

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    add-long v6, v20, v18

    add-long v6, v6, v22

    add-long v6, v6, v24

    iput-wide v6, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    new-instance v14, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v15

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v17

    invoke-direct/range {v14 .. v25}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    :goto_1c4
    move-object v10, v14

    goto :goto_1f5

    :cond_1c6
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v6

    :try_start_1cb
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v7}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v7, v8, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    div-long/2addr v7, v9

    monitor-exit v6
    :try_end_1de
    .catchall {:try_start_1cb .. :try_end_1de} :catchall_2f6

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-wide v9, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    sub-long v9, v7, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget v0, v0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    aput-wide v9, v2, v0

    iput-wide v7, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iput-wide v7, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    move-object v10, v3

    :goto_1f5
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats;

    if-nez v0, :cond_202

    :cond_1ff
    move-object v11, v3

    goto/16 :goto_2a8

    :cond_202
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v3, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_212
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ff

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    cmp-long v15, v6, v4

    if-nez v15, :cond_24f

    cmp-long v15, v8, v4

    if-nez v15, :cond_24f

    cmp-long v15, v11, v4

    if-nez v15, :cond_24f

    cmp-long v15, v13, v4

    if-nez v15, :cond_24f

    goto :goto_212

    :cond_24f
    iget-object v15, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v2

    iget-object v15, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v15, v15, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [J

    if-nez v15, :cond_285

    iget-object v15, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget v15, v15, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array v15, v15, [J

    iget-object v4, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget v4, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide v6, v15, v4

    iget v4, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide v8, v15, v4

    iget v4, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aput-wide v11, v15, v4

    iget v2, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aput-wide v13, v15, v2

    goto :goto_2a4

    :cond_285
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget v4, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide v18, v15, v4

    add-long v18, v18, v6

    aput-wide v18, v15, v4

    iget v4, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide v5, v15, v4

    add-long/2addr v5, v8

    aput-wide v5, v15, v4

    iget v4, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide v5, v15, v4

    add-long/2addr v5, v11

    aput-wide v5, v15, v4

    iget v2, v2, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide v4, v15, v2

    add-long/2addr v4, v13

    aput-wide v4, v15, v2

    :goto_2a4
    const-wide/16 v4, 0x0

    goto/16 :goto_212

    :goto_2a8
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    iput-wide v2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    new-instance v2, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector;)V

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_2ba
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mretrieveWifiScanTimesLocked(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;)V

    monitor-exit v3
    :try_end_2c0
    .catchall {:try_start_2ba .. :try_end_2c0} :catchall_2f3

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-object v3, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v4, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    iget v6, v0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    aput-wide v4, v2, v6

    iget-wide v3, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    iget v5, v0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    aput-wide v3, v2, v5

    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

    if-eqz v0, :cond_2f0

    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v12, -0x1

    iget-object v9, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiBatteryStats(Landroid/os/connectivity/WifiActivityEnergyInfo;Landroid/net/NetworkStats;JJJ)V

    :cond_2f0
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v0

    :catchall_2f3
    move-exception v0

    :try_start_2f4
    monitor-exit v3
    :try_end_2f5
    .catchall {:try_start_2f4 .. :try_end_2f5} :catchall_2f3

    throw v0

    :catchall_2f6
    move-exception v0

    :try_start_2f7
    monitor-exit v6
    :try_end_2f8
    .catchall {:try_start_2f7 .. :try_end_2f8} :catchall_2f6

    throw v0
.end method

.method public final onUidRemoved(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
