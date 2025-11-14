.class public final Lcom/android/server/pm/pu/HotAppsWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mApps:Ljava/util/List;

.field public mBestF1Precision:F

.field public mBestF1PrefixCount:I

.field public mBestF1Recall:F

.field public mBestF1Score:F

.field public final mGeneratedApps:Ljava/util/Set;

.field public mLaunchedAppCount:I

.field public final mLaunchedApps:Ljava/util/Map;

.field public mPredictedAndLaunchedAppCount:I

.field public mPredictedAppCount:I

.field public final mService:Lcom/android/server/pm/pu/ProfileUtilizationService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/ProfileUtilizationService;Ljava/util/List;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedApps:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Score:F

    iput v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Precision:F

    iput v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1Recall:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mBestF1PrefixCount:I

    iput v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mLaunchedAppCount:I

    iput v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAppCount:I

    iput v0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mPredictedAndLaunchedAppCount:I

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p3, p1, :cond_26

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    :cond_26
    invoke-interface {p2, v0, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mGeneratedApps:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final aggregateWith(Ljava/util/function/Function;)J
    .registers 6

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pu/App;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_8

    :cond_20
    return-wide v0
.end method

.method public final countDexoptStatus(I)I
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pu/App;

    iget-object v1, v1, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    if-nez v1, :cond_18

    goto :goto_7

    :cond_18
    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v1

    if-ne v1, p1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_21
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "Hot apps list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pu/App;

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
