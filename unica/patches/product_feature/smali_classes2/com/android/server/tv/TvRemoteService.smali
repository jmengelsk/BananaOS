.class public Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {v1, p1, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method


# virtual methods
.method public final monitor()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final onBootPhase(I)V
    .registers 12

    const/16 v0, 0x258

    if-ne p1, v0, :cond_3c

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    iget-boolean p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez p1, :cond_3c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    const-string/jumbo p1, "android.intent.action.PACKAGE_ADDED"

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    const-string/jumbo v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    const-string/jumbo p1, "package"

    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    invoke-virtual {v9, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method
