.class public final synthetic Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$1;

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/PowerManagerService$1;

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$2$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v2, v0, Lcom/android/server/power/PowerManagerService;->mUseAdaptiveScreenOffTimeout:Z

    if-eq v2, p0, :cond_1

    iput-boolean p0, v0, Lcom/android/server/power/PowerManagerService;->mUseAdaptiveScreenOffTimeout:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ForegroundPackageObserver;->addObserver(Ljava/util/Observer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mForegroundPackageObserver:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    invoke-virtual {p0, v0}, Lcom/android/server/power/ForegroundPackageObserver;->deleteObserver(Ljava/util/Observer;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
