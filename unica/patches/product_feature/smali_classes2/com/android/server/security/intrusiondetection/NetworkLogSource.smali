.class public final Lcom/android/server/security/intrusiondetection/NetworkLogSource;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/security/intrusiondetection/DataSource;


# instance fields
.field public final mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field public mId:J

.field public final mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field public final mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mNetdEventCallback:Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;

.field public final mPm:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;-><init>(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mNetdEventCallback:Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mPm:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    const-string/jumbo p1, "connmetrics"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "IntrusionDetectionEvent NetworkLogSource"

    if-nez v0, :cond_0

    const-string/jumbo p0, "Network logging is already disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "Failed to disable network logging; invalid callback"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string v0, "Failed to disable network logging; "

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final enable()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "IntrusionDetectionEvent NetworkLogSource"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "Network logging is already enabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mNetdEventCallback:Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "Failed to enable network logging; invalid callback"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string v0, "Failed to enable network logging; "

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
