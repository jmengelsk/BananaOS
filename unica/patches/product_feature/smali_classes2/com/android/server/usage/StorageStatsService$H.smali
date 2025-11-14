.class public final Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mPreviousBytes:J

.field public final mStats:Landroid/os/StatFs;

.field public final mTotalBytes:J

.field public final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    return-void
.end method

.method public static recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    :goto_0
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CacheQuotaStrategy"

    if-nez v0, :cond_1

    const-string/jumbo v0, "could not access the cache quota service: no package!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "android.app.usage.CacheQuotaService"

    invoke-static {v3, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x84

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string/jumbo v0, "No valid components found."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Lcom/android/server/storage/CacheQuotaStrategy$1;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public final getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .locals 4

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    return-object v1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x7530

    const/16 v2, 0x64

    const-wide/32 v3, 0x2255100

    const/16 v5, 0x66

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1

    :goto_0
    const-string/jumbo v7, "StorageStatsService"

    const-string v8, "Cache quota XML file is malformed?"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string/jumbo v7, "StorageStatsService"

    const-string v8, "An error occurred while reading the cache quota file."

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    :cond_1
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/usage/StorageStatsService$H;->mTotalBytes:J

    iget-object v9, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    iget v9, v9, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    const-wide/16 v11, 0x64

    div-long/2addr v9, v11

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    const-wide/16 v5, 0x5

    mul-long/2addr v7, v5

    div-long/2addr v7, v11

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    const-wide/16 v5, 0x2

    mul-long/2addr v7, v5

    div-long/2addr v7, v11

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v3, v7

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "content://com.android.externalstorage.documents/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_3
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :goto_5
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
