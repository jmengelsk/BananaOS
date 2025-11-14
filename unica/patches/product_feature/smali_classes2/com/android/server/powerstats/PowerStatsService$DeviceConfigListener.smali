.class public final Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const/4 v0, 0x1

    const-string/jumbo v1, "battery_stats"

    const-string/jumbo v2, "power_monitor_api_enabled"

    invoke-interface {p1, v1, v2, v0}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    :cond_0
    return-void
.end method
