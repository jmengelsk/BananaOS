.class public abstract Lvendor/samsung/hardware/health/Translate;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;
    .locals 10

    new-instance v0, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    iget-object v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    new-instance v2, Landroid/hardware/health/HealthInfo;

    invoke-direct {v2}, Landroid/hardware/health/HealthInfo;-><init>()V

    iget-object v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Landroid/hardware/health/Translate;->h2aTranslateInternal(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    iget-object v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget v4, v3, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    iput v4, v2, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    iget-object v3, v3, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/health/DiskStats;

    iput-object v3, v2, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v2, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    iget-object v6, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v6, v6, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/health/V2_0/DiskStats;

    new-instance v7, Landroid/hardware/health/DiskStats;

    invoke-direct {v7}, Landroid/hardware/health/DiskStats;-><init>()V

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->reads:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->readMerges:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->readSectors:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->readTicks:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writes:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writeMerges:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writeSectors:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writeTicks:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->ioInFlight:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->ioTicks:J

    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->ioInQueue:J

    aput-object v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v4, v4, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/health/StorageInfo;

    iput-object v4, v2, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    :goto_1
    iget-object v4, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v4, v4, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v2, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    iget-object v5, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/health/V2_0/StorageInfo;

    new-instance v6, Landroid/hardware/health/StorageInfo;

    invoke-direct {v6}, Landroid/hardware/health/StorageInfo;-><init>()V

    iget-short v7, v5, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    iput v7, v6, Landroid/hardware/health/StorageInfo;->eol:I

    iget-short v7, v5, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    iput v7, v6, Landroid/hardware/health/StorageInfo;->lifetimeA:I

    iget-short v7, v5, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    iput v7, v6, Landroid/hardware/health/StorageInfo;->lifetimeB:I

    iget-object v5, v5, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    iput-object v5, v6, Landroid/hardware/health/StorageInfo;->version:Ljava/lang/String;

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    iput v3, v2, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget-wide v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iput-wide v3, v2, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget v1, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iput v1, v2, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iput-object v2, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iput p0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-object v0
.end method
