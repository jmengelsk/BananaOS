.class public final Lcom/android/server/storage/DeviceStorageMonitorService$State;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static isExhaustion:Z


# instance fields
.field public lastUsableBytes:J

.field public level:I


# direct methods
.method public static -$$Nest$smisEntering(III)Z
    .registers 3

    if-lt p2, p0, :cond_9

    if-lt p1, p0, :cond_7

    const/4 p0, -0x1

    if-ne p1, p0, :cond_9

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static -$$Nest$smisLeaving(III)Z
    .registers 3

    if-ge p2, p0, :cond_9

    if-ge p1, p0, :cond_7

    const/4 p0, -0x1

    if-ne p1, p0, :cond_9

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static -$$Nest$smlevelToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_27

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "FULL"

    return-object p0

    :cond_19
    const-string p0, "LOW"

    return-object p0

    :cond_1c
    const-string/jumbo p0, "WARNING"

    return-object p0

    :cond_20
    const-string p0, "CAUTION"

    return-object p0

    :cond_23
    const-string/jumbo p0, "NORMAL"

    return-object p0

    :cond_27
    const-string/jumbo p0, "UNKNOWN"

    return-object p0
.end method
