.class public final Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final buildTvInputList([Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v3, v2, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_20

    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_2c

    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    :cond_2a
    monitor-exit v1

    return-void

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_1e

    throw p0
.end method

.method public final onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    return-void
.end method

.method public final onPackagesAvailable([Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final onPackagesUnavailable([Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final onSomePackagesChanged()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;->buildTvInputList([Ljava/lang/String;)V

    return-void
.end method
