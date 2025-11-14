.class public final Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# instance fields
.field public mDelegateAllPermissions:Z

.field public mDelegateAndOwnerUid:I

.field public mDelegatePackage:Ljava/lang/String;

.field public mDelegatePermissions:[Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mOverridePermissionStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    return-void
.end method


# virtual methods
.method public final addOverridePermissionState(IILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    iput p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/util/ArrayMap;

    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p3, 0x7d0

    invoke-static {p0, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "com.android.shell"

    invoke-interface {p5, p1, p2, p0, v0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I
    .locals 7

    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p2, 0x7d0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "com.android.shell"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    move-object v0, p7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;)I
    .locals 5

    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "com.android.shell"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    const-string/jumbo p1, "com.android.shell"

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p1, p2, p3, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final checkUidPermission(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_0

    :try_start_0
    iget v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p3, 0x7d0

    invoke-static {p0, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "com.android.shell"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p1

    move-object v5, p5

    move-object v0, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    move-object v1, p1

    move-object v5, p5

    move-object v0, p7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .locals 14

    move-object/from16 v1, p5

    iget-object v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    iget v4, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne v3, v4, :cond_0

    move/from16 v3, p2

    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move/from16 v3, p2

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 v2, 0x7d0

    invoke-static {p0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v3, Landroid/content/AttributionSource;

    const-string/jumbo v6, "com.android.shell"

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, p0, v3, v2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v1, p1, p0, v3, v2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final hasDelegateOrOverrides()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->hasOverriddenPermissions()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final hasOverriddenPermissions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isDelegateAndOwnerUid(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isDelegateOp(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDelegatePermission(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZILcom/android/internal/util/function/NonaFunction;)Landroid/app/SyncNotedAppOp;
    .locals 13

    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne p2, v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/16 p2, 0x7d0

    invoke-static {p0, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "com.android.shell"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v7, p4

    move-object/from16 v10, p7

    move-object/from16 v3, p10

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p7

    move-object/from16 v3, p10

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .locals 12

    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result v2

    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v3, p7

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    if-ne v2, v0, :cond_1

    new-instance v3, Landroid/content/AttributionSource;

    const-string/jumbo v6, "com.android.shell"

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v10

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    if-ne v2, v0, :cond_2

    new-instance v3, Landroid/content/AttributionSource;

    const-string/jumbo v6, "com.android.shell"

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v10

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v5, p4

    move-object/from16 v1, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final removeOverridePermissionState(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    move/from16 v3, p3

    if-ne v3, v2, :cond_0

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    move/from16 v2, p2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "com.android.shell"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v6, p1

    move-object/from16 v10, p5

    move-object/from16 v14, p9

    move-object/from16 v5, p13

    invoke-interface/range {v5 .. v17}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v14, p9

    move-object/from16 v5, p13

    invoke-interface/range {v5 .. v17}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    iget v3, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    if-ne v2, v3, :cond_0

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    move/from16 v2, p2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Landroid/content/AttributionSource;

    const-string/jumbo v5, "com.android.shell"

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v10

    const/4 v4, -0x1

    const/4 v8, 0x0

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v10}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v14, p1

    move-object/from16 v19, p6

    move-object/from16 v13, p12

    invoke-interface/range {v13 .. v24}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v14, p1

    move-object/from16 v16, p3

    move-object/from16 v19, p6

    move-object/from16 v13, p12

    invoke-interface/range {v13 .. v24}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SyncNotedAppOp;

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
