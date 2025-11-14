.class public abstract Lcom/android/server/permission/access/util/PackageVersionMigration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I
    .locals 8

    const-class v0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->getLegacyPermissionStateVersion(I)I

    move-result p0

    const-class v0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getLegacyAppOpVersion()I

    move-result v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "getVersion() called when there are no legacy files"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v2, 0xb

    const/4 v3, 0x3

    if-lt p0, v2, :cond_2

    if-lt v0, v3, :cond_2

    const/16 p0, 0xf

    return p0

    :cond_2
    const/16 v4, 0xa

    if-lt p0, v4, :cond_3

    if-lt v0, v3, :cond_3

    const/16 p0, 0xe

    return p0

    :cond_3
    const/4 v5, 0x1

    if-lt p0, v4, :cond_4

    if-lt v0, v5, :cond_4

    const/16 p0, 0xd

    return p0

    :cond_4
    const/16 v6, 0x9

    if-lt p0, v6, :cond_5

    if-lt v0, v5, :cond_5

    const/16 p0, 0xc

    return p0

    :cond_5
    const/16 v7, 0x8

    if-lt p0, v7, :cond_6

    if-lt v0, v5, :cond_6

    return v2

    :cond_6
    const/4 v2, 0x7

    if-lt p0, v2, :cond_7

    if-lt v0, v5, :cond_7

    return v4

    :cond_7
    const/4 v4, 0x6

    if-lt p0, v4, :cond_8

    if-lt v0, v5, :cond_8

    return v6

    :cond_8
    const/4 v6, 0x5

    if-lt p0, v6, :cond_9

    if-lt v0, v5, :cond_9

    return v7

    :cond_9
    const/4 v7, 0x4

    if-lt p0, v7, :cond_a

    if-lt v0, v5, :cond_a

    return v2

    :cond_a
    if-lt p0, v3, :cond_b

    if-lt v0, v5, :cond_b

    return v4

    :cond_b
    const/4 v2, 0x2

    if-lt p0, v2, :cond_c

    if-lt v0, v5, :cond_c

    return v6

    :cond_c
    if-lt p0, v5, :cond_d

    if-lt v0, v5, :cond_d

    return v7

    :cond_d
    if-ltz p0, :cond_e

    if-lt v0, v5, :cond_e

    return v3

    :cond_e
    if-ltz p0, :cond_f

    if-ltz v0, :cond_f

    return v2

    :cond_f
    if-lt p0, v1, :cond_10

    if-ltz v0, :cond_10

    return v5

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
