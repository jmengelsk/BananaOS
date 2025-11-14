.class public final Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-eq p0, v2, :cond_15

    const/16 v2, 0x1e

    if-eq p0, v2, :cond_d

    return v1

    :cond_d
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v0

    :cond_15
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p1

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2f

    :try_start_24
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    return v0

    :catchall_2f
    move-exception p0

    goto :goto_6b

    :catchall_31
    move-exception p0

    goto :goto_69

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_31

    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_2f

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    array-length p1, v3

    :goto_5a
    if-ge v1, p1, :cond_68

    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v4, v5, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_68
    return v0

    :goto_69
    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_31

    :try_start_6a
    throw p0

    :goto_6b
    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_2f

    throw p0
.end method
