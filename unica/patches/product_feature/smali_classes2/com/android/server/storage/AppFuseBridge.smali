.class public Lcom/android/server/storage/AppFuseBridge;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final APPFUSE_MOUNT_NAME_TEMPLATE:Ljava/lang/String; = "/mnt/appfuse/%d_%d"

.field public static final TAG:Ljava/lang/String; = "AppFuseBridge"


# instance fields
.field public mNativeLoop:J

.field public final mScopes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/storage/AppFuseBridge$MountScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    return-void
.end method

.method private native native_add_bridge(JII)I
.end method

.method private native native_delete(J)V
.end method

.method private native native_lock()V
.end method

.method private native native_new()J
.end method

.method private native native_start_loop(J)V
.end method

.method private native native_unlock()V
.end method


# virtual methods
.method public final addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Lcom/android/server/AppFuseMountException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_lock()V

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_76

    :try_start_4
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-wide v2, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6c

    iget v0, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    move-object v4, p1

    check-cast v4, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    const-string v5, "#open might be slow"

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_59

    :try_start_27
    iget-object v5, v4, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v5, v5, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    iget v7, v4, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-interface {v5, v6, v7}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v5

    iput-boolean v1, v4, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mMounted:Z

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v5}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3a} :catch_63
    .catchall {:try_start_27 .. :try_end_3a} :catchall_59

    :try_start_3a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_add_bridge(JII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5b

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_59

    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_unlock()V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catchall_59
    move-exception v0

    goto :goto_74

    :cond_5b
    :try_start_5b
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v0

    :catch_63
    move-exception v0

    new-instance v1, Lcom/android/server/AppFuseMountException;

    const-string v2, "Failed to mount"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6c
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v0

    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_59

    :try_start_75
    throw v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_unlock()V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public final declared-synchronized onClosed(I)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    if-eqz v0, :cond_2b

    iget-object v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    goto :goto_20

    :cond_18
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    iget-object v1, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_20
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception p1

    goto :goto_2d

    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_29

    throw p1
.end method

.method public final declared-synchronized onMount(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/storage/AppFuseBridge$MountScope;

    if-eqz p1, :cond_20

    iget-object v0, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    goto :goto_20

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    iget-object p1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public final openFile(III)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    if-eqz v0, :cond_47

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_45

    iget-object p0, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMounted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-boolean p0, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mMountResult:Z

    if-eqz p0, :cond_3f

    :try_start_15
    invoke-static {p3}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    move-result p0

    check-cast v0, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    const-string p3, "#openFile might be slow"

    invoke-static {p3}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V
    :try_end_20
    .catch Lcom/android/server/AppFuseMountException; {:try_start_15 .. :try_end_20} :catch_39

    :try_start_20
    new-instance p3, Landroid/os/ParcelFileDescriptor;

    iget-object v1, v0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v0, v0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    invoke-interface {v1, v0, p1, p2, p0}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2f} :catch_30

    return-object p3

    :catch_30
    move-exception p0

    :try_start_31
    new-instance p2, Lcom/android/server/AppFuseMountException;

    const-string p3, "Failed to open"

    invoke-direct {p2, p3, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_39
    .catch Lcom/android/server/AppFuseMountException; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    new-instance p0, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {p0, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw p0

    :cond_3f
    new-instance p0, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {p0, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw p0

    :catchall_45
    move-exception p1

    goto :goto_4d

    :cond_47
    :try_start_47
    new-instance p2, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {p2, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw p2

    :goto_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_45

    throw p1
.end method

.method public final run()V
    .registers 3

    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_start_loop(J)V

    monitor-enter p0

    :try_start_6
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_delete(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method
