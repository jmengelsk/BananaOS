.class public final Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    :cond_0
    return-void
.end method

.method public final work()V
    .locals 0

    return-void
.end method
