.class public abstract Lcom/android/server/permission/access/util/PackageVersionMigration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I
    .registers 9

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

    if-ne p0, v1, :cond_27

    if-eq v0, v1, :cond_1e

    goto :goto_27

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "getVersion() called when there are no legacy files"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    :goto_27
    const/16 v2, 0xb

    const/4 v3, 0x3

    if-lt p0, v2, :cond_31

    if-lt v0, v3, :cond_31

    const/16 p0, 0xf

    return p0

    :cond_31
    const/16 v4, 0xa

    if-lt p0, v4, :cond_3a

    if-lt v0, v3, :cond_3a

    const/16 p0, 0xe

    return p0

    :cond_3a
    const/4 v5, 0x1

    if-lt p0, v4, :cond_42

    if-lt v0, v5, :cond_42

    const/16 p0, 0xd

    return p0

    :cond_42
    const/16 v6, 0x9

    if-lt p0, v6, :cond_4b

    if-lt v0, v5, :cond_4b

    const/16 p0, 0xc

    return p0

    :cond_4b
    const/16 v7, 0x8

    if-lt p0, v7, :cond_52

    if-lt v0, v5, :cond_52

    return v2

    :cond_52
    const/4 v2, 0x7

    if-lt p0, v2, :cond_58

    if-lt v0, v5, :cond_58

    return v4

    :cond_58
    const/4 v4, 0x6

    if-lt p0, v4, :cond_5e

    if-lt v0, v5, :cond_5e

    return v6

    :cond_5e
    const/4 v6, 0x5

    if-lt p0, v6, :cond_64

    if-lt v0, v5, :cond_64

    return v7

    :cond_64
    const/4 v7, 0x4

    if-lt p0, v7, :cond_6a

    if-lt v0, v5, :cond_6a

    return v2

    :cond_6a
    if-lt p0, v3, :cond_6f

    if-lt v0, v5, :cond_6f

    return v4

    :cond_6f
    const/4 v2, 0x2

    if-lt p0, v2, :cond_75

    if-lt v0, v5, :cond_75

    return v6

    :cond_75
    if-lt p0, v5, :cond_7a

    if-lt v0, v5, :cond_7a

    return v7

    :cond_7a
    if-ltz p0, :cond_7f

    if-lt v0, v5, :cond_7f

    return v3

    :cond_7f
    if-ltz p0, :cond_84

    if-ltz v0, :cond_84

    return v2

    :cond_84
    if-lt p0, v1, :cond_89

    if-ltz v0, :cond_89

    return v5

    :cond_89
    const/4 p0, 0x0

    return p0
.end method
