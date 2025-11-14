.class public final Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

.field public final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    iput-object p3, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3b

    iget-object p0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    monitor-enter p0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_31

    :try_start_e
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->mListeners:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_2e

    :try_start_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p0, :cond_3b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;

    const-string/jumbo v2, "onFlightComplete()"

    iget-object v1, v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle$1;->val$timeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->enableTelephonyTimeZoneFallback(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_16 .. :try_end_2d} :catch_31

    goto :goto_1b

    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception p0

    const-string/jumbo p1, "time_zone_detector"

    const-string/jumbo v0, "Unable to read airplane mode state"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    return-void
.end method
