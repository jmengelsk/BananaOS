.class public final synthetic Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/os/NativeTombstoneManager;

.field public final synthetic f$1:Ljava/util/Optional;

.field public final synthetic f$2:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    iput-object p2, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    iget-object v2, v0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_11
    if-ltz v3, :cond_47

    iget-object v5, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-virtual {v5, v1, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v6

    if-eqz v6, :cond_44

    iget-boolean v6, v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_42

    if-nez v6, :cond_3c

    :try_start_25
    iget-object v6, v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_30} :catch_31
    .catchall {:try_start_25 .. :try_end_30} :catchall_42

    goto :goto_3a

    :catch_31
    move-exception v6

    :try_start_32
    const-string/jumbo v7, "NativeTombstoneManager"

    const-string v8, "Failed to truncate tombstone"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    iput-boolean v4, v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    :cond_3c
    iget-object v5, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_49

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    :cond_47
    monitor-exit v2

    return-void

    :goto_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_42

    throw p0
.end method
