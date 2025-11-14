.class public final Lcom/android/server/pm/Installer$Batch;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mArgs:Ljava/util/List;

.field public mExecuted:Z

.field public final mFutures:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception p1

    goto :goto_22

    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_1a

    throw p1
.end method

.method public final declared-synchronized execute(Lcom/android/server/pm/Installer;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_91

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    iget-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_8f

    sub-int v3, v0, v2

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [Landroid/os/CreateAppDataArgs;

    move v5, v1

    :goto_1f
    if-ge v5, v3, :cond_34

    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    add-int v7, v2, v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/CreateAppDataArgs;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :catchall_32
    move-exception p1

    goto :goto_97

    :cond_34
    invoke-virtual {p1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_50

    new-array v3, v3, [Landroid/os/CreateAppDataResult;

    new-instance v4, Landroid/os/CreateAppDataResult;

    invoke-direct {v4}, Landroid/os/CreateAppDataResult;-><init>()V

    const-wide/16 v7, -0x1

    iput-wide v7, v4, Landroid/os/CreateAppDataResult;->ceDataInode:J

    iput-wide v7, v4, Landroid/os/CreateAppDataResult;->deDataInode:J

    iput v1, v4, Landroid/os/CreateAppDataResult;->exceptionCode:I

    iput-object v6, v4, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_60

    :cond_50
    move v5, v1

    :goto_51
    if-ge v5, v3, :cond_5a

    aget-object v7, v4, v5

    iput v1, v7, Landroid/os/CreateAppDataArgs;->previousAppId:I
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_32

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_5a
    :try_start_5a
    iget-object v3, p1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v3, v4}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v3
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_60} :catch_8a
    .catchall {:try_start_5a .. :try_end_60} :catchall_32

    :goto_60
    move v4, v1

    :goto_61
    :try_start_61
    array-length v5, v3

    if-ge v4, v5, :cond_87

    aget-object v5, v3, v4

    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    add-int v7, v2, v4

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletableFuture;

    iget v7, v5, Landroid/os/CreateAppDataResult;->exceptionCode:I

    if-nez v7, :cond_7a

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_7a
    new-instance v7, Lcom/android/server/pm/Installer$InstallerException;

    iget-object v5, v5, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    invoke-direct {v7, v5}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_87
    add-int/lit16 v2, v2, 0x100

    goto :goto_12

    :catch_8a
    move-exception p1

    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v6
    :try_end_8f
    .catchall {:try_start_61 .. :try_end_8f} :catchall_32

    :cond_8f
    monitor-exit p0

    return-void

    :cond_91
    :try_start_91
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_32

    throw p1
.end method
