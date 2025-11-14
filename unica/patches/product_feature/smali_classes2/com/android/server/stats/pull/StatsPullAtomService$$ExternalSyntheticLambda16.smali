.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    check-cast p1, Lcom/android/server/stats/pull/netstats/SubInfo;

    iget p1, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    check-cast p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    check-cast p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    sget v2, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-object v3, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget-boolean v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    iget v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    if-ne v2, v3, :cond_1

    iget-boolean p1, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    iget-boolean p0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
