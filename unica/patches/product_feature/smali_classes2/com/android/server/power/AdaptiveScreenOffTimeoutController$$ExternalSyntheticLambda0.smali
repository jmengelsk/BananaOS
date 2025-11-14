.class public final synthetic Lcom/android/server/power/AdaptiveScreenOffTimeoutController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

.field public final synthetic f$1:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/AdaptiveScreenOffTimeoutController;Landroid/content/IntentFilter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    iput-object p2, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$$ExternalSyntheticLambda0;->f$1:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    iget-object p0, p0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$$ExternalSyntheticLambda0;->f$1:Landroid/content/IntentFilter;

    iget-object v1, v0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$PackageRemovedReceiver;

    invoke-direct {v2, v0}, Lcom/android/server/power/AdaptiveScreenOffTimeoutController$PackageRemovedReceiver;-><init>(Lcom/android/server/power/AdaptiveScreenOffTimeoutController;)V

    iget-object v0, v0, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
