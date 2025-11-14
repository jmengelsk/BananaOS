.class public final Lcom/android/server/pm/pu/DexoptTrigger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEXOPT_CONCURRENCY:I


# instance fields
.field public mDexopting:Z

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mRunningApps:Ljava/util/Set;

.field public final mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

.field public mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "pm.dexopt.boot-after-mainline-update.concurrency"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    return-void
.end method

.method public static performDexopt(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Lcom/android/server/pm/pu/App;)I
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/android/server/art/model/DexoptParams$Builder;

    const-string/jumbo v3, "profile-utilization"

    invoke-direct {v2, v3}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "speed-profile"

    invoke-virtual {v2, v3}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/art/model/DexoptParams$Builder;->setPriorityClass(I)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/pu/App;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;Landroid/os/CancellationSignal;)Lcom/android/server/art/model/DexoptResult;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dexopt failed to optimize package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "PU_DexoptTrigger"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x1e

    return p0
.end method


# virtual methods
.method public final pauseOptimizing()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "PU_DexoptTrigger"

    const-string/jumbo v1, "Pause dexopting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    iget-object p0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pu/App;

    iget-object v1, v1, Lcom/android/server/pm/pu/App;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resumeOptimizing()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "PU_DexoptTrigger"

    const-string/jumbo v1, "Resume dexopting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    iget-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pu/App;

    iget-object v3, v2, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    sget-object v4, Lcom/android/server/pm/pu/App$State;->OPTIMIZING:Lcom/android/server/pm/pu/App$State;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, v2, Lcom/android/server/pm/pu/App;->mCancellationSignal:Landroid/os/CancellationSignal;

    iput-object v4, v2, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    iget-object v3, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/pu/DexoptTrigger;Lcom/android/server/pm/pu/App;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dexopt concurrency: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    const-string v2, "\nDexopting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\nRunning apps:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pu/App;

    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    if-eqz v2, :cond_1

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    invoke-virtual {p0}, Lcom/android/server/pm/pu/HotAppsWrapper;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
