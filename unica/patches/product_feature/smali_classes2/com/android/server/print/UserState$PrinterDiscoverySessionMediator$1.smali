.class public final Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;
.super Landroid/os/RemoteCallbackList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/UserState$1;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 2

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    iget-object v0, v0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$1;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    iget-object p0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;->this$1:Lcom/android/server/print/UserState$1;

    iget-object v1, p0, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/UserState$1;->destroyLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
