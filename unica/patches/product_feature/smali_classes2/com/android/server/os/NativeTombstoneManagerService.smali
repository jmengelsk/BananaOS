.class public Lcom/android/server/os/NativeTombstoneManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mManager:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 5

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManagerService;->mManager:Lcom/android/server/os/NativeTombstoneManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/os/NativeTombstoneManager$1;-><init>(Lcom/android/server/os/NativeTombstoneManager;I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/server/os/NativeTombstoneManager$1;-><init>(Lcom/android/server/os/NativeTombstoneManager;I)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    sget-object p1, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter;->init()V

    new-instance p1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/NativeTombstoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManagerService;->mManager:Lcom/android/server/os/NativeTombstoneManager;

    const-class p0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
