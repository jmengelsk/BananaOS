.class public final synthetic Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const p1, 0xffff

    and-int/2addr p0, p1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_15

    const/16 p1, 0xa

    if-eq p0, p1, :cond_15

    const/16 p1, 0x1a

    if-eq p0, p1, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method
