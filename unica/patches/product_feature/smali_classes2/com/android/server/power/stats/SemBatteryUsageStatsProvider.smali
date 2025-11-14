.class public final Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAllComponentPower:D

.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public mIsInitialized:Z

.field public final mLastKWakelockMap:Ljava/util/Map;

.field public final mLastScreenWakeMap:Ljava/util/Map;

.field public final mLastWakeupMap:Ljava/util/Map;

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/internal/os/CpuScalingPolicies;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mAllComponentPower:D

    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iput-object p3, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    return-void
.end method

.method public static updateDeviceScopeComponentPower(Landroid/os/BatteryUsageStats;)D
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object p0

    const-wide/16 v1, 0x0

    :goto_7
    const/16 v3, 0x14

    if-ge v0, v3, :cond_2a

    const/16 v3, 0x10

    if-ne v0, v3, :cond_10

    goto :goto_2a

    :cond_10
    new-instance v3, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v5, v5}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    new-instance v6, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v7, 0x2

    invoke-direct {v6, v0, v4, v7, v5}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    invoke-virtual {p0, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v3

    invoke-virtual {p0, v6}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v5

    add-double/2addr v5, v3

    add-double/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2a
    :goto_2a
    return-wide v1
.end method


# virtual methods
.method public final updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLandroid/os/SemDevicePowerInfo;Landroid/util/SparseArray;)V
    .registers 51

    move-wide/from16 v0, p2

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UidBatteryConsumer;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    :cond_25
    move-object/from16 v7, p0

    iget-object v6, v7, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v7, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_31
    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x0

    const/4 v10, 0x0

    if-ltz v8, :cond_361

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    if-eqz v11, :cond_34c

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->contains(I)Z

    move-result v21

    if-eqz v21, :cond_34c

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_34c

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    check-cast v13, Landroid/os/UidBatteryConsumer;

    new-instance v14, Landroid/os/SemUidPowerInfo;

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v15

    invoke-direct {v14, v15}, Landroid/os/SemUidPowerInfo;-><init>(I)V

    invoke-virtual {v11, v10, v0, v1, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v22

    div-long v9, v22, v16

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_7f

    move-object/from16 v23, v5

    const/4 v5, 0x0

    invoke-virtual {v15, v0, v1, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v24

    div-long v24, v24, v16

    move/from16 v26, v8

    move-wide/from16 v41, v24

    move-object/from16 v25, v7

    move-wide/from16 v7, v41

    goto :goto_88

    :cond_7f
    move-object/from16 v23, v5

    const/4 v5, 0x0

    move-object/from16 v25, v7

    move/from16 v26, v8

    move-wide/from16 v7, v18

    :goto_88
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    const/4 v15, 0x1

    invoke-virtual {v11, v15, v0, v1, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v27

    const/4 v15, 0x2

    invoke-virtual {v11, v15, v0, v1, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v29

    add-long v29, v29, v27

    div-long v29, v29, v16

    add-long v9, v29, v9

    const/4 v15, 0x3

    invoke-virtual {v11, v15, v0, v1, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v27

    const/4 v15, 0x4

    invoke-virtual {v11, v15, v0, v1, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v29

    add-long v29, v29, v27

    const/4 v15, 0x5

    invoke-virtual {v11, v15, v0, v1, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v27

    add-long v27, v27, v29

    move-object/from16 v29, v6

    div-long v5, v27, v16

    move/from16 v30, v12

    move-wide/from16 v2, v18

    move-wide/from16 v27, v2

    const/4 v15, 0x0

    :goto_ba
    const/16 v12, 0x10

    if-ge v15, v12, :cond_d8

    const/4 v12, 0x0

    invoke-virtual {v11, v15, v12}, Landroid/os/BatteryStats$Uid;->getSpeakerMediaTime(II)J

    move-result-wide v31

    cmp-long v12, v31, v18

    if-gtz v12, :cond_c8

    goto :goto_d5

    :cond_c8
    add-long v27, v27, v31

    add-int/lit8 v12, v15, 0x1

    move-wide/from16 v33, v2

    int-to-long v2, v12

    mul-long v31, v31, v2

    add-long v31, v31, v33

    move-wide/from16 v2, v31

    :goto_d5
    add-int/lit8 v15, v15, 0x1

    goto :goto_ba

    :cond_d8
    move-wide/from16 v33, v2

    move-wide/from16 v31, v18

    const-wide/16 v2, 0x0

    const/4 v12, 0x0

    :goto_df
    const/16 v15, 0x14

    if-ge v12, v15, :cond_13d

    new-instance v15, Landroid/os/BatteryConsumer$Dimensions;

    move-wide/from16 v35, v5

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v15, v12, v5, v4, v4}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    new-instance v6, Landroid/os/BatteryConsumer$Dimensions;

    move-object/from16 p0, v15

    const/4 v15, 0x2

    invoke-direct {v6, v12, v5, v15, v4}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    move-object/from16 v4, p0

    if-nez v12, :cond_10a

    move-wide/from16 v37, v9

    invoke-virtual {v13, v4}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v9

    move-wide/from16 v39, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    iput-wide v9, v14, Landroid/os/SemUidPowerInfo;->screenPower:D

    :goto_108
    const/4 v5, 0x4

    goto :goto_10f

    :cond_10a
    move-wide/from16 v39, v7

    move-wide/from16 v37, v9

    goto :goto_108

    :goto_10f
    if-ne v12, v5, :cond_122

    invoke-virtual {v13, v4}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J

    move-result-wide v7

    invoke-virtual {v13, v6}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J

    move-result-wide v9

    add-long/2addr v9, v7

    move-wide/from16 v7, v18

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide/from16 v31, v9

    :cond_122
    invoke-virtual {v13, v4}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v4

    invoke-virtual {v13, v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v6

    add-double/2addr v6, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v5, v35

    move-wide/from16 v9, v37

    move-wide/from16 v7, v39

    const-wide/16 v18, 0x0

    goto :goto_df

    :cond_13d
    move-wide/from16 v35, v5

    move-wide/from16 v39, v7

    move-wide/from16 v37, v9

    const-wide/16 v4, 0x0

    iput-wide v2, v14, Landroid/os/SemUidPowerInfo;->smearedPower:D

    iget-wide v6, v14, Landroid/os/SemUidPowerInfo;->screenPower:D

    sub-double/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v14, Landroid/os/SemUidPowerInfo;->power:D

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v2

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v4

    add-long/2addr v4, v2

    div-long v4, v4, v16

    iput-wide v4, v14, Landroid/os/SemUidPowerInfo;->cpuTime:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_169
    if-ge v6, v3, :cond_183

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Wakelock;

    if-eqz v7, :cond_180

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_180

    invoke-virtual {v7, v0, v1, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long/2addr v7, v4

    move-wide v4, v7

    :cond_180
    add-int/lit8 v6, v6, 0x1

    goto :goto_169

    :cond_183
    div-long v4, v4, v16

    iput-wide v4, v14, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v2

    div-long v2, v2, v16

    iput-wide v2, v14, Landroid/os/SemUidPowerInfo;->mobileActive:J

    invoke-virtual {v11, v12, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const/4 v15, 0x1

    invoke-virtual {v11, v15, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v14, Landroid/os/SemUidPowerInfo;->mobileData:J

    invoke-virtual {v11, v12, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v2

    invoke-virtual {v11, v15, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v14, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    const/4 v2, 0x2

    invoke-virtual {v11, v2, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual {v11, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v14, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    invoke-virtual {v11, v2, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    invoke-virtual {v11, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v14, Landroid/os/SemUidPowerInfo;->wifiData:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_1c7

    const/4 v4, 0x0

    goto :goto_208

    :cond_1c7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    const/4 v4, 0x0

    :goto_1ce
    if-ltz v3, :cond_208

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg;

    if-nez v5, :cond_1d9

    goto :goto_205

    :cond_1d9
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_205

    if-nez v5, :cond_1e8

    goto :goto_205

    :cond_1e8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    :goto_1ee
    if-ltz v6, :cond_205

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Counter;

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_1ee

    :cond_205
    :goto_205
    add-int/lit8 v3, v3, -0x1

    goto :goto_1ce

    :cond_208
    :goto_208
    iput v4, v14, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    const/4 v12, 0x0

    if-eqz v2, :cond_227

    invoke-virtual {v2, v0, v1, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long/2addr v5, v3

    div-long v5, v5, v16

    const-wide/16 v18, 0x0

    cmp-long v5, v5, v18

    if-eqz v5, :cond_227

    invoke-virtual {v2, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v24

    move/from16 v2, v24

    goto :goto_228

    :cond_227
    move v2, v12

    :goto_228
    iput v2, v14, Landroid/os/SemUidPowerInfo;->btScan:I

    const/4 v5, 0x4

    invoke-virtual {v11, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    const/4 v2, 0x5

    invoke-virtual {v11, v2, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, v14, Landroid/os/SemUidPowerInfo;->btData:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v2

    const/16 v5, -0x2710

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Sensor;

    const/16 v6, -0x2711

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Sensor;

    const-wide/16 v7, 0x0

    iput-wide v7, v14, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iput-wide v7, v14, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    if-eqz v5, :cond_268

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_268

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_268

    const/4 v12, 0x0

    invoke-virtual {v5, v0, v1, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    div-long v5, v5, v16

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->gpsTime:J

    :cond_268
    if-eqz v2, :cond_280

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_280

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_280

    const/4 v12, 0x0

    invoke-virtual {v2, v0, v1, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    div-long v5, v5, v16

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    goto :goto_281

    :cond_280
    const/4 v12, 0x0

    :goto_281
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_28f

    invoke-virtual {v2, v0, v1, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long/2addr v5, v3

    div-long v5, v5, v16

    goto :goto_291

    :cond_28f
    const-wide/16 v5, 0x0

    :goto_291
    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_2b2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_29f
    if-ge v6, v5, :cond_2b3

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Proc;

    if-eqz v8, :cond_2af

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v8

    add-int/2addr v8, v7

    move v7, v8

    :cond_2af
    add-int/lit8 v6, v6, 0x1

    goto :goto_29f

    :cond_2b2
    const/4 v7, 0x0

    :cond_2b3
    int-to-long v5, v7

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->killCount:J

    move-wide/from16 v5, v39

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->screenTime:J

    move-wide/from16 v5, v37

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->fgTime:J

    move-wide/from16 v5, v35

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->bgTime:J

    move-wide/from16 v5, v27

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->spkTime:J

    move-wide/from16 v5, v33

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->spkLevel:J

    move-wide/from16 v5, v31

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->audioTime:J

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v5

    iput-wide v5, v14, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    const-wide/16 v6, 0x0

    :goto_2e1
    if-ltz v5, :cond_2f8

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Timer;

    if-eqz v8, :cond_2f4

    invoke-virtual {v8, v0, v1, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    add-long/2addr v8, v3

    div-long v8, v8, v16

    add-long/2addr v8, v6

    move-wide v6, v8

    :cond_2f4
    add-int/lit8 v5, v5, -0x1

    const/4 v12, 0x0

    goto :goto_2e1

    :cond_2f8
    iput-wide v6, v14, Landroid/os/SemUidPowerInfo;->syncTime:J

    move-object/from16 v5, v29

    const/4 v2, 0x0

    :goto_2fd
    iget-object v6, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    array-length v6, v6

    if-ge v2, v6, :cond_311

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v0, v1, v12}, Landroid/os/BatteryStats$Uid;->getDisplayTopActivityTime(IJI)J

    move-result-wide v6

    iget-object v8, v14, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    add-long/2addr v6, v3

    div-long v6, v6, v16

    aput-wide v6, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2fd

    :cond_311
    move-object/from16 v2, p6

    iget v3, v2, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget v4, v14, Landroid/os/SemUidPowerInfo;->btScan:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget-wide v3, v2, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v6, v14, Landroid/os/SemUidPowerInfo;->gpsTime:J

    add-long/2addr v3, v6

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v3, v2, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v6, v14, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    add-long/2addr v3, v6

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v3, v2, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v1, v12}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v6

    div-long v6, v6, v16

    add-long/2addr v6, v3

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget v3, v2, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget-wide v3, v2, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iget-wide v6, v14, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    add-long/2addr v3, v6

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    move-object/from16 v3, p7

    move/from16 v4, v30

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_357

    :cond_34c
    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v23, v5

    move-object v5, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    :goto_357
    add-int/lit8 v8, v26, -0x1

    move-object v6, v5

    move-object/from16 v5, v23

    move-object/from16 v7, v25

    const/4 v9, 0x1

    goto/16 :goto_31

    :cond_361
    move-object/from16 v4, p1

    move-object/from16 v2, p6

    move-object v5, v6

    move v12, v10

    invoke-virtual {v4, v12}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    :goto_36e
    const/16 v6, 0xf

    const/16 v9, 0x14

    if-ge v4, v9, :cond_3c4

    new-instance v10, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v11, -0x1

    const/4 v15, 0x1

    invoke-direct {v10, v4, v11, v15, v15}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    new-instance v12, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v13, 0x2

    invoke-direct {v12, v4, v11, v13, v15}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    invoke-virtual {v3, v10}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v13

    invoke-virtual {v3, v12}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v22

    add-double v13, v22, v13

    const/16 v9, 0x13

    if-eq v4, v9, :cond_390

    add-double/2addr v7, v13

    :cond_390
    if-eqz v4, :cond_3bf

    const/16 v9, 0x8

    if-eq v4, v9, :cond_3bc

    const/16 v9, 0xb

    if-eq v4, v9, :cond_3b9

    const/16 v9, 0xc

    if-eq v4, v9, :cond_3ab

    const/16 v9, 0xe

    if-eq v4, v9, :cond_3a8

    if-eq v4, v6, :cond_3a5

    goto :goto_3c1

    :cond_3a5
    iput-wide v13, v2, Landroid/os/SemDevicePowerInfo;->aodPower:D

    goto :goto_3c1

    :cond_3a8
    iput-wide v13, v2, Landroid/os/SemDevicePowerInfo;->phonePower:D

    goto :goto_3c1

    :cond_3ab
    iput-wide v13, v2, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {v3, v10}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J

    move-result-wide v9

    invoke-virtual {v3, v12}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J

    move-result-wide v12

    add-long/2addr v12, v9

    iput-wide v12, v2, Landroid/os/SemDevicePowerInfo;->idleTime:J

    goto :goto_3c1

    :cond_3b9
    iput-wide v13, v2, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    goto :goto_3c1

    :cond_3bc
    iput-wide v13, v2, Landroid/os/SemDevicePowerInfo;->radioPower:D

    goto :goto_3c1

    :cond_3bf
    iput-wide v13, v2, Landroid/os/SemDevicePowerInfo;->screenPower:D

    :goto_3c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_36e

    :cond_3c4
    const/4 v3, 0x0

    :goto_3c5
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3f4

    iget-object v4, v2, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    const/4 v12, 0x0

    invoke-virtual {v5, v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    aput-wide v9, v4, v3

    iget-object v4, v2, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    invoke-virtual {v5, v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getScreenAutoBrightnessTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    aput-wide v9, v4, v3

    iget-object v4, v2, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    invoke-virtual {v5, v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getSubScreenBrightnessTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    aput-wide v9, v4, v3

    iget-object v4, v2, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-virtual {v5, v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getSubScreenAutoBrightnessTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    aput-wide v9, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c5

    :cond_3f4
    const/4 v12, 0x0

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenHighBrightnessTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mSubScreenHighBrightnessTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    move-wide/from16 p0, v7

    move v11, v12

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    :goto_414
    if-ge v11, v6, :cond_445

    move-wide/from16 v22, v7

    invoke-virtual {v5, v11, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getSpeakerCallTime(II)J

    move-result-wide v6

    long-to-double v6, v6

    move-wide/from16 v25, v6

    invoke-virtual {v5, v11, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getSpeakerMediaTime(II)J

    move-result-wide v6

    long-to-double v6, v6

    long-to-double v3, v3

    add-double v3, v3, v25

    double-to-long v3, v3

    long-to-double v8, v9

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v27, v3

    int-to-double v3, v11

    mul-double v25, v25, v3

    add-double v8, v25, v8

    double-to-long v9, v8

    long-to-double v12, v13

    add-double/2addr v12, v6

    double-to-long v13, v12

    move-wide/from16 v25, v6

    move-wide/from16 v6, v22

    long-to-double v6, v6

    mul-double v3, v3, v25

    add-double/2addr v3, v6

    double-to-long v7, v3

    move-wide/from16 v3, v27

    const/16 v6, 0xf

    const/4 v12, 0x0

    goto :goto_414

    :cond_445
    move-wide v6, v7

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iput-wide v9, v2, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iput-wide v13, v2, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    const/4 v4, 0x0

    :goto_453
    if-ge v4, v3, :cond_463

    const/4 v12, 0x0

    invoke-virtual {v5, v4, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v6

    div-long v6, v6, v16

    iget-object v8, v2, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aput-wide v6, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_453

    :cond_463
    const/4 v12, 0x0

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioActiveTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x0

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mBluetoothActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    aget-object v3, v3, v12

    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v3

    add-long/2addr v6, v8

    add-long/2addr v6, v3

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    const/4 v3, 0x4

    invoke-virtual {v5, v3, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityBytes(II)J

    move-result-wide v7

    add-long/2addr v7, v3

    iput-wide v7, v2, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    invoke-virtual {v5, v12, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v15, 0x1

    invoke-virtual {v5, v15, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityBytes(II)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    const/4 v13, 0x2

    invoke-virtual {v5, v13, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityBytes(II)J

    move-result-wide v7

    add-long/2addr v7, v3

    iput-wide v7, v2, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    invoke-virtual {v5, v12, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v3

    invoke-virtual {v5, v15, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v7

    add-long/2addr v7, v3

    iput-wide v7, v2, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    invoke-virtual {v5, v13, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v3

    invoke-virtual {v5, v6, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkModemActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    const/4 v4, 0x5

    new-array v6, v4, [J

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_50d
    if-ge v8, v7, :cond_530

    aget-object v10, v4, v8

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v10

    aput-wide v10, v6, v9

    iget-wide v12, v2, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long/2addr v12, v10

    iput-wide v12, v2, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v12, v2, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    const/4 v15, 0x1

    add-int/2addr v9, v15

    move-object v14, v6

    move/from16 v20, v7

    int-to-long v6, v9

    mul-long/2addr v10, v6

    long-to-double v6, v10

    add-double/2addr v12, v6

    iput-wide v12, v2, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    add-int/lit8 v8, v8, 0x1

    move-object v6, v14

    move/from16 v7, v20

    goto :goto_50d

    :cond_530
    iget-wide v6, v2, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    const-wide/16 v18, 0x0

    cmp-long v4, v6, v18

    if-eqz v4, :cond_53e

    iget-wide v8, v2, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    long-to-double v6, v6

    div-double/2addr v8, v6

    iput-wide v8, v2, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    :cond_53e
    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    const/4 v4, 0x5

    new-array v4, v4, [J

    iget-object v6, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_567
    if-ge v8, v7, :cond_58a

    aget-object v10, v6, v8

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v10

    aput-wide v10, v4, v9

    iget-wide v12, v2, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long/2addr v12, v10

    iput-wide v12, v2, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v12, v2, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    const/4 v15, 0x1

    add-int/2addr v9, v15

    move-object v14, v6

    move/from16 v20, v7

    int-to-long v6, v9

    mul-long/2addr v10, v6

    long-to-double v6, v10

    add-double/2addr v12, v6

    iput-wide v12, v2, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    add-int/lit8 v8, v8, 0x1

    move-object v6, v14

    move/from16 v7, v20

    goto :goto_567

    :cond_58a
    iget-wide v6, v2, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    const-wide/16 v18, 0x0

    cmp-long v4, v6, v18

    if-eqz v4, :cond_598

    iget-wide v8, v2, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    long-to-double v6, v6

    div-double/2addr v8, v6

    iput-wide v8, v2, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    :cond_598
    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iget-wide v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mTxPowerSharingDischargeMah:J

    long-to-double v3, v3

    add-double v7, p0, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    move-result-wide v3

    div-long v3, v3, v16

    iget-wide v6, v2, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    sub-long/2addr v3, v6

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mSubScreenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x0

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    move-wide/from16 v6, p4

    invoke-virtual {v3, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeUptime(J)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeUptime(J)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerSaveModeEnabledTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x0

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountScreenOffSinceChargePermil()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountScreenDozeSinceChargePermil()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountScreenOnSinceChargePermil()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountSubScreenDozeSinceChargePermil()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountSubScreenOnSinceChargePermil()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v12, 0x0

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mSubScreenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountScreenOffSinceChargeCoulombCounter()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountScreenOnSinceChargeCoulombCounter()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mSilentLogOnScreenOffTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountSilentOnScreenOnSinceChargePermil()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDischargeAmountSilentOnScreenOffSinceChargePermil()I

    move-result v3

    iput v3, v2, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mTxPowerSharingTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mTxPowerSharingDischargeMah:J

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    invoke-virtual {v5, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getMainDisplayHighRefreshRateTime(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    invoke-virtual {v5, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCoverDisplayHighRefreshRateTime(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenOnGpsTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long v3, v3, v16

    iput-wide v3, v2, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-object v3, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v0, v1, v12}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    div-long v0, v0, v16

    iput-wide v0, v2, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getKernelCpuSpeedTimes()[[J

    move-result-object v0

    iget-object v1, v2, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    if-eqz v1, :cond_6b2

    array-length v1, v1

    array-length v3, v0

    if-eq v1, v3, :cond_6b7

    :cond_6b2
    array-length v1, v0

    new-array v1, v1, [[J

    iput-object v1, v2, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    :cond_6b7
    move v1, v12

    :goto_6b8
    array-length v3, v0

    if-ge v1, v3, :cond_6e2

    iget-object v3, v2, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v4, v3, v1

    if-eqz v4, :cond_6c7

    array-length v4, v4

    aget-object v6, v0, v1

    array-length v6, v6

    if-eq v4, v6, :cond_6ce

    :cond_6c7
    aget-object v4, v0, v1

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v3, v1

    :cond_6ce
    move v3, v12

    :goto_6cf
    aget-object v4, v0, v1

    array-length v6, v4

    if-ge v3, v6, :cond_6df

    iget-object v6, v2, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v6, v6, v1

    aget-wide v7, v4, v3

    aput-wide v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6cf

    :cond_6df
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b8

    :cond_6e2
    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getScreenOffKernelCpuSpeedTimes()[[J

    move-result-object v0

    iget-object v1, v2, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    if-eqz v1, :cond_6ee

    array-length v1, v1

    array-length v3, v0

    if-eq v1, v3, :cond_6f3

    :cond_6ee
    array-length v1, v0

    new-array v1, v1, [[J

    iput-object v1, v2, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    :cond_6f3
    move v5, v12

    :goto_6f4
    array-length v1, v0

    if-ge v5, v1, :cond_71e

    iget-object v1, v2, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v3, v1, v5

    if-eqz v3, :cond_703

    array-length v3, v3

    aget-object v4, v0, v5

    array-length v4, v4

    if-eq v3, v4, :cond_70a

    :cond_703
    aget-object v3, v0, v5

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v1, v5

    :cond_70a
    move v1, v12

    :goto_70b
    aget-object v3, v0, v5

    array-length v4, v3

    if-ge v1, v4, :cond_71b

    iget-object v4, v2, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v4, v4, v5

    aget-wide v6, v3, v1

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_70b

    :cond_71b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f4

    :cond_71e
    return-void
.end method

.method public final updateKernelWakelockInfoToList(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/ArrayList;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mKernelWakelockStats:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_f

    goto/16 :goto_bd

    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_bd

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_34

    goto :goto_24

    :cond_34
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    if-eqz v10, :cond_9a

    invoke-virtual {v10, v3, v4, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v11

    const-wide/16 v13, 0x1f4

    add-long/2addr v11, v13

    div-long/2addr v11, v5

    invoke-virtual {v10, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v10

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_9a

    if-lez v10, :cond_9a

    iget-object v15, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_66

    iget-object v15, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    new-instance v5, Landroid/os/SemKernelWakelockInfo;

    invoke-direct {v5, v8, v9, v13, v14}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;IJ)V

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    iget-object v5, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SemKernelWakelockInfo;

    invoke-virtual {v5}, Landroid/os/SemKernelWakelockInfo;->getTime()J

    move-result-wide v16

    move v6, v10

    sub-long v9, v11, v16

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v5}, Landroid/os/SemKernelWakelockInfo;->getCount()I

    move-result v5

    sub-int v5, v6, v5

    const/4 v15, 0x0

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v15, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    move-wide/from16 v16, v13

    new-instance v13, Landroid/os/SemKernelWakelockInfo;

    invoke-direct {v13, v8, v6, v11, v12}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;IJ)V

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v6, v9, v16

    if-nez v6, :cond_9d

    if-nez v5, :cond_9d

    :cond_9a
    :goto_9a
    const-wide/16 v5, 0x3e8

    goto :goto_24

    :cond_9d
    new-instance v6, Landroid/os/SemKernelWakelockInfo;

    invoke-direct {v6, v8, v5, v9, v10}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_a6
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v0, 0xa

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_bd
    :goto_bd
    return-void
.end method

.method public final updateScreenWakeInfoToList(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/ArrayList;)V
    .registers 9

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenWakeStats:Ljava/util/HashMap;

    if-nez p1, :cond_5

    goto :goto_6f

    :cond_5
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_6f

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Counter;

    if-eqz v2, :cond_13

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    if-lez v2, :cond_13

    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_65

    goto :goto_13

    :cond_65
    new-instance v2, Landroid/os/SemScreenWakeInfo;

    int-to-long v3, v3

    invoke-direct {v2, v1, v3, v4}, Landroid/os/SemScreenWakeInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final updateWakeupReasonInfoToList(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/ArrayList;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeupReasonStats:Ljava/util/HashMap;

    if-eqz v1, :cond_dc

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_dc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_dc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_2c

    goto :goto_1d

    :cond_2c
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Timer;

    if-eqz v8, :cond_d9

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v3, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    div-long/2addr v10, v4

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    const-string v12, "Abort:"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_4c

    :goto_4a
    move-object v7, v13

    goto :goto_7c

    :cond_4c
    const-string/jumbo v12, "Some devices failed to suspend, or early wake event detected"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_56

    goto :goto_4a

    :cond_56
    const-string/jumbo v12, "PowerManagerService.WakeLocks"

    const-string/jumbo v14, "alarmtimer"

    filled-new-array {v12, v14}, [Ljava/lang/String;

    move-result-object v12

    move v14, v9

    :goto_61
    const/4 v15, 0x2

    if-ge v14, v15, :cond_7c

    aget-object v15, v12, v14

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_79

    const-string v12, "******** Except for the blocked tag or tableName="

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "SemBatteryUsageStatsProvider"

    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_79
    add-int/lit8 v14, v14, 0x1

    goto :goto_61

    :cond_7c
    :goto_7c
    if-eqz v7, :cond_d9

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_d9

    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9a

    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    new-instance v15, Landroid/os/SemWakeupReasonInfo;

    invoke-direct {v15, v7, v9, v12, v13}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;IJ)V

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9a
    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/SemWakeupReasonInfo;

    invoke-virtual {v14}, Landroid/os/SemWakeupReasonInfo;->getTime()J

    move-result-wide v15

    sub-long v4, v10, v15

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v14}, Landroid/os/SemWakeupReasonInfo;->getCount()I

    move-result v14

    sub-int v14, v8, v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    new-instance v15, Landroid/os/SemWakeupReasonInfo;

    invoke-direct {v15, v7, v8, v10, v11}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;IJ)V

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v8, v4, v12

    if-nez v8, :cond_ce

    if-nez v9, :cond_ce

    :goto_ca
    const-wide/16 v4, 0x3e8

    goto/16 :goto_1d

    :cond_ce
    new-instance v8, Landroid/os/SemWakeupReasonInfo;

    invoke-direct {v8, v7, v9, v4, v5}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;IJ)V

    move-object/from16 v4, p2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    :cond_d9
    move-object/from16 v4, p2

    goto :goto_ca

    :cond_dc
    return-void
.end method
