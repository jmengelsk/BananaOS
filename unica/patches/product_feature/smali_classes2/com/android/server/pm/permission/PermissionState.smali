.class public final Lcom/android/server/pm/permission/PermissionState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mFlags:I

.field public mGranted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPermission:Lcom/android/server/pm/permission/Permission;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/Permission;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-void
.end method


# virtual methods
.method public final getFlags()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final grant()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    goto :goto_14

    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    monitor-exit v0

    return v1

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_a

    throw p0
.end method

.method public final isDefault()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-nez v1, :cond_f

    iget p0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final isGranted()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final updateFlags(II)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    and-int/2addr p2, p1

    :try_start_4
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-eq p1, v1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw p0
.end method
