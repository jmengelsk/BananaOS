.class public Lcom/android/server/powerstats/PowerStatsService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mContext:Landroid/content/Context;

.field public mDataStoragePath:Ljava/io/File;

.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

.field public mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

.field public mEnergyMeters:[Landroid/hardware/power/stats/Channel;

.field public mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

.field public mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

.field public mPowerMonitorApiEnabled:Z

.field public mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

.field public volatile mPowerMonitors:[Landroid/os/PowerMonitor;

.field public mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field public mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

.field public final mService:Lcom/android/server/powerstats/PowerStatsService$1;


# direct methods
.method public static -$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$1;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Lcom/android/server/powerstats/PowerStatsService$1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    sget-object p1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-void
.end method

.method public static collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    iget-object v4, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v4}, Landroid/os/PowerMonitor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-array v0, v3, [I

    array-length v2, p0

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v4, p0, v1

    iget-object v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v5}, Landroid/os/PowerMonitor;->getType()I

    move-result v5

    if-ne v5, p1, :cond_3

    add-int/lit8 v5, v3, 0x1

    iget v4, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    aput v4, v0, v3

    move v3, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "CONSUMER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, "CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "MOBILE_RADIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "GNSS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, "DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v1, "CPU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string v1, "BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    array-length v4, p1

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v5, p1, v3

    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    iget-byte v7, p0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v6, v7, :cond_2

    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    if-eqz v2, :cond_4

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ensurePowerMonitors()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    invoke-direct {v0}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-array v0, v1, [Landroid/os/PowerMonitor;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    new-array v0, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    new-array v0, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    monitor-exit p0

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    goto :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_6

    :try_start_2
    array-length v4, v3

    move v5, v1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v7, v3, v5

    new-instance v8, Landroid/os/PowerMonitor;

    add-int/lit8 v9, v6, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    if-eqz v11, :cond_5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v6, v11, v10}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iget v7, v7, Landroid/hardware/power/stats/Channel;->id:I

    invoke-direct {v6, v8, v7}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_1

    :cond_6
    move v6, v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_8

    aget-object v7, v3, v5

    new-instance v8, Landroid/os/PowerMonitor;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v7, v3}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v6, v1, v10}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iget v7, v7, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-direct {v6, v8, v7}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/PowerMonitor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PowerMonitor;

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public getDeleteMeterDataOnBoot()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    return p0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    return p0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    return p0
.end method

.method public final getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIPowerStatsServiceForTest()Landroid/os/IPowerStatsService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Lcom/android/server/powerstats/PowerStatsService$1;

    return-object p0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PowerStatsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPowerMonitorReadingsImpl([ILandroid/os/ResultReceiver;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    iget-object v4, v0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "android.permission.ACCESS_FINE_POWER_MONITORS"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v4, v5, :cond_1

    iget-object v7, v0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    const-wide/16 v8, 0xfa

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    const-wide/16 v8, 0x4e20

    :goto_1
    array-length v10, v1

    new-array v11, v10, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    const-wide v12, 0x7fffffffffffffffL

    const/4 v14, 0x0

    :goto_2
    array-length v15, v1

    if-ge v14, v15, :cond_5

    aget v15, v1, v14

    if-ltz v15, :cond_4

    array-length v6, v7

    if-lt v15, v6, :cond_2

    goto :goto_3

    :cond_2
    aget-object v6, v7, v15

    aput-object v6, v11, v14

    aget-object v6, v7, v15

    if-eqz v6, :cond_3

    iget-wide v5, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    cmp-long v16, v5, v12

    if-gez v16, :cond_3

    move-wide v12, v5

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v0, 0x0

    const/4 v15, 0x1

    invoke-virtual {v2, v15, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_5
    const-wide/16 v5, 0x0

    cmp-long v1, v12, v5

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v12

    cmp-long v1, v5, v8

    if-lez v1, :cond_11

    :cond_6
    const/4 v1, 0x0

    invoke-static {v11, v1}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    move-result-object v5

    if-nez v5, :cond_8

    :cond_7
    :goto_4
    const/4 v15, 0x1

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v10, :cond_7

    aget-object v6, v11, v5

    iget-object v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v7}, Landroid/os/PowerMonitor;->getType()I

    move-result v7

    if-nez v7, :cond_b

    array-length v7, v1

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_b

    aget-object v9, v1, v8

    iget v12, v9, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    iget v13, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    if-ne v12, v13, :cond_a

    iget-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    iget-wide v7, v9, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iget-wide v7, v9, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    goto :goto_7

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :goto_8
    invoke-static {v11, v15}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_c

    :cond_d
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v10, :cond_10

    aget-object v6, v11, v5

    iget-object v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v7}, Landroid/os/PowerMonitor;->getType()I

    move-result v7

    const/4 v15, 0x1

    if-ne v7, v15, :cond_f

    array-length v7, v1

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_f

    aget-object v9, v1, v8

    iget v12, v9, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    iget v13, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    if-ne v12, v13, :cond_e

    iget-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    iget-wide v7, v9, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iget-wide v7, v9, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    goto :goto_b

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_10
    :goto_c
    iget-object v1, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    iget-object v1, v1, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    :cond_11
    new-array v1, v10, [J

    new-array v5, v10, [J

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v10, :cond_14

    aget-object v7, v11, v6

    iget-wide v8, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    const-wide/16 v12, -0x1

    cmp-long v14, v8, v12

    if-eqz v14, :cond_13

    iget-wide v14, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    cmp-long v12, v14, v12

    if-eqz v12, :cond_13

    iget-object v12, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    const-wide/32 v16, 0x989680

    sub-long v8, v8, v16

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v13, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    rem-int/lit8 v15, v3, 0x11

    iget-object v0, v12, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    aget-wide v16, v0, v15

    const-wide/16 v18, 0x0

    cmpg-double v18, v16, v18

    if-gez v18, :cond_12

    :try_start_0
    iget-object v12, v12, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    invoke-virtual {v12}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->sample()D

    move-result-wide v16
    :try_end_0
    .catch Lorg/apache/commons/math/MathException; {:try_start_0 .. :try_end_0} :catch_0

    aput-wide v16, v0, v15

    goto :goto_e

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    :goto_e
    sub-long/2addr v13, v8

    long-to-double v12, v13

    mul-double v12, v12, v16

    double-to-long v12, v12

    add-long/2addr v8, v12

    aput-wide v8, v1, v6

    goto :goto_f

    :cond_13
    aput-wide v8, v1, v6

    :goto_f
    iget-wide v7, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_d

    :cond_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "energy"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo v1, "timestamps"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo v1, "granularity"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 4

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    sput-object v2, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    sput-object v2, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPowerStatsInternal()Landroid/power/PowerStatsInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$LocalService;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    return-object p0
.end method

.method public getSupportedPowerMonitorsImpl(Landroid/os/ResultReceiver;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "monitors"

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mEntityNames:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mStateNames:Ljava/util/Map;

    iput-object v1, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    const/4 v3, 0x0

    const-string/jumbo v4, "StatsPullAtomCallbackImpl"

    if-nez v1, :cond_0

    const-string p1, "Failed to start PowerStatsService statsd pullers"

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_0
    const-class v5, Landroid/app/StatsManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v5, v1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    aget-object v6, v1, v5

    iget-object v7, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    iget v8, v6, Landroid/hardware/power/stats/Channel;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x2736

    sget-object v5, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v3, v5, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Failed to init OnDevicePowerMeasurement puller"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v1, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v5, v1

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    move v4, v2

    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_6

    aget-object v5, v1, v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v7, v2

    :goto_4
    iget-object v8, v5, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v9, v8

    if-ge v7, v9, :cond_5

    aget-object v8, v8, v7

    iget v9, v8, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v8, v8, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    iget-object v7, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mEntityNames:Ljava/util/Map;

    iget v8, v5, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mStateNames:Ljava/util/Map;

    iget v5, v5, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const/16 v1, 0x2715

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    goto :goto_6

    :cond_7
    :goto_5
    const-string p1, "Failed to init SubsystemSleepState puller"

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    iget-object v0, p1, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    iget-object v1, p1, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    const-string/jumbo v2, "battery_stats"

    invoke-interface {v0, v2, v1, p1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "power_monitor_api_enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    if-eq p1, v0, :cond_a

    iput-boolean p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    return-void

    :cond_8
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/File;

    invoke-static {v2}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "powerstats"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v1

    new-instance v2, Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/powerstats/PowerStatsLogger;-><init>(Landroid/os/Looper;Ljava/io/File;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V

    iput-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/powerstats/BatteryTrigger;

    invoke-direct {v0, p1, v2}, Lcom/android/server/powerstats/BatteryTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    new-instance v0, Lcom/android/server/powerstats/TimerTrigger;

    invoke-direct {v0, p1, p0}, Lcom/android/server/powerstats/TimerTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    return-void

    :cond_9
    const-string/jumbo p0, "PowerStatsService"

    const-string p1, "Failed to start PowerStatsService loggers"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/power/PowerStatsInternal;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsInternal()Landroid/power/PowerStatsInternal;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Lcom/android/server/powerstats/PowerStatsService$1;

    const-string/jumbo v1, "powerstats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
