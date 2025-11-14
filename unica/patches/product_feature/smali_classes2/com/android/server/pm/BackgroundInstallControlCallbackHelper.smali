.class public final Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "BackgroundInstallControlCallbackHelperBg"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final notifyAllCallbacks(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p3, "userId"

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "installEventType"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;Landroid/os/Bundle;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
