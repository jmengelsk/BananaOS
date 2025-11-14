.class Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TIMEOUT_MILLIS:J


# instance fields
.field public mCollector:Lcom/android/server/storage/AppCollector;

.field public mContext:Lcom/android/server/storage/DiskStatsLoggingService;

.field public mDownloadsDirectory:Ljava/io/File;

.field public mJobService:Lcom/android/server/storage/DiskStatsLoggingService;

.field public mOutputFile:Ljava/io/File;

.field public mParams:Landroid/app/job/JobParameters;

.field public mSystemSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mContext:Lcom/android/server/storage/DiskStatsLoggingService;

    invoke-static {v1}, Lcom/android/server/storage/FileCollector;->getMeasurementResult(Lcom/android/server/storage/DiskStatsLoggingService;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mDownloadsDirectory:Ljava/io/File;

    invoke-static {v2}, Landroid/os/storage/StorageManager;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/android/server/storage/FileCollector$MeasurementResult;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/storage/FileCollector;->collectFiles(Ljava/io/File;Lcom/android/server/storage/FileCollector$MeasurementResult;)V

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mCollector:Lcom/android/server/storage/AppCollector;

    sget-wide v4, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->TIMEOUT_MILLIS:J

    monitor-enter v2

    :try_start_1
    iget-object v6, v2, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v6, v2, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    iget-object v6, v2, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v2, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    const-string v2, "AppCollector"

    const-string v4, "AppCollector timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    const-string v4, "AppCollector"

    const-string v5, "An exception occurred while getting app storage"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mSystemSize:J

    new-instance v0, Lcom/android/server/storage/DiskStatsFileLogger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v8, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    iget-wide v10, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    add-long/2addr v8, v10

    iget-wide v10, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    add-long/2addr v8, v10

    iget-wide v10, v3, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    iput-wide v4, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    iput-object v2, v0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    :try_start_3
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/storage/DiskStatsFileLogger;->dumpToFile(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "DiskStatsLogService"

    const-string v2, "Exception while writing opportunistic disk file cache."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    move v0, v7

    goto :goto_5

    :cond_1
    const-string v1, "DiskStatsLogService"

    const-string/jumbo v2, "Timed out while fetching package stats."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Lcom/android/server/storage/DiskStatsLoggingService;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_7

    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catch_3
    move-exception v1

    const-string v2, "DiskStatsLogService"

    const-string v3, "Error while measuring storage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Lcom/android/server/storage/DiskStatsLoggingService;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_2
    :goto_7
    return-void
.end method
