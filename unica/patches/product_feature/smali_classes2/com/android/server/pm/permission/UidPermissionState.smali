.class public final Lcom/android/server/pm/permission/UidPermissionState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mMissing:Z

.field public mPermissions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/UidPermissionState;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v0, :cond_42

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_42

    iget-object v2, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionState;

    iget-object v4, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/pm/permission/PermissionState;

    iget-object v6, v3, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-direct {v5, v6}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    iget-boolean v6, v3, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    iput-boolean v6, v5, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    iget v3, v3, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    iput v3, v5, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_42
    return-void
.end method


# virtual methods
.method public final getGrantedPermissions()Ljava/util/Set;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_7

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_7
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_33

    iget-object v3, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionState;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_33
    return-object v0
.end method

.method public final getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    :cond_b
    iget-object v0, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionState;

    if-nez v1, :cond_23

    new-instance v1, Lcom/android/server/pm/permission/PermissionState;

    invoke-direct {v1, p1}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object v1
.end method

.method public final getPermissionFlags(Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result p0

    return p0
.end method

.method public final getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionState;

    return-object p0
.end method

.method public final getPermissionStates()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_7

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final grantPermission(Lcom/android/server/pm/permission/Permission;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->grant()Z

    move-result p0

    return p0
.end method

.method public final hasPermissionState(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isPermissionGranted(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final removePermissionState(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_1a

    iget-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    :cond_1a
    return v1
.end method

.method public final revokePermission(Lcom/android/server/pm/permission/Permission;)Z
    .registers 6

    iget-object p1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-boolean v3, v0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-nez v3, :cond_17

    monitor-exit v2

    goto :goto_1e

    :catchall_15
    move-exception p0

    goto :goto_2a

    :cond_17
    iput-boolean v1, v0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_15

    const/4 v1, 0x1

    :goto_1e
    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :cond_29
    return v1

    :goto_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_15

    throw p0
.end method

.method public final updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    .registers 5

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-object p1, p1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :cond_1b
    return p2
.end method
