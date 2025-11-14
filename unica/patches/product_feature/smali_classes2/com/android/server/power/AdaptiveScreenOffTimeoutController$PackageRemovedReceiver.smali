.class public final Lcom/android/server/power/AdaptiveScreenOffTimeoutController$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AdaptiveScreenOffTimeoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$PackageRemovedReceiver;->this$0:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.samsung.android.displayassistant"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$PackageRemovedReceiver;->this$0:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    iget-object p1, p1, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$PackageRemovedReceiver;->this$0:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    iget-object p0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mAdaptiveScreenOffTimeoutMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
