.class public final Lcom/android/server/media/MediaRoute2ProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-boolean p1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Received package manager broadcast: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "MR2ProviderWatcher"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
