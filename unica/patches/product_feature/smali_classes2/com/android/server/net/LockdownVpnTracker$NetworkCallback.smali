.class public Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mNetwork:Landroid/net/Network;

.field public final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    iget-object p1, p1, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    iget-object p1, p1, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
