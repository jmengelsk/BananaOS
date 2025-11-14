.class public final Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
.super Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquireLock(IJ)Z
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v5, "acquireLock"

    invoke-static {v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v5, "TunerResourceManagerService"

    const-string v6, ", "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-string/jumbo v0, "acquireLockInternal()"

    invoke-virtual {v4, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const/16 v16, 0x0

    goto/16 :goto_20f

    :cond_26
    const-wide/16 v10, 0x1f4

    :try_start_28
    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_2f

    const/4 v14, 0x1

    goto :goto_30

    :cond_2f
    const/4 v14, 0x0

    :goto_30
    if-ne v1, v0, :cond_46

    move v0, v14

    const/16 p0, 0x1

    iget-wide v13, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_37} :catch_41
    .catchall {:try_start_28 .. :try_end_37} :catchall_3e

    cmp-long v13, v2, v13

    if-nez v13, :cond_49

    move/from16 v13, p0

    goto :goto_4a

    :catchall_3e
    move-exception v0

    goto/16 :goto_210

    :catch_41
    move-exception v0

    const/16 v16, 0x0

    goto/16 :goto_1d9

    :cond_46
    move v0, v14

    const/16 p0, 0x1

    :cond_49
    const/4 v13, 0x0

    :goto_4a
    move v14, v0

    :goto_4b
    const-string/jumbo v0, "acquireLockInternal("

    if-nez v14, :cond_108

    if-nez v13, :cond_108

    :try_start_52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_56} :catch_41
    .catchall {:try_start_52 .. :try_end_56} :catchall_3e

    cmp-long v17, v15, v7

    const-wide/16 v18, 0x0

    if-ltz v17, :cond_60

    sub-long/2addr v15, v7

    :cond_5d
    :goto_5d
    move/from16 v20, v13

    goto :goto_70

    :cond_60
    const-wide v20, 0x7fffffffffffffffL

    sub-long v22, v20, v7

    add-long v15, v22, v15

    cmp-long v17, v15, v18

    if-gez v17, :cond_5d

    move-wide/from16 v15, v20

    goto :goto_5d

    :goto_70
    sub-long v12, v10, v15

    cmp-long v15, v12, v18

    const/16 v16, 0x0

    const-string v9, "("

    if-gtz v15, :cond_b7

    :try_start_7a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAILED:acquireLockInternal("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ") - timed out, but will grant the lock to the callee by stealing it from the current holder:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "), who likely failed to call releaseLock(), to prevent this from becoming an unrecoverable error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, p0

    goto :goto_10e

    :catch_b4
    move-exception v0

    goto/16 :goto_1d9

    :cond_b7
    iget-object v14, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v14, v12, v13, v15}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget v12, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_c6

    move/from16 v14, p0

    goto :goto_c8

    :cond_c6
    move/from16 v14, v16

    :goto_c8
    if-nez v14, :cond_101

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") - woken up from cond wait, but "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v14

    iget-wide v13, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") is already holding the lock. Going to wait again if timeout hasn\'t reached yet"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    :cond_101
    move v9, v14

    :goto_102
    move v14, v9

    move/from16 v13, v20

    const/4 v12, -0x1

    goto/16 :goto_4b

    :cond_108
    move/from16 v20, v13

    const/16 v16, 0x0

    move/from16 v7, v16

    :goto_10e
    if-nez v14, :cond_16e

    if-eqz v7, :cond_113

    goto :goto_16e

    :cond_113
    if-eqz v20, :cond_14a

    iget v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    sget-boolean v8, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v8, :cond_147

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") - nested count incremented to "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    :goto_147
    move/from16 v0, p0

    goto :goto_1c0

    :cond_14a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") - should not reach here"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    :cond_16e
    :goto_16e
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_198

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SUCCESS:acquireLockInternal("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_198
    iget v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-eqz v0, :cond_1b8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Something is wrong as nestedCount("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") is not zero. Will overriding it to 1 anyways"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b8
    iput v1, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    iput-wide v2, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    move/from16 v0, p0

    iput v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_1c0
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_1c0} :catch_b4
    .catchall {:try_start_7a .. :try_end_1c0} :catchall_3e

    :goto_1c0
    if-nez v14, :cond_1ca

    if-nez v20, :cond_1ca

    if-eqz v7, :cond_1c7

    goto :goto_1ca

    :cond_1c7
    move/from16 v9, v16

    goto :goto_1cb

    :cond_1ca
    :goto_1ca
    move v9, v0

    :goto_1cb
    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1d8

    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1d8
    return v9

    :goto_1d9
    :try_start_1d9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exception thrown in acquireLockInternal("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_202
    .catchall {:try_start_1d9 .. :try_end_202} :catchall_3e

    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_20f

    iget-object v0, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_20f
    :goto_20f
    return v16

    :goto_210
    iget-object v1, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_21d

    iget-object v1, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_21d
    throw v0
.end method

.method public final clearResourceMap(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "clearResourceMap"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    if-eqz p1, :cond_12

    goto :goto_27

    :cond_12
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-static {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-static {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-static {v1, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo p3, "android.permission.DUMP"

    invoke-virtual {p2, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1d

    const-string/jumbo p0, "Permission Denial: can\'t dump!"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object p2, p2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_22
    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    const-string v1, "ClientProfiles:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    const-string v1, "FrontendResources:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    const-string v1, "FrontendExistingNums:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    const-string v1, "FrontendUsedNums:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    const-string v1, "FrontendMaxUsableNums:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    const-string v1, "FrontendResourcesBackUp:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    const-string v1, "FrontendExistingNumsBackup:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    const-string v1, "FrontendUsedNumsBackup:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    const-string v1, "FrontendUsedNumsBackup:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    const-string v1, "DemuxResource:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    const-string/jumbo v1, "LnbResource:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    const-string v1, "CasResource:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    const-string v1, "CiCamResource:"

    invoke-static {p3, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    const-string/jumbo v0, "Listners:"

    invoke-static {p0, p3, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    monitor-exit p2

    return-void

    :catchall_a4
    move-exception p0

    monitor-exit p2
    :try_end_a6
    .catchall {:try_start_22 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public final getClientPriority(II)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "getClientPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getConfigPriority(IZ)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "getConfigPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final getMaxNumberOfFrontends(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "getMaxNumberOfFrontends"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "getMaxNumberOfFrontends"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "existingNum is -1 for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_36
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v2, :cond_40

    move v2, v1

    goto :goto_41

    :cond_40
    move v2, p0

    :goto_41
    monitor-exit v0

    return v2

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_15 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final hasUnusedFrontend(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "hasUnusedFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    iget v2, v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    if-ne v2, p1, :cond_1b

    iget-boolean v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-nez v1, :cond_1b

    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    monitor-exit v0

    return p0

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "isHigherPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client profiles can\'t be null."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isLowestPriority(II)Z
    .registers 8

    const-string/jumbo v0, "isLowestPriority called from unregistered client: "

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v2, "isLowestPriority"

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_22

    goto :goto_52

    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    iget v4, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    if-ne v4, p2, :cond_35

    iget-boolean v4, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-eqz v4, :cond_35

    iget v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v3

    if-le p1, v3, :cond_35

    const/4 v0, 0x0

    :cond_52
    :goto_52
    monitor-exit v1

    return v0

    :catchall_54
    move-exception p0

    goto :goto_68

    :cond_56
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_10 .. :try_end_69} :catchall_54

    throw p0
.end method

.method public final registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_76

    if-eqz p3, :cond_6d

    if-eqz p2, :cond_65

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    iget v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    const/16 v0, 0x64

    if-eq v1, v0, :cond_56

    const/16 v0, 0xc8

    if-eq v1, v0, :cond_56

    const/16 v0, 0x12c

    if-eq v1, v0, :cond_56

    const/16 v0, 0x190

    if-eq v1, v0, :cond_56

    const/16 v0, 0x1f4

    if-ne v1, v0, :cond_3f

    goto :goto_56

    :cond_3f
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Use undefined client use case:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5b
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_62

    throw p0

    :cond_65
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "IResourcesReclaimListener can\'t be null!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "clientId can\'t be null!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "ResourceClientProfile can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseCasSession(JI)V
    .registers 7

    const-string/jumbo v0, "Release cas from unregistered client:"

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v2, "releaseCasSession"

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object p1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_17
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result p2

    if-eqz p2, :cond_57

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object p2

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    monitor-exit p1

    return-void

    :catchall_44
    move-exception p0

    goto :goto_69

    :cond_46
    new-instance p0, Landroid/os/RemoteException;

    const-string p2, "Client is not the current owner of the releasing cas."

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p2, "Releasing cas does not exist."

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_17 .. :try_end_6a} :catchall_44

    throw p0

    :cond_6b
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "casSessionHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseCiCam(JI)V
    .registers 8

    const-string/jumbo v0, "The client "

    const-string/jumbo v1, "Release ciCam from unregistered client:"

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v3, "releaseCiCam"

    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(J)I

    move-result p1

    if-ne v1, p1, :cond_62

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p1

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V

    monitor-exit v2

    return-void

    :catchall_4f
    move-exception p0

    goto :goto_8b

    :cond_51
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not the current owner of the releasing ciCam."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Releasing ciCam does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not the owner of the releasing ciCam."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_79
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_1a .. :try_end_8c} :catchall_4f

    throw p0

    :cond_8d
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "ciCamHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseDemux(JI)V
    .registers 8

    const-string/jumbo v0, "Release demux for unregistered client:"

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v2, "releaseDemux"

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v2, "releaseDemux"

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v1, :cond_31

    const-string/jumbo v1, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "releaseDemux(demuxHandle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_36
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_46

    monitor-exit v1

    return-void

    :catchall_44
    move-exception p0

    goto :goto_84

    :cond_46
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object p1

    if-eqz p1, :cond_69

    iget p2, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    if-ne p2, p3, :cond_61

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    monitor-exit v1

    return-void

    :cond_61
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not the current owner of the releasing demux."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Releasing demux does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_36 .. :try_end_85} :catchall_44

    throw p0
.end method

.method public final releaseDescrambler(JI)V
    .registers 5

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v0, "releaseDescrambler"

    invoke-static {p3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz p0, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "releaseDescrambler(descramblerHandle="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public final releaseFrontend(JI)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseFrontendInternal(JI)V

    return-void
.end method

.method public final releaseLnb(JI)V
    .registers 7

    const-string/jumbo v0, "Release lnb from unregistered client:"

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v2, "releaseLnb"

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v2, "releaseLnb"

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object p1

    if-eqz p1, :cond_44

    iget p2, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    if-ne p2, p3, :cond_3c

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    monitor-exit v1

    return-void

    :catchall_3a
    move-exception p0

    goto :goto_5f

    :cond_3c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not the current owner of the releasing lnb."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Releasing lnb does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_1f .. :try_end_60} :catchall_3a

    throw p0

    :cond_61
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "lnbHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseLock(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "releaseLock"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IZZ)Z

    move-result p0

    return p0
.end method

.method public final requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestCasSession"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z

    move-result p0

    return p0

    :cond_11
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "casSessionHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestCiCam"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z

    move-result p0

    return p0

    :cond_11
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "ciCamHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_16

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z

    move-result p0

    return p0

    :cond_16
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "demuxHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .registers 7

    const-string/jumbo v0, "Request descrambler from unregistered client:"

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "TunerResourceManagerService: requestDescrambler"

    const-string/jumbo v3, "android.permission.ACCESS_TV_DESCRAMBLER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v2, "requestDescrambler"

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_4d

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_35
    move-exception p0

    goto :goto_4b

    :cond_37
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_23 .. :try_end_4c} :catchall_35

    throw p0

    :cond_4d
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "descramblerHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-nez p2, :cond_1a

    const-string/jumbo p0, "TunerResourceManagerService"

    const-string/jumbo p1, "frontendHandle can\'t be null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1a
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z

    move-result p0

    return p0
.end method

.method public final requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "requestLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p2, :cond_16

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z

    move-result p0

    return p0

    :cond_16
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "lnbHandle can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final restoreResourceMap(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "restoreResourceMap"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    if-eqz p1, :cond_12

    goto :goto_2e

    :cond_12
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-static {p1, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :goto_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setDemuxInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setDemuxInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "TunerDemuxInfo can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setFrontendInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "TunerFrontendInfo can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setLnbInfoList([J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setLnbInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setLnbInfoListInternal([J)V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Lnb handle list can\'t be null"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMaxNumberOfFrontends(II)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setMaxNumberOfFrontends"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setMaxNumberOfFrontends"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    if-gez p2, :cond_31

    const-string/jumbo p0, "TunerResourceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMaxNumberOfFrontends failed with maxUsableNum:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " frontendType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_31
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_36
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_57

    if-gt v1, p2, :cond_44

    goto :goto_57

    :cond_44
    const-string/jumbo p0, "max number of frontend for frontendType: "

    const-string v2, " cannot be set to a value lower than the current usage count. (requested max num = "

    const-string v3, ", current usage = "

    invoke-static {p1, p2, p0, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "TunerResourceManagerService"

    invoke-static {p0, v1, p1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_5d

    :cond_57
    :goto_57
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    :goto_5d
    monitor-exit v0

    return p0

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_36 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public final setResourceOwnershipRetention(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "setResourceOwnershipRetention"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    iput-boolean p2, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mResourceOwnershipRetention:Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final shareFrontend(II)V
    .registers 8

    const-string/jumbo v0, "Request to share frontend with a client that has no frontend resources. Target client id:"

    const-string/jumbo v1, "Request to share frontend with an unregistered client:"

    const-string/jumbo v2, "Share frontend request from an unregistered client:"

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v4, "shareFrontend"

    invoke-static {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v4, "shareFrontend"

    invoke-static {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1e
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->shareFrontendInternal(II)V

    monitor-exit v3

    return-void

    :catchall_45
    move-exception p0

    goto :goto_7d

    :cond_47
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_1e .. :try_end_7e} :catchall_45

    throw p0
.end method

.method public final storeResourceMap(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "storeResourceMap"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    if-eqz p1, :cond_12

    goto :goto_2e

    :cond_12
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    invoke-static {p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    invoke-static {p1, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :goto_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final transferOwner(III)Z
    .registers 9

    const-string/jumbo v0, "newOwnerId:"

    const-string/jumbo v1, "currentOwnerId:"

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v3, "transferOwner"

    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v3, "transferOwner"

    invoke-static {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1b
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3f

    const-string/jumbo p0, "TunerResourceManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exit"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :catchall_3d
    move-exception p0

    goto :goto_68

    :cond_3f
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-nez v1, :cond_60

    const-string/jumbo p0, "TunerResourceManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exit"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :cond_60
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferOwnerInternal(III)Z

    move-result p0

    monitor-exit v2

    return p0

    :goto_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_1b .. :try_end_69} :catchall_3d

    throw p0
.end method

.method public final unregisterClientProfile(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "unregisterClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->unregisterClientProfileInternal(I)V

    return-void
.end method

.method public final updateCasInfo(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "updateCasInfo"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasInfoInternal(II)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final updateClientPriority(III)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string/jumbo v1, "updateClientPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateClientPriorityInternal(III)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p0
.end method
