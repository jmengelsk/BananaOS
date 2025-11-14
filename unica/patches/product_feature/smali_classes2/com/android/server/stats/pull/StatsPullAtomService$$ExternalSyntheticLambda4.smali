.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkTemplate;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkTemplate;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;->f$0:Landroid/net/NetworkTemplate;

    iput-boolean p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;->f$0:Landroid/net/NetworkTemplate;

    iget-boolean p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;->f$1:Z

    check-cast p1, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    iget-object v1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean p1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
