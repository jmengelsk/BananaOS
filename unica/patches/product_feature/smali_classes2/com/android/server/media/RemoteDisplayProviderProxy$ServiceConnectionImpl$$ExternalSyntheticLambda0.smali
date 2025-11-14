.class public final synthetic Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;

    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RemoteDisplayProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-eqz v1, :cond_79

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    invoke-static {p0}, Landroid/media/IRemoteDisplayProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayProvider;

    move-result-object p0

    if-eqz p0, :cond_65

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-direct {v1, v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V

    :try_start_32
    invoke-interface {p0}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-interface {p0, v3}, Landroid/media/IRemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    iget-object p0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4a} :catch_4d

    iput-object v1, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    return-void

    :catch_4d
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->binderDied()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Registration failed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service returned invalid remote display provider binder"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    return-void
.end method
