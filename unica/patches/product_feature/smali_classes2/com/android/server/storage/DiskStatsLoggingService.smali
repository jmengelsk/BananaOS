.class public Lcom/android/server/storage/DiskStatsLoggingService;
.super Landroid/app/job/JobService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sDiskStatsLoggingService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/storage/DiskStatsLoggingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static isDumpsysTaskEnabled(Landroid/content/ContentResolver;)Z
    .registers 3

    const-string/jumbo v0, "enable_diskstats_logging"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_b

    return v1

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 11

    const-string/jumbo v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    const/4 v2, 0x1

    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/storage/DiskStatsLoggingService;->isDumpsysTaskEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_8f

    :cond_20
    invoke-virtual {p0}, Landroid/app/job/JobService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    new-instance v1, Lcom/android/server/storage/AppCollector;

    invoke-direct {v1, p0, v0}, Lcom/android/server/storage/AppCollector;-><init>(Lcom/android/server/storage/DiskStatsLoggingService;Landroid/os/storage/VolumeInfo;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    new-instance v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;

    invoke-direct {v0}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mDownloadsDirectory:Ljava/io/File;

    sget-object v3, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    const-string/jumbo v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    const-wide/16 v5, 0x0

    if-nez v3, :cond_62

    goto :goto_78

    :cond_62
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_69

    goto :goto_78

    :cond_69
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v3

    sub-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gtz v7, :cond_77

    goto :goto_78

    :cond_77
    move-wide v5, v3

    :goto_78
    iput-wide v5, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mSystemSize:J

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/diskstats_cache.json"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    iput-object v1, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mCollector:Lcom/android/server/storage/AppCollector;

    iput-object p0, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Lcom/android/server/storage/DiskStatsLoggingService;

    iput-object p1, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    iput-object p0, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mContext:Lcom/android/server/storage/DiskStatsLoggingService;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_8f
    :goto_8f
    invoke-virtual {p0, p1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
