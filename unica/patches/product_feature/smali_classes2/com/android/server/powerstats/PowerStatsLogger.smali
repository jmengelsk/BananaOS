.class public final Lcom/android/server/powerstats/PowerStatsLogger;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDataStoragePath:Ljava/io/File;

.field public final mDeleteMeterDataOnBoot:Z

.field public final mDeleteModelDataOnBoot:Z

.field public final mDeleteResidencyDataOnBoot:Z

.field public final mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

.field public final mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mStartWallTime:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/io/File;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    new-instance p1, Lcom/android/server/powerstats/PowerStatsDataStorage;

    const-string/jumbo v0, "log.powerstats.meter.0"

    invoke-direct {p1, p2, v0}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v0, Lcom/android/server/powerstats/PowerStatsDataStorage;

    const-string/jumbo v1, "log.powerstats.model.0"

    invoke-direct {v0, p2, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsDataStorage;

    const-string/jumbo v2, "log.powerstats.residency.0"

    invoke-direct {v1, p2, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-interface {p3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p2

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p2, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p2

    const-string/jumbo v2, "meterCache"

    invoke-virtual {p0, v2, p2}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    if-eqz v3, :cond_51

    invoke-virtual {p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    invoke-virtual {p0, v2, p2}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_51
    invoke-interface {p3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p1

    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    const-string/jumbo p2, "modelCache"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    if-eqz v2, :cond_72

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_72
    invoke-interface {p3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p1

    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    const-string/jumbo p2, "residencyCache"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    if-eqz p3, :cond_93

    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_93
    return-void
.end method


# virtual methods
.method public final dataChanged(Ljava/lang/String;[B)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_44

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    :try_start_28
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception v0

    const-string/jumbo v1, "PowerStatsLogger"

    const-string v2, "Failed to read cached data from file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_44
    return p1
.end method

.method public getStartWallTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    return-wide v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 11

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    if-eqz p1, :cond_87

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    if-eq p1, v4, :cond_61

    const/4 v4, 0x2

    if-eq p1, v4, :cond_12

    return-void

    :cond_12
    new-array p1, v0, [I

    invoke-interface {v3, p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_29

    :cond_1b
    move v4, v0

    :goto_1c
    array-length v6, p1

    if-ge v4, v6, :cond_29

    aget-object v6, p1, v4

    iget-wide v7, v6, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_29
    :goto_29
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p1, v4}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    new-array p0, v0, [I

    invoke-interface {v3, p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0

    if-nez p0, :cond_43

    goto :goto_51

    :cond_43
    move p1, v0

    :goto_44
    array-length v3, p0

    if-ge p1, v3, :cond_51

    aget-object v3, p0, p1

    iget-wide v6, v3, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    add-long/2addr v6, v1

    iput-wide v6, v3, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    :cond_51
    :goto_51
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    return-void

    :cond_61
    new-array p0, v0, [I

    invoke-interface {v3, p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0

    if-nez p0, :cond_6a

    goto :goto_77

    :cond_6a
    :goto_6a
    array-length p1, p0

    if-ge v0, p1, :cond_77

    aget-object p1, p0, v0

    iget-wide v6, p1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    add-long/2addr v6, v1

    iput-wide v6, p1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    :cond_77
    :goto_77
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p0, p1, v4}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    return-void

    :cond_87
    new-array p1, v0, [I

    invoke-interface {v3, p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p1

    if-nez p1, :cond_90

    goto :goto_ad

    :cond_90
    move v3, v0

    :goto_91
    array-length v4, p1

    if-ge v3, v4, :cond_ad

    aget-object v4, p1, v3

    iget-object v4, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v4, v4

    move v5, v0

    :goto_9a
    if-ge v5, v4, :cond_aa

    aget-object v6, p1, v3

    iget-object v6, v6, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    aget-object v6, v6, v5

    iget-wide v7, v6, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    :cond_ad
    :goto_ad
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    return-void
.end method

.method public final updateCacheFile(Ljava/lang/String;[B)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_1a

    :try_start_d
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    goto :goto_1c

    :catch_1a
    move-exception p0

    move-object v1, v0

    :goto_1c
    const-string/jumbo p1, "PowerStatsLogger"

    const-string p2, "Failed to write current data to cached file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_29

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_29
    return-void
.end method
