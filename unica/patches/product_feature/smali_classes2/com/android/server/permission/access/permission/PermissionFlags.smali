.class public abstract Lcom/android/server/permission/access/permission/PermissionFlags;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static isAppOpGranted(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0xc0000

    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x100000

    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isPermissionGranted(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x400

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x800

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v0, 0x40000

    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public static toApiFlags(I)I
    .locals 6

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/16 v1, 0x40

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v2, 0x80

    invoke-static {p0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/16 v3, 0x100

    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    const/16 v3, 0x200

    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    const/16 v3, 0x1000

    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x400

    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    :cond_5
    const/16 v1, 0x2000

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x100

    :cond_6
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x200

    :cond_7
    const v1, 0x8000

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_8

    or-int/lit16 v0, v0, 0x800

    :cond_8
    const/high16 v2, 0x10000

    invoke-static {p0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_9

    or-int/lit16 v0, v0, 0x1000

    :cond_9
    const/high16 v3, 0x20000

    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_a

    or-int/lit16 v0, v0, 0x2000

    :cond_a
    const/high16 v4, 0x40000

    invoke-static {p0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    const/high16 v5, 0x80000

    if-nez v4, :cond_b

    invoke-static {p0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    or-int/lit16 v0, v0, 0x4000

    :cond_c
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_d

    or-int/2addr v0, v1

    :cond_d
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x8

    :cond_e
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/2addr v0, v2

    :cond_f
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/2addr v0, v3

    :cond_10
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_11

    or-int p0, v0, v5

    return p0

    :cond_11
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p0, :cond_5

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    not-int v3, v1

    and-int/2addr p0, v3

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    sparse-switch v1, :sswitch_data_0

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "toString(...)"

    if-ltz v1, :cond_1

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    ushr-long v7, v3, v2

    int-to-long v9, v5

    div-long/2addr v7, v9

    shl-long v1, v7, v2

    mul-long v7, v1, v9

    sub-long/2addr v3, v7

    cmp-long v7, v3, v9

    if-ltz v7, :cond_2

    sub-long/2addr v3, v9

    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    :cond_2
    invoke-static {v1, v2, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toUpperCase(...)"

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "0x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_0
    const-string/jumbo v1, "USER_SELECTED"

    goto :goto_2

    :sswitch_1
    const-string v1, "HIBERNATION"

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "ONE_TIME"

    goto :goto_2

    :sswitch_3
    const-string v1, "APP_OP_REVOKED"

    goto :goto_2

    :sswitch_4
    const-string/jumbo v1, "SOFT_RESTRICTED"

    goto :goto_2

    :sswitch_5
    const-string/jumbo v1, "RESTRICTION_REVOKED"

    goto :goto_2

    :sswitch_6
    const-string/jumbo v1, "UPGRADE_EXEMPT"

    goto :goto_2

    :sswitch_7
    const-string/jumbo v1, "SYSTEM_EXEMPT"

    goto :goto_2

    :sswitch_8
    const-string v1, "INSTALLER_EXEMPT"

    goto :goto_2

    :sswitch_9
    const-string/jumbo v1, "USER_SENSITIVE_WHEN_REVOKED"

    goto :goto_2

    :sswitch_a
    const-string/jumbo v1, "USER_SENSITIVE_WHEN_GRANTED"

    goto :goto_2

    :sswitch_b
    const-string v1, "IMPLICIT"

    goto :goto_2

    :sswitch_c
    const-string v1, "IMPLICIT_GRANTED"

    goto :goto_2

    :sswitch_d
    const-string v1, "LEGACY_GRANTED"

    goto :goto_2

    :sswitch_e
    const-string/jumbo v1, "PREGRANT"

    goto :goto_2

    :sswitch_f
    const-string/jumbo v1, "SYSTEM_FIXED"

    goto :goto_2

    :sswitch_10
    const-string/jumbo v1, "POLICY_FIXED"

    goto :goto_2

    :sswitch_11
    const-string/jumbo v1, "USER_FIXED"

    goto :goto_2

    :sswitch_12
    const-string/jumbo v1, "USER_SET"

    goto :goto_2

    :sswitch_13
    const-string/jumbo v1, "RUNTIME_GRANTED"

    goto :goto_2

    :sswitch_14
    const-string/jumbo v1, "ROLE"

    goto :goto_2

    :sswitch_15
    const-string/jumbo v1, "PROTECTION_GRANTED"

    goto :goto_2

    :cond_3
    const-string v1, "INSTALL_REVOKED"

    goto :goto_2

    :cond_4
    const-string v1, "INSTALL_GRANTED"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_15
        0x8 -> :sswitch_14
        0x10 -> :sswitch_13
        0x20 -> :sswitch_12
        0x40 -> :sswitch_11
        0x80 -> :sswitch_10
        0x100 -> :sswitch_f
        0x200 -> :sswitch_e
        0x400 -> :sswitch_d
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_4
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
        0x400000 -> :sswitch_1
        0x800000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I
    .locals 5

    invoke-static {p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v0

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p2, p3

    or-int/2addr p2, v0

    and-int/lit8 p3, p1, 0x7

    const v0, 0x8000

    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 p3, p3, 0x8

    :cond_0
    and-int/lit8 v1, p1, 0x10

    or-int/2addr p3, v1

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 p3, p3, 0x20

    :cond_1
    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 p3, p3, 0x40

    :cond_2
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit16 p3, p3, 0x80

    :cond_3
    const/16 v2, 0x10

    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit16 p3, p3, 0x100

    :cond_4
    const/16 v2, 0x20

    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit16 p3, p3, 0x200

    :cond_5
    and-int/lit16 v2, p1, 0x400

    or-int/2addr p3, v2

    const/16 v2, 0x800

    and-int/2addr p1, v2

    or-int/2addr p1, p3

    const/16 p3, 0x40

    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-nez p3, :cond_6

    const/16 p3, 0x80

    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    or-int/lit16 p1, p1, 0x1000

    :cond_7
    const/16 p3, 0x100

    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_8

    or-int/lit16 p1, p1, 0x2000

    :cond_8
    const/16 p3, 0x200

    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_9

    or-int/lit16 p1, p1, 0x4000

    :cond_9
    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_a

    or-int/2addr p1, v0

    :cond_a
    const/16 p3, 0x1000

    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/high16 v0, 0x10000

    if-eqz p3, :cond_b

    or-int/2addr p1, v0

    :cond_b
    const/16 p3, 0x2000

    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/high16 v2, 0x20000

    if-eqz p3, :cond_c

    or-int/2addr p1, v2

    :cond_c
    const/16 p3, 0x4000

    invoke-static {p2, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/16 v3, 0x8

    const/high16 v4, 0x80000

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget p3, p3, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_d

    const/high16 p3, 0x40000

    or-int/2addr p1, p3

    :cond_d
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_e

    or-int/2addr p1, v4

    :cond_e
    invoke-static {p2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_f

    const/high16 p0, 0x100000

    or-int/2addr p1, p0

    :cond_f
    invoke-static {p2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_10

    const/high16 p0, 0x200000

    or-int/2addr p1, p0

    :cond_10
    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_11

    const/high16 p0, 0x400000

    or-int/2addr p1, p0

    :cond_11
    invoke-static {p2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_12

    const/high16 p0, 0x800000

    or-int/2addr p0, p1

    return p0

    :cond_12
    return p1
.end method
