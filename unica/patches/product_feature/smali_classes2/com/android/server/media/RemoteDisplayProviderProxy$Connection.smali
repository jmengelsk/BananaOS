.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

.field public final mProvider:Landroid/media/IRemoteDisplayProvider;

.field public final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    new-instance p1, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-direct {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
