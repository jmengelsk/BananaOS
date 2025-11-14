.class public abstract Lcom/android/server/pm/pkg/PackageUserStateUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static isAvailable(Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .locals 8

    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const-wide v6, 0x100000000L

    and-long/2addr p1, v6

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-nez v5, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move p1, v1

    goto :goto_4

    :cond_4
    :goto_3
    move p1, v4

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    return p1

    :cond_7
    if-eqz p1, :cond_8

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_5
    return v4

    :cond_8
    return v1
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZLjava/lang/String;J)Z
    .locals 4

    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide v0, 0x200000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "auto_disabler"

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_4
    const-wide/32 v0, 0x8000

    and-long/2addr p4, v0

    cmp-long p4, p4, v2

    if-nez p4, :cond_5

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_0
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_9
    return p2
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZZZLjava/lang/String;J)Z
    .locals 10

    move-wide/from16 v4, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    invoke-static {p0, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_6

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZLjava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    const-wide/32 p2, 0x100000

    and-long p2, p6, p2

    cmp-long p0, p2, v6

    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const-wide/32 p0, 0x40000

    and-long p0, p6, p0

    cmp-long p0, p0, v6

    if-eqz p0, :cond_4

    if-nez p4, :cond_4

    move p0, v8

    goto :goto_1

    :cond_4
    move p0, v9

    :goto_1
    const-wide/32 p1, 0x80000

    and-long p1, p6, p1

    cmp-long p1, p1, v6

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    move p1, v8

    goto :goto_2

    :cond_5
    move p1, v9

    :goto_2
    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return v9

    :cond_7
    :goto_4
    return v8
.end method
