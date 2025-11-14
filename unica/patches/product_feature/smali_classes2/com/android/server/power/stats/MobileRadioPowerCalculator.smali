.class public final Lcom/android/server/power/stats/MobileRadioPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_LEVELS:I

.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object p1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide v1, 0x100000000L

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iput-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_0
    const-wide v1, 0x110000000L

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_1
    const-string/jumbo v1, "radio.active"

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    const-string/jumbo v1, "modem.controller.rx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    add-double/2addr v1, v6

    move v5, v8

    :goto_2
    if-ge v5, v0, :cond_2

    const-string/jumbo v9, "modem.controller.tx"

    invoke-virtual {p1, v9, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    add-double/2addr v1, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v0, 0x1

    int-to-double v9, v5

    div-double/2addr v1, v9

    :cond_3
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "radio.on"

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_3
    if-ge v8, v0, :cond_5

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p1, v1, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "modem.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    mul-double/2addr v9, v1

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v11

    invoke-direct {v4, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v4, v3, v8

    const/4 v3, 0x1

    :goto_4
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    div-double v8, v1, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "radio.scanning"

    invoke-virtual {p1, v1, v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final calcRxStatePowerMah(IIJ)D
    .locals 4

    const/high16 v0, 0x20000000

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unavailable Power Profile constant for key 0x"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MobRadioPowerCalculator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    long-to-double p0, p3

    mul-double/2addr v2, p0

    const-wide p0, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method public final calcTxStatePowerMah(IIIJ)D
    .locals 4

    const/high16 v0, 0x30000000

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unavailable Power Profile constant for key 0x"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MobRadioPowerCalculator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    long-to-double p0, p4

    mul-double/2addr v2, p0

    const-wide p0, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 45

    move-wide/from16 v7, p3

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getMobileRadioEnergyConsumptionUC()J

    move-result-wide v9

    move-object/from16 v11, p7

    invoke-static {v9, v10, v11}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v12

    sget v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const/4 v1, 0x2

    const-wide/16 v19, 0x3e8

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    if-ne v12, v1, :cond_0

    move-object/from16 v15, p2

    move/from16 v30, v0

    move-object/from16 v1, v18

    move-object v2, v1

    const/16 p5, 0x1

    const-wide/high16 v26, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_0
    div-long v4, v7, v19

    move-wide/from16 v26, v21

    const/4 v3, 0x0

    const/16 v25, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v3, v2, :cond_8

    if-ne v3, v1, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    move/from16 v28, v2

    move v2, v1

    move v1, v3

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    move v14, v0

    const/16 p5, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v29

    cmp-long v0, v29, v16

    if-nez v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move/from16 v30, v14

    move-wide v13, v4

    goto :goto_4

    :cond_2
    move-wide/from16 v43, v29

    move/from16 v30, v14

    move-wide v13, v4

    move-wide/from16 v4, v43

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcTxStatePowerMah(IIIJ)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v31

    if-eqz v31, :cond_3

    goto :goto_4

    :cond_3
    add-double v26, v26, v4

    move/from16 v25, p5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v13

    move/from16 v0, v30

    goto :goto_3

    :cond_4
    move-object/from16 v15, p2

    move/from16 v30, v0

    move-wide v13, v4

    const/16 p5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v1, v2, v13, v14}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v3

    cmp-long v5, v3, v16

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcRxStatePowerMah(IIJ)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    add-double v26, v26, v3

    move/from16 v25, p5

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v2

    move-wide v4, v13

    move/from16 v2, v28

    move/from16 v0, v30

    goto :goto_2

    :cond_7
    move-object/from16 v15, p2

    move/from16 v30, v0

    move v1, v3

    move-wide v13, v4

    const/16 p5, 0x1

    move-object/from16 v0, p0

    add-int/lit8 v3, v1, 0x1

    move/from16 v0, v30

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_8
    move-object/from16 v15, p2

    move/from16 v30, v0

    const/16 p5, 0x1

    move-object/from16 v0, p0

    if-nez v25, :cond_a

    const/4 v13, 0x0

    invoke-virtual {v15, v7, v8, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v1

    div-long v1, v1, v19

    cmp-long v3, v1, v23

    if-lez v3, :cond_9

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v3, v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v1, v1

    mul-double v26, v3, v1

    goto :goto_6

    :cond_9
    move-wide/from16 v26, v21

    :cond_a
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/LongArrayQueue;

    invoke-direct {v2}, Landroid/util/LongArrayQueue;-><init>()V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v3

    sget-object v4, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v31, v21

    move-wide/from16 v13, v23

    :goto_8
    const-wide v33, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    if-ltz v5, :cond_12

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v11, v25

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    move-object/from16 v25, v3

    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v3

    move/from16 v35, v5

    sget-object v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v4, v5, :cond_b

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v5

    move-object v4, v5

    :cond_b
    :goto_9
    const/4 v5, 0x0

    goto :goto_a

    :cond_c
    move-object/from16 v4, v18

    goto :goto_9

    :goto_a
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v36

    move-wide/from16 v38, v13

    div-long v13, v36, v19

    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v5

    if-nez v5, :cond_d

    add-long v36, v38, v13

    move-wide/from16 v38, v36

    :cond_d
    const/16 v5, 0x8

    invoke-virtual {v11, v5, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v5, 0x2

    if-ne v12, v5, :cond_11

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC()J

    move-result-wide v13

    cmp-long v5, v13, v16

    if-eqz v5, :cond_10

    long-to-double v13, v13

    mul-double v13, v13, v33

    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v5

    if-nez v5, :cond_e

    add-double v31, v31, v13

    :cond_e
    const/16 v5, 0x8

    invoke-virtual {v11, v5, v13, v14, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v4, :cond_10

    array-length v5, v4

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v5, :cond_10

    aget-object v14, v4, v13

    move-object/from16 v28, v4

    iget v4, v14, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v4, :cond_f

    move/from16 v36, v5

    goto :goto_c

    :cond_f
    move/from16 v36, v5

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC(I)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v4, v4, v33

    invoke-virtual {v11, v14, v4, v5, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v28

    move/from16 v5, v36

    goto :goto_b

    :cond_10
    move-object/from16 v28, v4

    goto :goto_d

    :cond_11
    move-object/from16 v28, v4

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v13, v14}, Landroid/util/LongArrayQueue;->addLast(J)V

    :goto_d
    add-int/lit8 v5, v35, -0x1

    move-object/from16 v11, p7

    move-object/from16 v3, v25

    move-object/from16 v4, v28

    move-wide/from16 v13, v38

    goto/16 :goto_8

    :cond_12
    move-wide/from16 v38, v13

    const/4 v13, 0x0

    invoke-virtual {v15, v7, v8, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v16

    div-long v16, v16, v19

    cmp-long v3, v16, v38

    if-gez v3, :cond_13

    move-wide/from16 v13, v38

    :goto_e
    const/4 v5, 0x2

    goto :goto_f

    :cond_13
    move-wide/from16 v13, v16

    goto :goto_e

    :goto_f
    if-eq v12, v5, :cond_19

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_19

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v2, v5}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v6

    move-object v8, v1

    move-object/from16 v16, v2

    long-to-double v1, v13

    cmpl-double v17, v1, v21

    if-nez v17, :cond_14

    move-wide/from16 v1, v21

    goto :goto_11

    :cond_14
    move-wide/from16 v17, v1

    long-to-double v1, v6

    mul-double v1, v1, v26

    div-double v1, v1, v17

    :goto_11
    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v17

    if-nez v17, :cond_15

    add-double v31, v31, v1

    :cond_15
    move/from16 v17, v3

    const/16 v3, 0x8

    invoke-virtual {v11, v3, v1, v2, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v4, :cond_18

    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v3

    move-wide/from16 v35, v1

    array-length v1, v4

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_18

    move/from16 v18, v1

    aget-object v1, v4, v2

    move/from16 v25, v2

    iget v2, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_16

    move-object/from16 v37, v3

    move-object/from16 v40, v4

    move/from16 v41, v5

    goto :goto_14

    :cond_16
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide v40

    move-object/from16 v37, v3

    div-long v2, v40, v19

    move-object/from16 v40, v4

    move/from16 v41, v5

    long-to-double v4, v6

    cmpl-double v42, v4, v21

    if-nez v42, :cond_17

    move-wide/from16 v2, v21

    goto :goto_13

    :cond_17
    long-to-double v2, v2

    mul-double v2, v2, v35

    div-double/2addr v2, v4

    :goto_13
    invoke-virtual {v11, v1, v2, v3, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_14
    add-int/lit8 v2, v25, 0x1

    move/from16 v1, v18

    move-object/from16 v3, v37

    move-object/from16 v4, v40

    move/from16 v5, v41

    goto :goto_12

    :cond_18
    move-object/from16 v40, v4

    move/from16 v41, v5

    add-int/lit8 v5, v41, 0x1

    move-object v1, v8

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v40

    move-wide/from16 v7, p3

    goto/16 :goto_10

    :cond_19
    move-wide/from16 v1, v31

    sub-long v3, v13, v38

    const/4 v5, 0x2

    if-ne v12, v5, :cond_1a

    long-to-double v5, v9

    mul-double v5, v5, v33

    sub-double/2addr v5, v1

    cmpg-double v0, v5, v21

    move-wide/from16 p6, v3

    if-gez v0, :cond_1f

    move-wide/from16 v5, v21

    goto/16 :goto_19

    :cond_1a
    cmp-long v5, v13, v23

    if-eqz v5, :cond_1b

    long-to-double v5, v3

    mul-double v26, v26, v5

    long-to-double v5, v13

    div-double v26, v26, v5

    add-double v26, v26, v21

    move-wide/from16 v5, v26

    goto :goto_15

    :cond_1b
    move-wide/from16 v5, v21

    :goto_15
    invoke-virtual {v15}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v7

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v7, :cond_1d

    iget-object v13, v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-nez v13, :cond_1c

    goto :goto_16

    :cond_1c
    move-wide/from16 p6, v3

    iget-wide v3, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v7, v8

    mul-double/2addr v3, v7

    iget-wide v7, v13, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v9, v10

    mul-double/2addr v7, v9

    add-double v13, v7, v3

    goto :goto_17

    :cond_1d
    :goto_16
    move-wide/from16 p6, v3

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    :goto_17
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-wide/from16 v7, p3

    const/4 v3, 0x0

    invoke-virtual {v15, v7, v8, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v9

    div-long v9, v9, v19

    iget-object v4, v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v13, v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v9, v9

    mul-double/2addr v13, v9

    move v4, v3

    move/from16 v9, v30

    :goto_18
    if-ge v4, v9, :cond_1e

    invoke-virtual {v15, v4, v7, v8, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v10

    div-long v10, v10, v19

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v3, v3, v4

    move/from16 v16, v4

    iget-wide v3, v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v10, v10

    mul-double/2addr v3, v10

    add-double/2addr v13, v3

    add-int/lit8 v4, v16, 0x1

    const/4 v3, 0x0

    goto :goto_18

    :cond_1e
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1f

    add-double/2addr v5, v13

    :cond_1f
    :goto_19
    cmpl-double v0, v5, v21

    if-nez v0, :cond_20

    cmpl-double v0, v1, v21

    if-eqz v0, :cond_21

    :cond_20
    move-object/from16 v0, p1

    const/4 v13, 0x0

    goto :goto_1a

    :cond_21
    return-void

    :goto_1a
    invoke-virtual {v0, v13}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    add-long v7, p6, v38

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    add-double/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move/from16 v3, p5

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    move-wide/from16 v5, v38

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v0, v4, v1, v2, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
