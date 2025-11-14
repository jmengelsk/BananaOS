.class public final Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDeviceOwnerPackage:Ljava/lang/String;

.field public mDeviceOwnerUserId:I

.field public final mDeviceProvisioningPackage:Ljava/lang/String;

.field public final mOwnerProtectedPackages:Landroid/util/SparseArray;

.field public mProfileOwnerPackages:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040353

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_b

    iget-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    goto :goto_1a

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_9

    if-nez v0, :cond_12

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_12
    :try_start_12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_9

    monitor-exit p0

    return-object p1

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw p1
.end method

.method public final declared-synchronized hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_6

    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    iget v3, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v3, p1, :cond_19

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    if-eqz v1, :cond_19

    monitor-exit p0

    return v2

    :catchall_17
    move-exception p1

    goto :goto_2b

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_17

    if-eqz p1, :cond_29

    monitor-exit p0

    return v2

    :cond_29
    monitor-exit p0

    return v0

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_17

    throw p1
.end method

.method public final declared-synchronized isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :catchall_13
    move-exception p1

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0

    return p1

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_13

    throw p1
.end method

.method public final declared-synchronized isPackageProtectedForUser(ILjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1b

    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :catchall_19
    move-exception p1

    goto :goto_1e

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    monitor-exit p0

    return p1

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_19

    throw p1
.end method

.method public final isPackageStateProtected(ILjava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized isProtectedPackage(ILjava/lang/String;)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_42

    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3e

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_37

    :try_start_e
    monitor-enter p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_22

    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_39

    if-ltz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v0

    :goto_1a
    :try_start_1a
    monitor-exit p0

    if-eqz v1, :cond_24

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result p1

    goto :goto_29

    :catchall_22
    move-exception p1

    goto :goto_3c

    :cond_24
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_22

    :goto_29
    :try_start_29
    monitor-exit p0

    if-nez p1, :cond_3e

    invoke-static {}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->isKnoxGuardPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_37

    if-eqz p1, :cond_42

    goto :goto_3e

    :catchall_37
    move-exception p1

    goto :goto_40

    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p1

    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_22

    :try_start_3d
    throw p1

    :cond_3e
    :goto_3e
    move v0, v2

    goto :goto_42

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_37

    throw p1

    :cond_42
    :goto_42
    monitor-exit p0

    return v0
.end method
