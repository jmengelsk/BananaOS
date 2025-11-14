.class public final Lcom/android/server/remoteappmode/RFCommServiceLauncher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBounded:Z

.field public final mConnection:Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    new-instance v0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;-><init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mConnection:Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;

    iput-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bindService(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bindService - mBounded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RFCommServiceLauncher"

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.mdx"

    const-string/jumbo v4, "com.samsung.android.mdx.windowslink.interactor.instanthotspot.HotspotRFCommService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mConnection:Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "bindService failed,"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
