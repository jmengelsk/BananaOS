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
    .locals 2

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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    return-void
.end method

.method public static closeLogFileWriter()V
    .locals 6

    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_7

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

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    :try_start_2
    const-string/jumbo v5, "LogFileWriter.saveAndClose fail"

    invoke-static {v1, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    :cond_3
    iget-object v3, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_4
    sput-object v4, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_9

    :goto_5
    :try_start_4
    iget-object v5, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_5
    :goto_6
    iget-object v5, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iput-object v4, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :goto_7
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_8
    throw v3

    :cond_7
    :goto_9
    return-void
.end method

.method public static get()V
    .locals 2

    const-class v0, Lcom/android/server/power/ShutdownThread;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;
    .locals 2

    const-class v0, Lcom/android/server/power/ShutdownThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/power/shutdown/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/shutdown/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static metricEnded(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
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

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static metricStarted(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

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

    if-eqz p2, :cond_0

    const-string p0, "!@Request to shutdown already running, returning."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
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
    .locals 10

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "ShutdownThread"

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v0, 0x3c

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    :goto_0
    const-string/jumbo v0, "init.svc.bugreportd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "running"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "init.svc.bugreportm"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    const-string v0, "!@Dumpstate finish wait timed out"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "!@wait for finish Dumpstate: sleep 1000ms"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "InterruptedException"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

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

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    new-instance p2, Landroid/os/SystemVibrator;

    invoke-direct {p2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    :try_start_1
    invoke-virtual {p2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p2, v2, v3, p0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p2, "Failed to vibrate during shutdown."

    invoke-static {v1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2
    :cond_4
    :goto_2
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

    if-nez p1, :cond_5

    const-string p1, ""

    :cond_5
    const-string/jumbo p0, "shutdown,"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sys.powerctl"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    const-string/jumbo v1, "ShutdownThread"

    if-eqz v0, :cond_0

    const-string p0, "!@Request to shutdown already running, returning./rebootSafeMode()"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "safe mode is not allowed by IT admin"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_2
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
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "POWER_OFF_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string v1, "!@Exception"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 8

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    const-string/jumbo v5, "recovery-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const v1, 0x1040cda

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x111024c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x1040cd8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x1040cd9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const v5, 0x1040ee8

    const v6, 0x1040c9c

    if-eqz v1, :cond_7

    const-string/jumbo v7, "recovery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/PackageWatchdog;->isRecoveryTriggeredReboot()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const v1, 0x1040cd6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1040cd5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    return-object v3

    :cond_8
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x7d9

    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0
.end method

.method public static showSysuiReboot()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
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

    if-nez v4, :cond_1

    :catch_0
    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    return v5

    :catch_1
    :cond_2
    return v0
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

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

    if-eqz p2, :cond_0

    const-string p0, "!@Request to shutdown already running, returning."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x0

    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean p2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;)V

    return-void
.end method

.method public static shutdownInner(Landroid/content/Context;)V
    .locals 15

    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_19

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    const-string/jumbo v2, "restriction_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->systemRequest:Z

    if-nez v3, :cond_2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Shutdown Disabled by Administrator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendPowerOffCancelBroadcast(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    const-string/jumbo v3, "ShutdownThread"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "ISRB_BOOT"

    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

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

    :cond_3
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v2, "RescueParty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "SAFE_MODE"

    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "persist.sys.rescue_level"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ShutdownThread"

    const-string v2, "!@RescueParty level is reset"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    new-instance v2, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_6

    const v0, 0x1030128

    goto :goto_5

    :cond_6
    const v0, 0x103012b

    :goto_5
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

    if-lez v4, :cond_8

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

    if-eqz v4, :cond_7

    const-string/jumbo v4, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_8
    :goto_6
    const/4 v4, 0x0

    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
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
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception p0

    move-object v4, v5

    goto/16 :goto_17

    :catch_3
    move-exception p0

    goto :goto_7

    :catchall_2
    move-exception p0

    goto/16 :goto_17

    :catch_4
    move-exception p0

    move-object v5, v4

    :goto_7
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_9

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    :goto_8
    const-wide/16 v5, 0x32

    :try_start_8
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "InterruptedException"

    invoke-static {v0, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
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

    :try_start_9
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_a

    monitor-exit p0

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    goto/16 :goto_16

    :cond_a
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    if-nez p0, :cond_b

    const-string/jumbo p0, "ShutdownDelay"

    const-string/jumbo v0, "Start handler"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/power/ShutdownThread$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    :cond_b
    new-instance p0, Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v0, "recovery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v0, "recovery-update"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_a

    :cond_c
    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    sget-object v0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    :cond_d
    :goto_a
    sget-object p0, Lcom/android/server/power/ShutdownThread$1;->delayhandler:Lcom/android/server/power/ShutdownThread$1;

    sget-object v0, Lcom/android/server/power/ShutdownThread$1;->delayDumpRaunnable:Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;

    const-wide/32 v5, 0xdbba0

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_b
    const-string/jumbo p0, "Shutdown logFileWriter start"

    const-string/jumbo v0, "ShutdownThread"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-nez p0, :cond_13

    new-instance p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/log/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const-string/jumbo v7, "shutdown_profile"

    if-eqz v5, :cond_11

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    array-length v9, v5

    move v10, v3

    :goto_c
    if-ge v10, v9, :cond_f

    aget-object v11, v5, v10

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_f
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v5

    const/4 v9, 0x5

    if-ge v5, v9, :cond_10

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

    goto :goto_d

    :cond_10
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

    goto :goto_d

    :cond_11
    move-object v5, v4

    :goto_d
    if-eqz v5, :cond_12

    :try_start_a
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
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_e

    :catch_6
    move-exception v5

    const-string/jumbo v6, "LogFileWriter.LogFileWriter error"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_e
    sput-object p0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    :cond_13
    const-string/jumbo p0, "ShutdownThread"

    const-string v0, "!@beginShutdownSequence"

    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "input"

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object p0

    const-string/jumbo v0, "ShutdownThread"

    if-nez p0, :cond_14

    const-string/jumbo p0, "ServiceManager.checkService fail"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_14
    :try_start_b
    const-string/jumbo v5, "setInputKeysDisable"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v1}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string/jumbo v5, "error occur while input disable"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "powerofftriggered"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "isShutDownForRCS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_c
    invoke-virtual {v2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string v5, "!@Exception"

    invoke-static {v0, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    const-string/jumbo p0, "ShutdownThread"

    const-string v0, "!@Shutdown animation will start"

    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz p0, :cond_15

    const-string/jumbo v0, "recovery-update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_12

    :cond_15
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz p0, :cond_1a

    const-string/jumbo p0, "ShutdownThread"

    const-string v0, "!@play QMG animation"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "silent.sec"

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v0, "setSilentShutdown true"

    const-string/jumbo v5, "Shutdown-ShutdownDialog"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    iput-boolean v1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    :cond_17
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "prepare shutdown dialog image and sound"

    const-string/jumbo v5, "Shutdown-ShutdownDialog"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/android/server/power/shutdown/PlayerInterface;->prepare()V

    :cond_18
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/SoundPlayer;->prepare()V

    :cond_19
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_d
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string v0, "!@Exception"

    invoke-static {v5, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->getShutdownDialog(Landroid/content/Context;)Lcom/android/server/power/shutdown/ShutdownDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_12

    :cond_1a
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    :goto_12
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_e
    const-string/jumbo v2, "ShutdownThread-cpu"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_13

    :catch_a
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "No permission to acquire wake lock"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_13
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_f
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "ShutdownThread-screen"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_14

    :catch_b
    move-exception p0

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "No permission to acquire wake lock"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v4, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1b
    :goto_14
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_1c

    const p0, 0x3345a

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1c
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_15
    return-void

    :goto_16
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0

    :goto_17
    if-eqz v4, :cond_1d

    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_18

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d
    :goto_18
    throw p0

    :goto_19
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw p0
.end method

.method public static systemShutdown(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "systemShutdown - reason: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    const-string p0, "!@Request to shutdown already running, returning."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
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
    .locals 10

    sget-object v0, Lcom/android/server/power/ShutdownThread;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    const-string/jumbo v8, "ShutdownThread"

    if-nez v1, :cond_0

    const-string/jumbo p0, "shutdownProfile is null"

    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
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

    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->shutdownProfile:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestShutdownProfile:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "LogFileWriter.write fail"

    invoke-static {v8, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public playShutdownVibration(Landroid/content/Context;)V
    .locals 9

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

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    const-string/jumbo v1, "ShutdownThread"

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    const-string/jumbo p0, "Vibration disabled in config"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1040345

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Error parsing default shutdown vibration effect."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 v2, -0x1

    const-wide/16 v3, 0x1f4

    if-nez p1, :cond_4

    invoke-static {v3, v4, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    const-string/jumbo p1, "The parsed shutdown vibration is indefinite."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    :cond_5
    :goto_1
    const/16 v1, 0x12

    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    const-wide/16 v5, 0x0

    cmp-long p1, v0, v5

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    move-wide v3, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_3
    return-void
.end method

.method public final run()V
    .locals 18

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

    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/SurfaceControl;->notifyShutdown()V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "sys.shutdown.requested"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.sys.safemode"

    const-string v5, "1"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "DumpPreRebootInfo"

    invoke-virtual {v4, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    :try_start_1
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

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0, v5}, Lcom/android/server/power/PreRebootLogger;->log(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "Pre-reboot dump directory not found"

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "ShutdownThread"

    const-string v6, "Failed to log pre-reboot information"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
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

    :try_start_2
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
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

    :catch_2
    :goto_3
    :try_start_3
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v6, v14

    cmp-long v0, v14, v11

    if-gtz v0, :cond_4

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v6, "Shutdown broadcast timed out"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_4
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_5

    sub-long v11, v8, v14

    long-to-double v11, v11

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v16

    const-wide v16, 0x40c3880000000000L    # 10000.0

    div-double v11, v11, v16

    double-to-int v0, v11

    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v11, v0, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v11, 0x1f4

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_6
    :goto_4
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_7
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

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_DEBUG_LOW:Z

    if-nez v7, :cond_9

    :cond_8
    const-wide/16 v7, 0x1388

    cmp-long v7, v5, v7

    if-ltz v7, :cond_9

    const-string/jumbo v0, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "!@shutdown is too slow, elapsed time from POWEROFF START to BROADCAST_SHUTDOWN is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string/jumbo v5, "On"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :goto_5
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

    if-eqz v0, :cond_a

    const/16 v5, 0x2710

    :try_start_6
    invoke-interface {v0, v5}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_a
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_b
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

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    :cond_c
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_d
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

    :try_start_7
    invoke-virtual {v9, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    aget-boolean v0, v0, v3

    if-nez v0, :cond_e

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v5, "Timed out waiting for Radio shutdown."

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v5, 0x12

    invoke-virtual {v0, v5, v13}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_f
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_10

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

    :try_start_8
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    aget-boolean v0, v2, v3

    if-nez v0, :cond_10

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

    :try_start_9
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v2, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    const-string v2, "Failed to write timeout message to uncrypt status"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_6
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

    if-eqz v0, :cond_12

    const-string/jumbo v0, "ShutdownThread"

    const-string v8, "!@wait for PNG animation end"

    invoke-static {v0, v8}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v13, v2

    mul-long/2addr v13, v6

    add-long/2addr v13, v8

    :goto_7
    const-string/jumbo v0, "dev.shutdownanimation.end"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "END"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v13, v6

    cmp-long v0, v6, v11

    const-string/jumbo v2, "ShutdownThread"

    if-gtz v0, :cond_11

    const-string v0, "!@Animation finish wait timed out"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_11
    const-string v0, "!@wait for finish : sleep 100ms"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    const-string v0, "InterruptedException"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_12
    sget-object v0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

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

    :goto_8
    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/android/server/power/shutdown/PlayerInterface;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/android/server/power/shutdown/SoundPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v13, v6

    cmp-long v2, v6, v11

    const-string/jumbo v6, "Shutdown-ShutdownDialog"

    if-gtz v2, :cond_15

    const-string v0, "!@Animation finish wait timed out"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_15
    const-string v2, "!@wait for finish : sleep 100ms"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_8

    :catch_8
    const-string v2, "InterruptedException"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_16
    :goto_9
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

    if-eqz v3, :cond_17

    const-string/jumbo v3, "reboot"

    goto :goto_a

    :cond_17
    const-string/jumbo v3, "shutdown"

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_18

    goto :goto_b

    :cond_18
    const-string/jumbo v3, "null"

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :goto_c
    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0
.end method

.method public final setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Lcom/android/server/power/ShutdownThread$1;

    new-instance v1, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
