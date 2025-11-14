.class public abstract Lcom/android/server/pm/pkg/PackageStateUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getEarliestFirstInstallTime(Landroid/util/SparseArray;)J
    .locals 10

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-eqz v9, :cond_1

    cmp-long v9, v7, v5

    if-gez v9, :cond_1

    move-wide v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    cmp-long p0, v5, v2

    if-nez p0, :cond_3

    return-wide v0

    :cond_3
    return-wide v5

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z
    .locals 8

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v4

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v5

    move-wide v6, p2

    move-object v0, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[I)[I
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    aget v5, p1, v2

    invoke-interface {p0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-ne v5, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_3

    aget v5, p1, v1

    invoke-interface {p0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v6

    if-ne v6, v4, :cond_2

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
