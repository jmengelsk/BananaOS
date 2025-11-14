.class public final Lcom/android/server/wm/BlurController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBlurDisabledSetting:Z

.field public volatile mBlurEnabled:Z

.field public final mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

.field public final mContext:Landroid/content/Context;

.field public mCriticalThermalStatus:Z

.field public mInPowerSaveMode:Z

.field public final mLock:Ljava/lang/Object;

.field public mTunnelModeEnabled:Z

.field public final mTunnelModeListener:Lcom/android/server/wm/BlurController$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    new-instance v1, Lcom/android/server/wm/BlurController$1;

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/BlurController$1;-><init>(Lcom/android/server/wm/BlurController;Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;)V

    iput-object v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Lcom/android/server/wm/BlurController$1;

    iput-object p1, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/wm/BlurController$2;

    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/BlurController$2;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "disable_window_blurs"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/BlurController$3;

    invoke-direct {v5, p0}, Lcom/android/server/wm/BlurController$3;-><init>(Lcom/android/server/wm/BlurController;)V

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    new-instance p1, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BlurController;)V

    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    invoke-virtual {p2}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    invoke-static {v1}, Landroid/view/TunnelModeEnabledListener;->register(Landroid/view/TunnelModeEnabledListener;)V

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method


# virtual methods
.method public final updateBlurEnabled()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    if-ne v2, v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    iget-object v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :catch_0
    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/ICrossWindowBlurEnabledListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, v1}, Landroid/view/ICrossWindowBlurEnabledListener;->onCrossWindowBlurEnabledChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
