.class public final Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    const/4 p5, 0x0

    move-object p6, p5

    :goto_0
    const-wide v0, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    const/4 p7, 0x0

    if-ltz p3, :cond_7

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCustomEnergyConsumerBatteryConsumptionUC()[J

    move-result-object v3

    if-nez v3, :cond_0

    move-object v4, p5

    goto :goto_2

    :cond_0
    array-length v4, v3

    new-array v4, v4, [D

    move v5, p7

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_1

    aget-wide v6, v3, v5

    long-to-double v6, v6

    mul-double/2addr v6, v0

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_5

    if-nez p6, :cond_2

    array-length p6, v4

    new-array p6, p6, [D

    goto :goto_3

    :cond_2
    array-length v0, p6

    array-length v1, v4

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Number of custom energy components is not the same for all apps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomEnergyCsmrPowerCalc"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v4

    invoke-static {p6, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p6

    :cond_3
    :goto_3
    array-length v0, v4

    if-ge p7, v0, :cond_6

    add-int/lit16 v0, p7, 0x3e8

    aget-wide v5, v4, p7

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v0

    if-nez v0, :cond_4

    aget-wide v0, p6, p7

    aget-wide v5, v4, p7

    add-double/2addr v0, v5

    aput-wide v0, p6, p7

    :cond_4
    add-int/lit8 p7, p7, 0x1

    goto :goto_3

    :cond_5
    move-object p6, p5

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getCustomEnergyConsumerBatteryConsumptionUC()[J

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    array-length p2, p0

    new-array p5, p2, [D

    move p2, p7

    :goto_4
    array-length p3, p0

    if-ge p2, p3, :cond_9

    aget-wide v2, p0, p2

    long-to-double v2, v2

    mul-double/2addr v2, v0

    aput-wide v2, p5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    if-eqz p5, :cond_a

    invoke-virtual {p1, p7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    move p2, p7

    :goto_6
    array-length p3, p5

    if-ge p2, p3, :cond_a

    add-int/lit16 p3, p2, 0x3e8

    aget-wide v0, p5, p2

    invoke-virtual {p0, p3, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_a
    if-eqz p6, :cond_b

    invoke-virtual {p1, p4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    :goto_7
    array-length p1, p6

    if-ge p7, p1, :cond_b

    add-int/lit16 p1, p7, 0x3e8

    aget-wide p2, p6, p7

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 p7, p7, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
