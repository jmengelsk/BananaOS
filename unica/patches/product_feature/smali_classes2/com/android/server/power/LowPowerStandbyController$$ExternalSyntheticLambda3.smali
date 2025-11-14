.class public final synthetic Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "low_power_standby"

    const-string/jumbo v1, "enable_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v4}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "low_power_standby"

    const-string/jumbo v1, "enable_standby_ports"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
