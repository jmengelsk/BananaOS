.class public final Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mCount:I

.field public mTargetDurationNs:J

.field public mTimestamp:J


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    iget v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    if-ne v0, v1, :cond_11

    iget-wide v0, p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    iget-wide p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_15

    goto :goto_13

    :cond_11
    if-ge v0, v1, :cond_15

    :goto_13
    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0
.end method
