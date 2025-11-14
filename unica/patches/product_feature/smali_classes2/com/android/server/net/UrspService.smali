.class public final Lcom/android/server/net/UrspService;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/net/UrspService$UrspHandler;

.field public final mUidRemovedReceiver:Lcom/android/server/net/UrspService$1;

.field public final mUserRemovedReceiver:Lcom/android/server/net/UrspService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v1, Lcom/android/server/net/UrspService$1;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/server/net/UrspService$1;-><init>(Lcom/android/server/net/UrspService;I)V

    iput-object v1, p0, Lcom/android/server/net/UrspService;->mUidRemovedReceiver:Lcom/android/server/net/UrspService$1;

    new-instance v6, Lcom/android/server/net/UrspService$1;

    const/4 v0, 0x1

    invoke-direct {v6, p0, v0}, Lcom/android/server/net/UrspService$1;-><init>(Lcom/android/server/net/UrspService;I)V

    iput-object v6, p0, Lcom/android/server/net/UrspService;->mUserRemovedReceiver:Lcom/android/server/net/UrspService$1;

    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "UrspService"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v2, Lcom/android/server/net/UrspService$UrspHandler;

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspService;->mHandler:Lcom/android/server/net/UrspService$UrspHandler;

    const-string/jumbo p1, "android.intent.action.UID_REMOVED"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mHandler:Lcom/android/server/net/UrspService$UrspHandler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo p1, "android.intent.action.USER_REMOVED"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/net/UrspService;->mHandler:Lcom/android/server/net/UrspService$UrspHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
