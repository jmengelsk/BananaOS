.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object p1, p1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
