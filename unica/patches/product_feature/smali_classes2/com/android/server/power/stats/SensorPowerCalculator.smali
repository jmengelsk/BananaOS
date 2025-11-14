.class public final Lcom/android/server/power/stats/SensorPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSensors:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2c
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 32

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-wide/16 v8, 0x0

    :goto_10
    const/4 v10, 0x0

    if-ltz v4, :cond_c3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v13

    if-nez v13, :cond_bc

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    move v6, v10

    move-object/from16 p7, v12

    const-wide/16 v11, 0x0

    :goto_30
    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x3e8

    const/16 v7, -0x2710

    if-ge v6, v15, :cond_7b

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-ne v5, v7, :cond_43

    move-wide/from16 v22, v11

    move-object/from16 v12, p0

    goto :goto_74

    :cond_43
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v20

    move-wide/from16 v22, v11

    div-long v10, v20, v18

    cmp-long v7, v10, v16

    move-object/from16 v12, p0

    if-eqz v7, :cond_74

    iget-object v7, v12, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    if-eqz v5, :cond_74

    long-to-float v7, v10

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    mul-float/2addr v5, v7

    const v7, 0x4a5bba00  # 3600000.0f

    div-float/2addr v5, v7

    float-to-double v10, v5

    add-double v10, v22, v10

    move-wide/from16 v22, v10

    :cond_74
    :goto_74
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v11, v22

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_30

    :cond_7b
    move-wide/from16 v22, v11

    move-object/from16 v12, p0

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move-wide/from16 v10, v16

    const/4 v13, 0x0

    :goto_8a
    if-ge v13, v6, :cond_ab

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    if-ne v14, v7, :cond_93

    goto :goto_a8

    :cond_93
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    div-long v16, v16, v18

    add-long v16, v16, v10

    move-wide/from16 v10, v16

    :goto_a8
    add-int/lit8 v13, v13, 0x1

    goto :goto_8a

    :cond_ab
    move-object/from16 v14, p7

    const/16 v13, 0x9

    invoke-virtual {v14, v13, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    move-wide/from16 v6, v22

    invoke-virtual {v5, v13, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-double/2addr v8, v6

    goto :goto_be

    :cond_bc
    move-object/from16 v12, p0

    :goto_be
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    goto/16 :goto_10

    :cond_c3
    move v15, v10

    const/16 v13, 0x9

    invoke-virtual {v0, v15}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    invoke-virtual {v1, v13, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    invoke-virtual {v0, v13, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .registers 2

    const/16 p0, 0x9

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
