.class public final Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->this$0:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    iput-object p2, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    sget-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    if-eqz v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;->this$0:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    iput-object v1, v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    return-void
.end method
