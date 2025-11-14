.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/people/data/ConversationInfo;

    iget-wide v0, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method
