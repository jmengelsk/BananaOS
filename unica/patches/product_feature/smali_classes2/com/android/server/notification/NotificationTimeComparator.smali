.class public final Lcom/android/server/notification/NotificationTimeComparator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    iget-wide p0, p1, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    iget-wide v0, p2, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method
