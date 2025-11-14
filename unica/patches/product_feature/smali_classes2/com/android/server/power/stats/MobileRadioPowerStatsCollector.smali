.class public final Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field protected static final MOBILE_RADIO_POWER_STATE_UPDATE_FREQ_MS:J = 0x927c0L

.field static final NETWORK_TYPES:[I


# instance fields
.field public mCallDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mDeviceStats:[J

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastCallDuration:J

.field public mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field public mLastNetworkStats:Landroid/net/NetworkStats;

.field public mLastScanDuration:J

.field public mLastUpdateTimestampMillis:J

.field public mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

.field public volatile mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

.field public final mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mScanDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

.field public volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;)V
    .registers 10

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    const/16 v0, 0x8

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    iput-object p1, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iput-object p2, v1, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .registers 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    goto/16 :goto_156

    :cond_b
    iget-boolean v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-nez v1, :cond_10

    return-object v4

    :cond_10
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    iput-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    iput-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    iput-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->getAsLong()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->getAsLong()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    new-instance v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    invoke-direct {v1, v0, v5, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V

    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    new-instance v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v1

    invoke-direct {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    const-string/jumbo v6, "sleep"

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    const-string/jumbo v6, "idle"

    invoke-virtual {v5, v7, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    const-string/jumbo v6, "scan"

    invoke-virtual {v5, v7, v2, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    const-string/jumbo v6, "call"

    invoke-virtual {v5, v7, v7, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    invoke-virtual {v5, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    iget v1, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    add-int/lit8 v6, v1, 0x1

    iput v6, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    iget-object v6, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "rx"

    invoke-static {v6, v1, v7, v8, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    iput v1, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    iput v1, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    iget v6, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    add-int v8, v6, v1

    iput v8, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    iget-object v8, v5, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "tx"

    invoke-static {v8, v6, v1, v9, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    iput v6, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    const-string/jumbo v1, "rx-pkts"

    invoke-virtual {v5, v7, v2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    const-string/jumbo v1, "rx-B"

    invoke-virtual {v5, v7, v2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    const-string/jumbo v1, "tx-pkts"

    invoke-virtual {v5, v7, v2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    const-string/jumbo v1, "tx-B"

    invoke-virtual {v5, v7, v2, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addDeviceSectionPowerEstimate()V

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    iput-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move v1, v2

    :goto_e4
    const/4 v5, 0x3

    if-ge v1, v5, :cond_130

    const/4 v5, 0x2

    if-ne v1, v5, :cond_ec

    move v6, v3

    goto :goto_ed

    :cond_ec
    move v6, v7

    :goto_ed
    move v8, v2

    :goto_ee
    if-ge v8, v6, :cond_12d

    if-ne v1, v5, :cond_f6

    shl-int/lit8 v9, v8, 0x8

    or-int/2addr v9, v1

    goto :goto_f7

    :cond_f6
    move v9, v1

    :goto_f7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_105

    sget-object v12, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_105
    if-eqz v8, :cond_119

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_112

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_112
    invoke-static {v8}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_124

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_127

    :cond_124
    const-string/jumbo v10, "other"

    :goto_127
    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_ee

    :cond_12d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e4

    :cond_130
    new-instance v14, Landroid/os/PersistableBundle;

    invoke-direct {v14}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v1, v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    new-instance v8, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget v10, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget v12, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    iget v13, v1, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    const/16 v9, 0x8

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    new-instance v1, Lcom/android/internal/os/PowerStats;

    invoke-direct {v1, v8}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    iput-boolean v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    :goto_156
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v5, 0x0

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const-string/jumbo v1, "MobileRadioPowerStatsCollector"

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v7, :cond_170

    :goto_16d
    move-object v13, v4

    goto/16 :goto_26e

    :cond_170
    new-instance v7, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v7}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v9, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;

    invoke-direct {v10, v7}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :try_start_184
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x4e20

    invoke-virtual {v7, v9, v10, v8}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ModemActivityInfo;
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18e} :catch_18f

    goto :goto_195

    :catch_18f
    const-string v7, "Cannot acquire ModemActivityInfo"

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v4

    :goto_195
    if-nez v7, :cond_198

    goto :goto_16d

    :cond_198
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    if-nez v8, :cond_1a1

    invoke-virtual {v7, v7}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object v8

    goto :goto_1a5

    :cond_1a1
    invoke-virtual {v8, v7}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object v8

    :goto_1a5
    iput-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v9

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    sub-long v11, v9, v11

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v7, Lcom/android/internal/os/PowerStats;->durationMs:J

    iput-wide v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget v7, v7, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    aput-wide v10, v9, v7

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget v7, v7, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    aput-wide v10, v9, v7

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->getAsLong()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    cmp-long v7, v9, v11

    if-gez v7, :cond_1ec

    const-string v7, "Current phone call time is lower than previous one. (maybe reset)"

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    :cond_1ec
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    iget-wide v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    sub-long v12, v9, v12

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget v7, v7, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    aput-wide v12, v11, v7

    iput-wide v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->getAsLong()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    cmp-long v7, v9, v11

    if-gez v7, :cond_211

    const-string v7, "Current phone scan time is lower than previous one. (maybe reset)"

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    :cond_211
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    iget-wide v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    sub-long v11, v9, v11

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget v1, v1, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    aput-wide v11, v7, v1

    iput-wide v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v10, v1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-nez v1, :cond_240

    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v13

    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis()[I

    move-result-object v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    goto :goto_26d

    :cond_240
    move v11, v2

    :goto_241
    sget-object v1, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    array-length v1, v1

    if-ge v11, v1, :cond_26d

    const/4 v1, 0x6

    if-ne v11, v1, :cond_25c

    move v12, v2

    :goto_24a
    if-ge v12, v3, :cond_26a

    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v8, v11, v12}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v13

    invoke-virtual {v8, v11, v12}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v15

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_24a

    :cond_25c
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v8, v11}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v13

    invoke-virtual {v8, v11}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    move-result-object v15

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    :cond_26a
    add-int/lit8 v11, v11, 0x1

    goto :goto_241

    :cond_26d
    :goto_26d
    move-object v13, v8

    :goto_26e
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    if-nez v1, :cond_27d

    move-object v14, v4

    move-wide/from16 v16, v5

    goto/16 :goto_32a

    :cond_27d
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v4

    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v4}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_327

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v11

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    cmp-long v3, v7, v5

    if-nez v3, :cond_2ca

    cmp-long v3, v9, v5

    if-nez v3, :cond_2ca

    cmp-long v3, v11, v5

    if-nez v3, :cond_2ca

    cmp-long v3, v14, v5

    if-nez v3, :cond_2ca

    goto :goto_28d

    :cond_2ca
    iget-object v3, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    if-nez v3, :cond_302

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget v3, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array v3, v3, [J

    move-wide/from16 v16, v5

    iget-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget v5, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    aput-wide v7, v3, v5

    iget v5, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    aput-wide v9, v3, v5

    iget v5, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    aput-wide v11, v3, v5

    iget v2, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    aput-wide v14, v3, v2

    goto :goto_323

    :cond_302
    move-wide/from16 v16, v5

    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget v5, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    aget-wide v18, v3, v5

    add-long v18, v18, v7

    aput-wide v18, v3, v5

    iget v5, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    aget-wide v6, v3, v5

    add-long/2addr v6, v9

    aput-wide v6, v3, v5

    iget v5, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    aget-wide v6, v3, v5

    add-long/2addr v6, v11

    aput-wide v6, v3, v5

    iget v2, v2, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    aget-wide v5, v3, v2

    add-long/2addr v5, v14

    aput-wide v5, v3, v2

    :goto_323
    move-wide/from16 v5, v16

    goto/16 :goto_28d

    :cond_327
    move-wide/from16 v16, v5

    move-object v14, v4

    :goto_32a
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, v1, Lcom/android/internal/os/PowerStats;->durationMs:J

    cmp-long v1, v1, v16

    if-nez v1, :cond_351

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v4, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    sub-long v4, v1, v4

    move-wide/from16 v6, v16

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/os/PowerStats;->durationMs:J

    iput-wide v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    :cond_351
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;

    if-eqz v1, :cond_368

    iget-object v2, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v17

    iget-object v2, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v19

    const-wide/16 v15, -0x1

    iget-object v12, v1, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCellularBatteryStats(Landroid/telephony/ModemActivityInfo;Landroid/net/NetworkStats;JJJ)V

    :cond_368
    iget-object v0, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v0
.end method
