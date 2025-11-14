.class public final Lcom/android/server/timedetector/GnssTimeUpdateService;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final D:Z

.field public static final GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;


# instance fields
.field public mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "GnssTimeUpdateService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/location/LocationManager;Landroid/location/LocationManagerInternal;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .registers 9

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Landroid/location/LocationManagerInternal;

    iput-object p4, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Lcom/android/server/timedetector/TimeDetectorInternal;

    iput-object p5, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    if-eqz v0, :cond_9

    const-string v0, "GnssTimeUpdateService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-string p3, "GnssTimeUpdateService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "mLastSuggestedGnssTime: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_22
    const-string/jumbo p3, "state: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    if-eqz p3, :cond_35

    const-string/jumbo p3, "time updates enabled"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b

    :catchall_33
    move-exception p0

    goto :goto_48

    :cond_35
    const-string/jumbo p3, "alarm enabled"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_33

    const-string/jumbo p1, "Log:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void

    :goto_48
    :try_start_48
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_33

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public startGnssListeningInternal()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->hasProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "GPS provider does not exist on this device"

    const-string v1, "GnssTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_19
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    const-string p0, "Already listening for GNSS updates"

    invoke-static {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :catchall_28
    move-exception p0

    goto :goto_3b

    :cond_2a
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    if-eqz v1, :cond_36

    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    :cond_36
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    monitor-exit v0

    return v2

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_28

    throw p0
.end method

.method public final startGnssListeningLocked()V
    .registers 5

    const-string/jumbo v0, "startGnssListeningLocked()"

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    const-string/jumbo v3, "gps"

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    return-void
.end method
