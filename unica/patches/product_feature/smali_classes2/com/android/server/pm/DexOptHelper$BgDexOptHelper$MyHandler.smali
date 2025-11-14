.class public final Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->reachedToThermalThrottleLevel()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    const-string v1, "Canceling bg dexopt by thermal throttling"

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    const-string v1, "Cancel bg dexopt job"

    const-string v2, "BgDexOptHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {p1}, Lcom/android/server/art/ArtManagerLocal;->cancelBackgroundDexoptJob()V

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    const-string/jumbo p1, "Stop observing thermal"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    iget-boolean p1, p1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
