.class public final Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;
.super Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0, p1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .registers 2

    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    iget-object p1, p1, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method
