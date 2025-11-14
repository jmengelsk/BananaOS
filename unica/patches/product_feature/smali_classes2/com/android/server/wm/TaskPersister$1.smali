.class public final Lcom/android/server/wm/TaskPersister$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    iget-wide v0, p2, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    iget-wide p0, p1, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    if-lez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method
