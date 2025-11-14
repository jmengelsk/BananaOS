.class public final Lcom/android/server/power/stats/processor/PowerStatsExporter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

.field public static final sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;


# instance fields
.field public final mBatterySessionTimeSpanSlackMillis:J

.field public final mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    new-instance v0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    sget-wide p1, Lcom/android/server/power/stats/processor/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    return-void
.end method

.method public static areMatchingStates(II[I)Z
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_d

    if-eq p0, v0, :cond_8

    goto :goto_12

    :cond_8
    aget p0, p2, v2

    if-eq p0, v2, :cond_12

    return v1

    :cond_d
    aget p0, p2, v2

    if-eqz p0, :cond_12

    return v1

    :cond_12
    :goto_12
    if-eq p1, v2, :cond_1c

    if-eq p1, v0, :cond_17

    goto :goto_21

    :cond_17
    aget p0, p2, v1

    if-eq p0, v2, :cond_21

    return v1

    :cond_1c
    aget p0, p2, v1

    if-eqz p0, :cond_21

    return v1

    :cond_21
    :goto_21
    return v2
.end method


# virtual methods
.method public final populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V
    .registers 22

    move-object/from16 v4, p2

    iget v11, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    const/16 v0, 0x12

    const/4 v1, 0x1

    const/4 v12, 0x0

    move/from16 v3, p7

    if-ne v11, v0, :cond_10

    if-ne v3, v1, :cond_10

    move v9, v1

    goto :goto_11

    :cond_10
    move v9, v12

    :goto_11
    new-array v6, v1, [D

    new-array v8, v1, [J

    iget-object v0, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v13

    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object/from16 v7, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move/from16 v2, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-static {v0, v13, p0, v12}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    invoke-virtual {p1, v12}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v12

    goto :goto_3d

    :cond_3b
    move/from16 v0, p6

    :goto_3d
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result p1

    if-nez p1, :cond_45

    move p1, v12

    goto :goto_47

    :cond_45
    move/from16 p1, p7

    :goto_47
    if-nez v0, :cond_4d

    if-nez p1, :cond_4d

    const/4 p1, 0x0

    goto :goto_51

    :cond_4d
    invoke-virtual {p0, v11, v12, v0, p1}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    :goto_51
    if-eqz p1, :cond_5d

    aget-wide v0, v6, v12

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    aget-wide v0, v8, v12

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_5d
    invoke-virtual {p0, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    if-eqz p1, :cond_6d

    aget-wide v0, v6, v12

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    aget-wide v0, v8, v12

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_6d
    return-void
.end method

.method public populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .registers 35

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_13
    iget-object v3, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    iget-object v3, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v4, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eq v3, v4, :cond_2a

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    move v11, v0

    :goto_34
    if-ltz v11, :cond_271

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v0, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_42

    goto :goto_4a

    :cond_42
    iget v3, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {v1, v3}, Landroid/os/BatteryUsageStats$Builder;->isSupportedPowerComponent(I)Z

    move-result v3

    if-nez v3, :cond_52

    :goto_4a
    move-object/from16 v31, v8

    move v0, v10

    move/from16 v22, v11

    const/4 v11, 0x0

    goto/16 :goto_269

    :cond_52
    new-instance v3, Lcom/android/server/power/stats/format/PowerStatsLayout;

    invoke-direct {v3, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v4, v0, [J

    new-instance v5, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    :goto_61
    const/4 v12, 0x3

    if-ge v6, v12, :cond_92

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_6d

    if-nez v6, :cond_70

    goto :goto_8f

    :cond_6d
    if-eqz v6, :cond_70

    goto :goto_8f

    :cond_70
    const/4 v7, 0x0

    :goto_71
    if-ge v7, v12, :cond_8f

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_83

    if-eqz v7, :cond_80

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V

    :cond_80
    move-object/from16 v1, p1

    goto :goto_8c

    :cond_83
    if-ne v7, v10, :cond_80

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V

    :goto_8c
    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    :cond_8f
    :goto_8f
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :cond_92
    iget v0, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_a3

    iget v0, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    if-eq v0, v4, :cond_9c

    goto :goto_a3

    :cond_9c
    :goto_9c
    move-object/from16 v31, v8

    move v0, v10

    move/from16 v22, v11

    goto/16 :goto_248

    :cond_a3
    :goto_a3
    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUids()Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v4

    if-nez v4, :cond_ae

    goto :goto_9c

    :cond_ae
    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v4, v4, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v4, v4, [J

    iget-object v6, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    iget v7, v6, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    const/16 v13, 0x12

    if-ne v7, v13, :cond_bf

    move/from16 v19, v10

    goto :goto_d3

    :cond_bf
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isProcessStateDataNeeded()Z

    move-result v7

    if-eqz v7, :cond_d1

    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v7

    const/4 v13, 0x2

    aget-object v7, v7, v13

    iget-boolean v7, v7, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    move/from16 v19, v7

    goto :goto_d3

    :cond_d1
    const/16 v19, 0x0

    :goto_d3
    const/4 v13, 0x0

    :goto_d4
    if-ge v13, v12, :cond_9c

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v7

    if-eqz v7, :cond_ee

    if-nez v13, :cond_f1

    :cond_de
    :goto_de
    move-object/from16 v27, v0

    move-object v15, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v31, v8

    move v0, v10

    move/from16 v22, v11

    goto/16 :goto_235

    :cond_ee
    if-eqz v13, :cond_f1

    goto :goto_de

    :cond_f1
    const/4 v14, 0x0

    :goto_f2
    if-ge v14, v12, :cond_de

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v7

    if-eqz v7, :cond_10c

    if-nez v14, :cond_10f

    :goto_fc
    move-object/from16 v27, v0

    move-object v15, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v31, v8

    move v0, v10

    move/from16 v22, v11

    goto/16 :goto_222

    :cond_10c
    if-eq v14, v10, :cond_10f

    goto :goto_fc

    :cond_10f
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v7

    if-nez v7, :cond_118

    if-eq v14, v10, :cond_118

    goto :goto_fc

    :cond_118
    if-eqz v19, :cond_11c

    const/4 v15, 0x5

    goto :goto_11d

    :cond_11c
    move v15, v10

    :goto_11d
    new-array v7, v15, [D

    if-eqz v19, :cond_123

    const/4 v12, 0x5

    goto :goto_124

    :cond_123
    move v12, v10

    :goto_124
    new-array v12, v12, [J

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v22, v11

    move/from16 v9, v16

    const-wide/16 v23, 0x0

    :goto_132
    iget v10, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    if-ltz v9, :cond_1eb

    invoke-virtual {v0, v9}, Landroid/util/IntArray;->get(I)I

    move-result v11

    move-object/from16 v27, v0

    invoke-virtual {v1, v11}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const-wide/16 v2, 0x0

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    const-wide/16 v2, 0x0

    invoke-static {v12, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    move-wide/from16 v28, v2

    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v2

    move-object/from16 v21, v12

    new-instance v12, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;

    move-object/from16 v20, v7

    move/from16 v17, v11

    move v7, v15

    move-object/from16 v15, v16

    const/4 v3, 0x3

    move-object/from16 v16, v4

    invoke-direct/range {v12 .. v21}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;-><init>(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J)V

    new-array v4, v3, [I

    const/4 v11, 0x0

    invoke-static {v12, v2, v4, v11}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_173

    move v2, v13

    goto :goto_174

    :cond_173
    const/4 v2, 0x0

    :goto_174
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v4

    if-eqz v4, :cond_17c

    move v4, v14

    goto :goto_17d

    :cond_17c
    const/4 v4, 0x0

    :goto_17d
    const/4 v11, 0x0

    :goto_17e
    if-ge v11, v7, :cond_1af

    move v12, v4

    aget-wide v3, v20, v11

    move-object/from16 v17, v6

    move/from16 v30, v7

    aget-wide v6, v21, v11

    const-wide/16 v25, 0x0

    cmpl-double v31, v3, v25

    if-nez v31, :cond_196

    cmp-long v31, v6, v28

    if-nez v31, :cond_196

    move-object/from16 v31, v8

    goto :goto_1a4

    :cond_196
    move-object/from16 v31, v8

    invoke-virtual {v0, v10, v11, v2, v12}, Landroid/os/UidBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v8

    if-eqz v8, :cond_1a4

    invoke-virtual {v0, v8, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_1a4
    :goto_1a4
    add-int/lit8 v11, v11, 0x1

    move v4, v12

    move-object/from16 v6, v17

    move/from16 v7, v30

    move-object/from16 v8, v31

    const/4 v3, 0x3

    goto :goto_17e

    :cond_1af
    move v12, v4

    move-object/from16 v17, v6

    move/from16 v30, v7

    move-object/from16 v31, v8

    const-wide/16 v25, 0x0

    if-nez v2, :cond_1bc

    if-eqz v12, :cond_1be

    :cond_1bc
    const/4 v11, 0x0

    goto :goto_1c0

    :cond_1be
    const/4 v11, 0x0

    goto :goto_1d0

    :goto_1c0
    invoke-virtual {v0, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    if-eqz v2, :cond_1d0

    aget-wide v3, v20, v11

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    aget-wide v3, v21, v11

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_1d0
    :goto_1d0
    aget-wide v2, v20, v11

    move-wide/from16 v6, v23

    add-double v23, v6, v2

    add-int/lit8 v9, v9, -0x1

    move-object v2, v15

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v20

    move-object/from16 v12, v21

    move-object/from16 v0, v27

    move/from16 v15, v30

    move-object/from16 v8, v31

    goto/16 :goto_132

    :cond_1eb
    move-object/from16 v27, v0

    move-object v15, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v31, v8

    move-wide/from16 v6, v23

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v3

    if-nez v3, :cond_205

    const/4 v3, 0x0

    goto :goto_206

    :cond_205
    move v3, v13

    :goto_206
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v4

    if-nez v4, :cond_20e

    const/4 v4, 0x0

    goto :goto_20f

    :cond_20e
    move v4, v14

    :goto_20f
    if-nez v3, :cond_215

    if-nez v4, :cond_215

    const/4 v3, 0x0

    goto :goto_21a

    :cond_215
    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    :goto_21a
    if-eqz v3, :cond_21f

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_21f
    invoke-virtual {v2, v10, v6, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_222
    add-int/lit8 v14, v14, 0x1

    move v10, v0

    move-object v2, v15

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v3, v18

    move/from16 v11, v22

    move-object/from16 v0, v27

    move-object/from16 v8, v31

    const/4 v12, 0x3

    goto/16 :goto_f2

    :goto_235
    add-int/lit8 v13, v13, 0x1

    move v10, v0

    move-object v2, v15

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v3, v18

    move/from16 v11, v22

    move-object/from16 v0, v27

    move-object/from16 v8, v31

    const/4 v12, 0x3

    goto/16 :goto_d4

    :goto_248
    iget-wide v2, v5, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/os/BatteryUsageStats$Builder;->addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v2

    iget-wide v3, v5, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v2

    iget-wide v3, v5, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    iget-wide v3, v5, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    invoke-virtual {v2, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    :goto_269
    add-int/lit8 v2, v22, -0x1

    move v10, v0

    move v11, v2

    move-object/from16 v8, v31

    goto/16 :goto_34

    :cond_271
    return-void
.end method
