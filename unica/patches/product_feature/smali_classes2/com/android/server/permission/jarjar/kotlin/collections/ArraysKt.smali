.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;
.super Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt__ArraysJVMKt;


# direct methods
.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_f

    array-length p1, p0

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_20

    aget-object v2, p0, v1

    if-nez v2, :cond_c

    goto :goto_21

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    array-length v1, p0

    move v2, v0

    :goto_11
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v1, v2

    goto :goto_21

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_20
    const/4 v1, -0x1

    :goto_21
    if-ltz v1, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    return v0
.end method
