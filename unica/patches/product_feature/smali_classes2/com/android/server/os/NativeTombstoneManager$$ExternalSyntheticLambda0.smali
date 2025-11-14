.class public final synthetic Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/os/NativeTombstoneManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    iput p2, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    iput p6, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$5:I

    iput-object p7, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    iget v2, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$1:I

    iget v3, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$2:I

    iget v4, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$3:I

    iget-object v5, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$5:I

    iget-object v0, v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;->f$6:Ljava/util/concurrent/CompletableFuture;

    iget-object v7, v1, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v8, :cond_8

    iget-object v12, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-eqz v4, :cond_1

    iget v13, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v13, v4, :cond_1

    :cond_0
    move-object/from16 v16, v1

    move v9, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_6

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v9

    move-object/from16 v16, v1

    const/4 v1, 0x5

    if-eq v9, v1, :cond_2

    :goto_2
    move v9, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    iget v9, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v1, v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    iget v9, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-eq v1, v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v15}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v17

    move v9, v2

    iget-wide v1, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    sub-long v17, v17, v1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v17, 0x2710

    cmp-long v1, v1, v17

    if-lez v1, :cond_5

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move v2, v9

    move-object/from16 v1, v16

    goto :goto_1

    :cond_5
    iget-object v1, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    invoke-virtual {v15, v1}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    goto :goto_4

    :cond_6
    move-object/from16 v16, v1

    move v9, v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v6, :cond_7

    invoke-virtual {v12}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->toAppExitInfo()Landroid/app/ApplicationExitInfo;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v2, v9

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_8
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_9

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :goto_5
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
