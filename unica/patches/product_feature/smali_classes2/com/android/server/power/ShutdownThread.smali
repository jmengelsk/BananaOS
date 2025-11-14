.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BIN_TYPE_DEBUG_LOW:Z

.field public static final BIN_TYPE_PRODUCTSHIP:Z

.field public static final BIN_TYPE_USER:Z

.field static final DEFAULT_SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field public static final METRIC_AM:Ljava/lang/String;

.field public static final METRIC_PM:Ljava/lang/String;

.field public static final METRIC_RADIO:Ljava/lang/String;

.field public static final METRIC_RADIOS:Ljava/lang/String;

.field public static final METRIC_SEND_BROADCAST:Ljava/lang/String;

.field public static final METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

.field public static final METRIC_SYSTEM_SERVER:Ljava/lang/String;

.field public static final TRON_METRICS:Landroid/util/ArrayMap;

.field public static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static currentTimeMillisStart:J

.field public static logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

.field public static mReason:Ljava/lang/String;

.field public static mReboot:Z

.field public static mRebootHasProgressBar:Z

.field public static mRebootSafeMode:Z

.field public static final sInstance:Lcom/android/server/power/ShutdownThread;

.field public static sIsStarted:Z

.field public static final sIsStartedGuard:Ljava/lang/Object;

.field public static shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

.field public static systemRequest:Z


# instance fields
.field public mActionDone:Z

.field public final mActionDoneSync:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mHandler:Lcom/android/server/power/ShutdownThread$1;

.field public final mInjector:Lcom/android/server/power/ShutdownThread$Injector;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$Injector;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$Injector;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread;-><init>(Lcom/android/server/power/ShutdownThread$Injector;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    const-string/jumbo v0, "shutdown_system_server"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_activity_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_package_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_radios"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_radio"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    const-string/jumbo v0, "begin_shutdown"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    const-string/jumbo v0, "ro.boot.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_DEBUG_LOW:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownThread$Injector;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    return-void
.end method

.method public static closeLogFileWriter()V
    .registers 6

    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_92

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logFileWriter saveAndClose logFileWriter : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string/jumbo v2, "LogFileWriter.saveAndClose error"

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    if-nez v3, :cond_26

    goto :goto_75

    :cond_26
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3e} :catch_41
    .catchall {:try_start_26 .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v3

    goto :goto_78

    :catch_41
    move-exception v3

    goto :goto_5d

    :cond_43
    :goto_43
    :try_start_43
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    goto :goto_4f

    :catch_4d
    move-exception v0

    goto :goto_59

    :cond_4f
    :goto_4f
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_75

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_58} :catch_4d

    goto :goto_75

    :goto_59
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    :goto_5d
    :try_start_5d
    const-string/jumbo v5, "LogFileWriter.saveAndClose fail"

    invoke-static {v1, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_3f

    :try_start_63
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    :cond_6c
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_75

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_75} :catch_4d

    :cond_75
    :goto_75
    sput-object v4, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_92

    :goto_78
    :try_start_78
    iget-object v5, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_84

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    goto :goto_84

    :catch_82
    move-exception v0

    goto :goto_8e

    :cond_84
    :goto_84
    iget-object v5, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_91

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_8d} :catch_82

    goto :goto_91

    :goto_8e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_91
    :goto_91
    throw v3

    :cond_92
    :goto_92
    return-void
.end method

.method public static get()V
    .registers 2

    const-class v0, Lcom/android/server/power/ShutdownThread;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public static declared-synchronized getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;
    .registers 3

    const-class v0, Lcom/android/server/power/ShutdownThread;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    if-nez v1, :cond_11

    new-instance v1, Lcom/android/server/power/shutdown/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/shutdown/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method

.method public static metricEnded(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public static metricStarted(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reboot reason : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "ShutdownThread"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz p2, :cond_27

    const-string p0, "!@Request to shutdown already running, returning."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 p2, 0x1

    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 p2, 0x0

    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 13

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "ShutdownThread"

    if-eqz v0, :cond_5d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v0, 0x3c

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    :goto_1f
    const-string/jumbo v0, "init.svc.bugreportd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "running"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string/jumbo v0, "init.svc.bugreportm"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-gtz v0, :cond_4e

    const-string v0, "!@Dumpstate finish wait timed out"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :cond_4e
    const-string v0, "!@wait for finish Dumpstate: sleep 1000ms"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_53
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_1f

    :catch_57
    const-string v0, "InterruptedException"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_5d
    :goto_5d
    if-eqz p2, :cond_7f

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "!@Rebooting, reason: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    const-string p0, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->closeLogFileWriter()V

    const-string/jumbo p1, "[shutdownthread]rebootFailed"

    goto :goto_9d

    :cond_7f
    if-eqz p0, :cond_9d

    new-instance p2, Landroid/os/SystemVibrator;

    invoke-direct {p2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    :try_start_86
    invoke-virtual {p2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_9d

    sget-object p0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p2, v2, v3, p0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_93} :catch_97

    :try_start_93
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_96} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9d

    :catch_97
    move-exception p0

    const-string p2, "Failed to vibrate during shutdown."

    invoke-static {v1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_9d
    :cond_9d
    :goto_9d
    const-string p0, "!@Performing low-level shutdown..."

    invoke-static {v1, p0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->closeLogFileWriter()V

    sget-object p0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[api] lowLevelShutdown: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "PowerManagerService"

    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/Slog;->saveLogAsFile()V

    if-nez p1, :cond_c8

    const-string p1, ""

    :cond_c8
    const-string/jumbo p0, "shutdown,"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sys.powerctl"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    const-string/jumbo v1, "ShutdownThread"

    if-eqz v0, :cond_d

    const-string p0, "!@Request to shutdown already running, returning./rebootSafeMode()"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    :try_start_20
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_3f

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string/jumbo v0, "safe mode is not allowed by IT admin"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    :cond_3f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const-string/jumbo v0, "SafeMode"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "POWER_OFF_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string v1, "!@Exception"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 9

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7a

    const-string/jumbo v5, "recovery-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v4

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const v1, 0x1040cda

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_65

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x111024c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    :cond_53
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x1040cd8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_dc

    :cond_65
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_ca

    :cond_6c
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x1040cd9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_dc

    :cond_7a
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const v5, 0x1040ee8

    const v6, 0x1040c9c

    if-eqz v1, :cond_c4

    const-string/jumbo v7, "recovery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-static {}, Lcom/android/server/PackageWatchdog;->isRecoveryTriggeredReboot()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_dc

    :cond_a5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_ac

    goto :goto_ca

    :cond_ac
    const v1, 0x1040cd6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1040cd5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_dc

    :cond_c4
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_cb

    :goto_ca
    return-object v3

    :cond_cb
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :goto_dc
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x7d9

    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static showSysuiReboot()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111024d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_21

    :catch_1f
    :cond_1f
    move v1, v0

    goto :goto_2b

    :cond_21
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_2e

    if-eqz v1, :cond_1f

    :try_start_27
    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2e

    move v1, v5

    :goto_2b
    if-eqz v1, :cond_2e

    return v5

    :catch_2e
    :cond_2e
    return v0
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shutdown reason : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "ShutdownThread"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz p2, :cond_27

    const-string p0, "!@Request to shutdown already running, returning."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 p2, 0x0

    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static shutdownInner(Landroid/content/Context;)V
    .registers 16

    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_f

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p0

    goto/16 :goto_49c

    :cond_f
    const/4 v1, 0x1

    :try_start_10
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_28

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_59

    goto :goto_28

    :catch_24
    move-exception v2

    goto :goto_47

    :catch_26
    move-exception v2

    goto :goto_50

    :cond_28
    :goto_28
    if-eqz v2, :cond_59

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    if-nez v3, :cond_59

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_59

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Shutdown Disabled by Administrator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_45} :catch_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_45} :catch_24
    .catchall {:try_start_10 .. :try_end_45} :catchall_c

    :try_start_45
    monitor-exit v0

    return-void

    :goto_47
    const-string/jumbo v3, "ShutdownThread"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :goto_50
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_59
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_c

    const-string v0, "ISRB_BOOT"

    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string/jumbo v0, "persist.sys.enable_isrb"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.rescue_mode"

    const-string/jumbo v2, "isrb_off"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.isrblevel.callreboot"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_ad

    const-string/jumbo v2, "RescueParty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string/jumbo v0, "SAFE_MODE"

    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const-string/jumbo v0, "persist.sys.rescue_level"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownThread"

    const-string v2, "!@RescueParty level is reset"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ne v0, v2, :cond_c0

    move v0, v1

    goto :goto_c1

    :cond_c0
    move v0, v3

    :goto_c1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_c9

    const v0, 0x1030128

    goto :goto_cc

    :cond_c9
    const v0, 0x103012b

    :goto_cc
    invoke-direct {v2, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "reason : "

    const-string/jumbo v4, "save power_off_reset_reason.txt"

    const-string/jumbo v5, "ShutdownThread"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x2800

    cmp-long v4, v7, v9

    if-lez v4, :cond_14a

    const-string/jumbo v4, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_147

    const-string/jumbo v4, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_147

    const-string/jumbo v4, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14a

    :cond_147
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_14a
    :goto_14a
    const/4 v4, 0x0

    :try_start_14b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_150} :catch_1ad
    .catchall {:try_start_14b .. :try_end_150} :catchall_1aa

    :try_start_150
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a0

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x3e8

    const/16 v9, 0x3ef

    invoke-static {v6, v8, v9}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yy/MM/dd HH:mm:ss"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_19b} :catch_1a8
    .catchall {:try_start_150 .. :try_end_19b} :catchall_1a4

    :try_start_19b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_19f

    goto :goto_1b7

    :catch_19f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b7

    :catchall_1a4
    move-exception p0

    move-object v4, v5

    goto/16 :goto_491

    :catch_1a8
    move-exception p0

    goto :goto_1af

    :catchall_1aa
    move-exception p0

    goto/16 :goto_491

    :catch_1ad
    move-exception p0

    move-object v5, v4

    :goto_1af
    :try_start_1af
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b2
    .catchall {:try_start_1af .. :try_end_1b2} :catchall_1a4

    if-eqz v5, :cond_1b7

    :try_start_1b4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_19f

    :cond_1b7
    :goto_1b7
    const-wide/16 v5, 0x32

    :try_start_1b9
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1bc
    .catch Ljava/lang/InterruptedException; {:try_start_1b9 .. :try_end_1bc} :catch_1bd

    goto :goto_1c6

    :catch_1bd
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "InterruptedException"

    invoke-static {v0, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c6
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "!@########POWEROFF START###### current time : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/server/power/ShutdownThread;->currentTimeMillisStart:J

    sget-object p0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1f8
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_202

    monitor-exit p0

    goto/16 :goto_48e

    :catchall_1ff
    move-exception v0

    goto/16 :goto_48f

    :cond_202
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    monitor-exit p0
    :try_end_205
    .catchall {:try_start_1f8 .. :try_end_205} :catchall_1ff

    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    if-nez p0, :cond_21d

    const-string/jumbo p0, "ShutdownDelay"

    const-string/jumbo v0, "Start handler"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/power/ShutdownThread$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    :cond_21d
    new-instance p0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v0, "recovery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_246

    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v0, "recovery-update"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23b

    goto :goto_246

    :cond_23b
    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    sget-object v0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_250

    :cond_246
    :goto_246
    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    sget-object v0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    const-wide/32 v5, 0xdbba0

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_250
    const-string/jumbo p0, "Shutdown logFileWriter start"

    const-string/jumbo v0, "ShutdownThread"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-nez p0, :cond_322

    new-instance p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/log/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const-string/jumbo v7, "shutdown_profile"

    if-eqz v5, :cond_2d3

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    array-length v9, v5

    move v10, v3

    :goto_27b
    if-ge v10, v9, :cond_29d

    aget-object v11, v5, v10

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_29a

    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_29a

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29a
    add-int/lit8 v10, v10, 0x1

    goto :goto_27b

    :cond_29d
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v5

    const/4 v9, 0x5

    if-ge v5, v9, :cond_2bb

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v8, "txt"

    filled-new-array {v7, v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "%s.%d.%s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2d4

    :cond_2bb
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2d4

    :cond_2d3
    move-object v5, v4

    :goto_2d4
    if-eqz v5, :cond_320

    :try_start_2d6
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "_latest.txt"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v8, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v5, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_318
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_318} :catch_319

    goto :goto_320

    :catch_319
    move-exception v5

    const-string/jumbo v6, "LogFileWriter.LogFileWriter error"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_320
    :goto_320
    sput-object p0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    :cond_322
    const-string/jumbo p0, "ShutdownThread"

    const-string v0, "!@beginShutdownSequence"

    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "input"

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object p0

    const-string/jumbo v0, "ShutdownThread"

    if-nez p0, :cond_341

    const-string/jumbo p0, "ServiceManager.checkService fail"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_355

    :cond_341
    :try_start_341
    const-string/jumbo v5, "setInputKeysDisable"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v1}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_34a
    .catch Landroid/os/RemoteException; {:try_start_341 .. :try_end_34a} :catch_34b

    goto :goto_355

    :catch_34b
    move-exception p0

    const-string/jumbo v5, "error occur while input disable"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_355
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "powerofftriggered"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "isShutDownForRCS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_36c
    invoke-virtual {v2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_36f
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_36f} :catch_370

    goto :goto_379

    :catch_370
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "!@Exception"

    invoke-static {v0, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_379
    const-string/jumbo p0, "ShutdownThread"

    const-string v0, "!@Shutdown animation will start"

    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz p0, :cond_398

    const-string/jumbo v0, "recovery-update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_398

    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_413

    :cond_398
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz p0, :cond_40b

    const-string/jumbo p0, "ShutdownThread"

    const-string v0, "!@play QMG animation"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "silent.sec"

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3bb

    const-string p0, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d1

    :cond_3bb
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v0, "setSilentShutdown true"

    const-string/jumbo v5, "Shutdown-ShutdownDialog"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    iput-boolean v1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    :cond_3d1
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "prepare shutdown dialog image and sound"

    const-string/jumbo v5, "Shutdown-ShutdownDialog"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz v0, :cond_3e8

    invoke-interface {v0}, Lcom/android/server/power/shutdown/PlayerInterface;->prepare()V

    :cond_3e8
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    if-eqz v0, :cond_3ef

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/SoundPlayer;->prepare()V

    :cond_3ef
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_3f7
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3fc
    .catch Ljava/lang/Exception; {:try_start_3f7 .. :try_end_3fc} :catch_3fd

    goto :goto_403

    :catch_3fd
    move-exception p0

    const-string v0, "!@Exception"

    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_403
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_413

    :cond_40b
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    :goto_413
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_424
    const-string/jumbo v2, "ShutdownThread-cpu"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_435
    .catch Ljava/lang/SecurityException; {:try_start_424 .. :try_end_435} :catch_436

    goto :goto_444

    :catch_436
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "No permission to acquire wake lock"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_444
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_474

    :try_start_450
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "ShutdownThread-screen"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_465
    .catch Ljava/lang/SecurityException; {:try_start_450 .. :try_end_465} :catch_466

    goto :goto_474

    :catch_466
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "No permission to acquire wake lock"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_474
    :goto_474
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_482

    const p0, 0x3345a

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_482
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_48e
    return-void

    :goto_48f
    :try_start_48f
    monitor-exit p0
    :try_end_490
    .catchall {:try_start_48f .. :try_end_490} :catchall_1ff

    throw v0

    :goto_491
    if-eqz v4, :cond_49b

    :try_start_493
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_496
    .catch Ljava/io/IOException; {:try_start_493 .. :try_end_496} :catch_497

    goto :goto_49b

    :catch_497
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_49b
    :goto_49b
    throw p0

    :goto_49c
    :try_start_49c
    monitor-exit v0
    :try_end_49d
    .catchall {:try_start_49c .. :try_end_49d} :catchall_c

    throw p0
.end method

.method public static systemShutdown(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "systemShutdown - reason: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_17

    const-string p0, "!@Request to shutdown already running, returning."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static wirteLogFileWriter(Ljava/lang/String;)V
    .registers 11

    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_7a

    iget-object v1, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    const-string/jumbo v8, "ShutdownThread"

    if-nez v1, :cond_12

    const-string/jumbo p0, "shutdownProfile is null"

    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :cond_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v9, p0

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :try_start_5d
    iget-object v1, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_71} :catch_72

    goto :goto_7a

    :catch_72
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "LogFileWriter.write fail"

    invoke-static {v8, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7a
    :goto_7a
    return-void
.end method


# virtual methods
.method public playShutdownVibration(Landroid/content/Context;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v3, 0x1

    :cond_1f
    const-string/jumbo v1, "ShutdownThread"

    if-eqz v0, :cond_2d

    if-eqz v3, :cond_2d

    const-string/jumbo p0, "Vibration disabled in config"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_a7

    :cond_3e
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1040345

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    :try_start_54
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;

    move-result-object p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_61} :catch_62

    goto :goto_69

    :catch_62
    move-exception p1

    const-string v2, "Error parsing default shutdown vibration effect."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_68
    const/4 p1, 0x0

    :goto_69
    const/4 v2, -0x1

    const-wide/16 v3, 0x1f4

    if-nez p1, :cond_73

    invoke-static {v3, v4, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    goto :goto_8a

    :cond_73
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_8a

    const-string/jumbo p1, "The parsed shutdown vibration is indefinite."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    :cond_8a
    :goto_8a
    const/16 v1, 0x12

    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    const-wide/16 v5, 0x0

    cmp-long p1, v0, v5

    if-gez p1, :cond_a0

    goto :goto_a1

    :cond_a0
    move-wide v3, v0

    :goto_a1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_a4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_a7} :catch_a7

    :catch_a7
    :goto_a7
    return-void
.end method

.method public final run()V
    .registers 19

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/util/TimingsTraceLog;

    const-string/jumbo v0, "ShutdownTiming"

    const-wide/32 v5, 0x80000

    invoke-direct {v4, v0, v5, v6}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v0, "SystemServerShutdown"

    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_18
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_393

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/SurfaceControl;->notifyShutdown()V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_35

    const-string v0, "1"

    goto :goto_37

    :cond_35
    const-string v0, "0"

    :goto_37
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v5, :cond_3c

    goto :goto_3e

    :cond_3c
    const-string v5, ""

    :goto_3e
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "sys.shutdown.requested"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_54

    const-string/jumbo v0, "persist.sys.safemode"

    const-string v5, "1"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    const-string v0, "DumpPreRebootInfo"

    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    :try_start_59
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v5, "Logging pre-reboot information..."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "prereboot"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-static {v0, v5}, Lcom/android/server/power/PreRebootLogger;->log(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_94

    :cond_82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "Pre-reboot dump directory not found"

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception v0

    const-string/jumbo v5, "ShutdownThread"

    const-string v6, "Failed to log pre-reboot information"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_94
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "!@Shutting down Hermes manager..."

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const-string v5, "!@Shutdown HermesService start."

    const-string/jumbo v6, "ShutdownThread"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v7, 0x1e

    :try_start_b1
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_b1 .. :try_end_b4} :catch_b4

    :catch_b4
    const-string v0, "!@Shutdown HermesService end."

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-string/jumbo v0, "SendShutdownBroadcast"

    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "!@Sending shutdown broadcast..."

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    const/high16 v5, 0x50000000

    invoke-static {v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityManagerInternal;

    new-instance v8, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v8, v1}, Lcom/android/server/power/ShutdownThread$2;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    iget-object v10, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v10

    :catch_103
    :goto_103
    :try_start_103
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_149

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v6, v14

    cmp-long v0, v14, v11

    if-gtz v0, :cond_121

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v6, "Shutdown broadcast timed out"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149

    :catchall_11e
    move-exception v0

    goto/16 :goto_391

    :cond_121
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_13d

    sub-long v11, v8, v14

    long-to-double v11, v11

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    mul-double v11, v11, v16

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    mul-double v11, v11, v16

    const-wide v16, 0x40c3880000000000L  # 10000.0

    div-double v11, v11, v16

    double-to-int v0, v11

    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v11, v0, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_13d
    .catchall {:try_start_103 .. :try_end_13d} :catchall_11e

    :cond_13d
    :try_start_13d
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v11, 0x1f4

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_148
    .catch Ljava/lang/InterruptedException; {:try_start_13d .. :try_end_148} :catch_103
    .catchall {:try_start_13d .. :try_end_148} :catchall_11e

    goto :goto_103

    :cond_149
    :goto_149
    :try_start_149
    monitor-exit v10
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_11e

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_153

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/power/ShutdownThread;->currentTimeMillisStart:J

    sub-long/2addr v5, v7

    const-string/jumbo v0, "dev.shutdownbroadcast.on"

    const-string v7, ""

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-eqz v7, :cond_16f

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_DEBUG_LOW:Z

    if-nez v7, :cond_18a

    :cond_16f
    const-wide/16 v7, 0x1388

    cmp-long v7, v5, v7

    if-ltz v7, :cond_18a

    const-string/jumbo v0, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "!@shutdown is too slow, elapsed time from POWEROFF START to BROADCAST_SHUTDOWN is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_190

    :cond_18a
    const-string/jumbo v5, "On"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :goto_190
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "!@Shutting down activity manager..."

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownActivityManager"

    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1bd

    const/16 v5, 0x2710

    :try_start_1ba
    invoke-interface {v0, v5}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1bd
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_1bd} :catch_1bd

    :catch_1bd
    :cond_1bd
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_1c7

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_1c7
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "!@Shutting down package manager..."

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownPackageManager"

    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    if-eqz v5, :cond_1ef

    invoke-virtual {v5}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    :cond_1ef
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v5, :cond_1f9

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_1f9
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownRadios"

    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v0, 0x2ee0

    int-to-long v7, v0

    add-long/2addr v5, v7

    new-array v0, v2, [Z

    new-instance v9, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v9, v1, v5, v6, v0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    :try_start_21c
    invoke-virtual {v9, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_21f
    .catch Ljava/lang/InterruptedException; {:try_start_21c .. :try_end_21f} :catch_21f

    :catch_21f
    aget-boolean v0, v0, v3

    if-nez v0, :cond_22c

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v5, "Timed out waiting for Radio shutdown."

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22c
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_237

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v5, 0x12

    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_237
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_296

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    const-string v0, "Calling uncrypt and monitoring the progress..."

    const-string/jumbo v4, "ShutdownThread"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    new-instance v5, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v5, v1, v0, v2}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Lcom/android/server/power/ShutdownThread$6;[Z)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const-wide/32 v6, 0xdbba0

    :try_start_266
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_269
    .catch Ljava/lang/InterruptedException; {:try_start_266 .. :try_end_269} :catch_269

    :catch_269
    aget-boolean v0, v2, v3

    if-nez v0, :cond_296

    const-string/jumbo v0, "Timed out waiting for uncrypt."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x384

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "uncrypt_time: %d\nuncrypt_error: %d\n"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_28a
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v2, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28f
    .catch Ljava/io/IOException; {:try_start_28a .. :try_end_28f} :catch_290

    goto :goto_296

    :catch_290
    move-exception v0

    const-string v2, "Failed to write timeout message to uncrypt status"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_296
    :goto_296
    const-string/jumbo v0, "ShutdownThread"

    const-string v2, "!@waitForAnimEnd"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ON"

    const-string/jumbo v2, "service.poweranimation.on"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x3e8

    const/16 v2, 0xa

    if-eqz v0, :cond_2f6

    const-string/jumbo v0, "ShutdownThread"

    const-string v8, "!@wait for PNG animation end"

    invoke-static {v0, v8}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v13, v2

    mul-long/2addr v13, v6

    add-long/2addr v13, v8

    :goto_2c5
    const-string/jumbo v0, "dev.shutdownanimation.end"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "END"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v13, v6

    cmp-long v0, v6, v11

    const-string/jumbo v2, "ShutdownThread"

    if-gtz v0, :cond_2e7

    const-string v0, "!@Animation finish wait timed out"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34a

    :cond_2e7
    const-string v0, "!@wait for finish : sleep 100ms"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2ec
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2ef
    .catch Ljava/lang/InterruptedException; {:try_start_2ec .. :try_end_2ef} :catch_2f0

    goto :goto_2c5

    :catch_2f0
    const-string v0, "InterruptedException"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c5

    :cond_2f6
    sget-object v0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    if-eqz v0, :cond_34a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34a

    const-string/jumbo v0, "ShutdownThread"

    const-string v8, "!@wait for animation end"

    invoke-static {v0, v8}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v13, v2

    mul-long/2addr v13, v6

    add-long/2addr v13, v8

    :goto_314
    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz v2, :cond_31e

    invoke-interface {v2}, Lcom/android/server/power/shutdown/PlayerInterface;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_328

    :cond_31e
    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    if-eqz v2, :cond_34a

    invoke-virtual {v2}, Lcom/android/server/power/shutdown/SoundPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_34a

    :cond_328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v13, v6

    cmp-long v2, v6, v11

    const-string/jumbo v6, "Shutdown-ShutdownDialog"

    if-gtz v2, :cond_33b

    const-string v0, "!@Animation finish wait timed out"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34a

    :cond_33b
    const-string v2, "!@wait for finish : sleep 100ms"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_340
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_343
    .catch Ljava/lang/InterruptedException; {:try_start_340 .. :try_end_343} :catch_344

    goto :goto_314

    :catch_344
    const-string v2, "InterruptedException"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_314

    :cond_34a
    :goto_34a
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->enableUsbDataSignal(Z)Z

    const-string/jumbo v0, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!@run, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_36a

    const-string/jumbo v3, "reboot"

    goto :goto_36d

    :cond_36a
    const-string/jumbo v3, "shutdown"

    :goto_36d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_37a

    goto :goto_37d

    :cond_37a
    const-string/jumbo v3, "null"

    :goto_37d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :goto_391
    :try_start_391
    monitor-exit v10
    :try_end_392
    .catchall {:try_start_391 .. :try_end_392} :catchall_11e

    throw v0

    :catchall_393
    move-exception v0

    :try_start_394
    monitor-exit v5
    :try_end_395
    .catchall {:try_start_394 .. :try_end_395} :catchall_393

    throw v0
.end method

.method public final setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    new-instance v1, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
