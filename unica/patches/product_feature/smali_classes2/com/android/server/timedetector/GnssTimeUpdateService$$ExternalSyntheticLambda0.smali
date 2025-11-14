.class public final synthetic Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 11

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    sget-boolean p1, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-string/jumbo p1, "handleLocationAvailable()"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    invoke-virtual {p1}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Passive location time received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "suggestGnssTime()"

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/LocationTime;->getUnixEpochTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance p1, Landroid/app/time/UnixEpochTime;

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    new-instance v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-direct {v0, p1}, Lcom/android/server/timedetector/GnssTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;)V

    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    check-cast p1, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/timedetector/TimeDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorInternalImpl;Ljava/lang/Object;I)V

    iget-object p1, p1, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "getGnssTimeMillis() returned null"

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    if-nez v0, :cond_1

    const-string/jumbo v0, "mLocationListener unexpectedly null"

    const-string v1, "GnssTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    :goto_1
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "mAlarmListener was unexpectedly non-null"

    const-string v1, "GnssTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    add-long v6, v0, v2

    new-instance v9, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v9, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    iget-object v4, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v8, "GnssTimeUpdateService"

    iget-object v10, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
