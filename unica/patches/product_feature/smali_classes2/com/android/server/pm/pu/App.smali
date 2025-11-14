.class public final Lcom/android/server/pm/pu/App;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mCancelCount:I

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mF1Score:F

.field public final mInRecentsPos:I

.field public final mInSameDayLaunchListPos:I

.field public final mInSameDayTimeListPos:I

.field public final mInSameTimeLaunchListPos:I

.field public final mInTotalLaunchListPos:I

.field public final mInTotalTimeListPos:I

.field public mLaunchTimeMs:J

.field public mOptimizedTimeMs:J

.field public mPrecision:F

.field public mRecall:F

.field public mResult:Lcom/android/server/art/model/DexoptResult;

.field public mResultingPos:I

.field public mState:Lcom/android/server/pm/pu/App$State;

.field public mWastedTimeMs:J

.field public final packageName:Ljava/lang/String;

.field public final weight:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/pm/pu/App$State;->CREATED:Lcom/android/server/pm/pu/App$State;

    iput-object v0, p0, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pu/App;->mCancellationSignal:Landroid/os/CancellationSignal;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/pu/App;->mOptimizedTimeMs:J

    iput-wide v0, p0, Lcom/android/server/pm/pu/App;->mLaunchTimeMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pu/App;->mCancelCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/pu/App;->mWastedTimeMs:J

    iput-object p3, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/server/pm/pu/App;->weight:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/pm/pu/App;->mInRecentsPos:I

    iput p1, p0, Lcom/android/server/pm/pu/App;->mInTotalTimeListPos:I

    iput p1, p0, Lcom/android/server/pm/pu/App;->mInTotalLaunchListPos:I

    iput p1, p0, Lcom/android/server/pm/pu/App;->mInSameDayTimeListPos:I

    iput p1, p0, Lcom/android/server/pm/pu/App;->mInSameDayLaunchListPos:I

    iput p1, p0, Lcom/android/server/pm/pu/App;->mInSameTimeLaunchListPos:I

    iput p1, p0, Lcom/android/server/pm/pu/App;->mResultingPos:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/pm/pu/App$State;->CREATED:Lcom/android/server/pm/pu/App$State;

    iput-object v0, p0, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pu/App;->mCancellationSignal:Landroid/os/CancellationSignal;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/pu/App;->mOptimizedTimeMs:J

    iput-wide v0, p0, Lcom/android/server/pm/pu/App;->mLaunchTimeMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pu/App;->mCancelCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/pu/App;->mWastedTimeMs:J

    iput-object p1, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/pu/App;->mInRecentsPos:I

    iput p3, p0, Lcom/android/server/pm/pu/App;->mInTotalTimeListPos:I

    iput p4, p0, Lcom/android/server/pm/pu/App;->mInTotalLaunchListPos:I

    iput p5, p0, Lcom/android/server/pm/pu/App;->mInSameDayTimeListPos:I

    iput p6, p0, Lcom/android/server/pm/pu/App;->mInSameDayLaunchListPos:I

    iput p7, p0, Lcom/android/server/pm/pu/App;->mInSameTimeLaunchListPos:I

    add-int/2addr p2, p3

    add-int/2addr p2, p4

    add-int/2addr p2, p5

    add-int/2addr p2, p6

    add-int/2addr p2, p7

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/android/server/pm/pu/App;->weight:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/pm/pu/App;->mResultingPos:I

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/pm/pu/App;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/pm/pu/App;->weight:J

    iget-wide v2, p1, Lcom/android/server/pm/pu/App;->weight:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/pu/App;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pu/App;->compareTo(Lcom/android/server/pm/pu/App;)I

    move-result p0

    return p0
.end method

.method public final dexoptResultStatusString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    if-nez v0, :cond_0

    const-string/jumbo p0, "NOT STARTED"

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UNKNOWN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "CANCELLED"

    return-object p0

    :cond_2
    const-string p0, "FAILED"

    return-object p0

    :cond_3
    const-string/jumbo p0, "PERFORMED"

    return-object p0

    :cond_4
    const-string/jumbo p0, "SKIPPED"

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/android/server/pm/pu/App;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/pm/pu/App;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pu/App;->compareTo(Lcom/android/server/pm/pu/App;)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getDex2oatWallTimeMillis()J
    .locals 8

    iget-object p0, p0, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v2, v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    add-long/2addr v2, v5

    goto :goto_0

    :cond_3
    return-wide v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/pm/pu/App;->weight:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/pm/pu/App;->weight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/pm/pu/App;->mOptimizedTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cancelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/pu/App;->mCancelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    if-eqz v1, :cond_4

    const-string v1, ", dexopt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/pu/App;->dexoptResultStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/art/ArtManagerLocal;->getDexoptStatus(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DexoptStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptStatus;->getDexContainerFileDexoptStatuses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/pu/App$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptStatus$DexContainerFileDexoptStatus;

    const-string v5, ", ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string/jumbo v5, "primaryDex="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptStatus$DexContainerFileDexoptStatus;->isPrimaryDex()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", reason="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptStatus$DexContainerFileDexoptStatus;->getCompilationReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v4, "dex2oatTimeMs="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", filter="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getActualCompilerFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
