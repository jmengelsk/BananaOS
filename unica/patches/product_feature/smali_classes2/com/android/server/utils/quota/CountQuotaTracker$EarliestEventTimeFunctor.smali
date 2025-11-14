.class public final Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public earliestTimeElapsed:J


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/util/LongArrayQueue;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    :cond_17
    return-void
.end method
