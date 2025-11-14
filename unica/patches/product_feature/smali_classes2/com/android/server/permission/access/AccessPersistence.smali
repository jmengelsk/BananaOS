.class public final Lcom/android/server/permission/access/AccessPersistence;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final pendingMutationTimesMillis:Landroid/util/SparseLongArray;

.field public final pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final policy:Lcom/android/server/permission/access/AccessPolicy;

.field public final scheduleLock:Ljava/lang/Object;

.field public writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

.field public final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-direct {p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final write(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 6

    invoke-interface {p1}, Lcom/android/server/permission/access/WritableState;->getWriteMode()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-virtual {p2, p3, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v4, v2

    :goto_0
    sub-long/2addr v2, v4

    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v4, 0x7d0

    cmp-long p3, v2, v4

    if-lez p3, :cond_3

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    cmp-long p3, v2, v4

    if-lez p3, :cond_4

    goto :goto_1

    :cond_4
    move-wide v4, v2

    :goto_1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    monitor-exit p1

    return-void

    :cond_5
    :try_start_2
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    monitor-exit p1

    throw p0

    :cond_8
    return-void
.end method

.method public final writePendingState(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    iput-object v4, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    iget-object v1, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :try_start_3
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPersistence;->writeSystemState(Lcom/android/server/permission/access/AccessState;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/permission/access/AccessPersistence;->writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_4
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    :try_start_5
    monitor-exit v2

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final writeSystemState(Lcom/android/server/permission/access/AccessState;)V
    .locals 8

    const-string v0, "AccessPersistence"

    const-string v1, "Failed to write "

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "com.android.permission"

    invoke-static {v3}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "access.abx"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v5, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/permission/access/AccessPolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {v4, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".reservecopy"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {p1, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v6

    :try_start_9
    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v4

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v5

    :try_start_b
    invoke-static {p1, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception p1

    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :goto_0
    :try_start_d
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_e
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_4
    move-exception p0

    :try_start_f
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception p0

    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_11
    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to serialize "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    .locals 8

    const-string v0, "AccessPersistence"

    const-string v1, "Failed to write "

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "com.android.permission"

    invoke-static {v3}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "access.abx"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v5, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    invoke-virtual {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {v4, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".reservecopy"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_9
    invoke-static {p2, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_b
    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception p1

    :try_start_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :goto_0
    :try_start_d
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_e
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_4
    move-exception p0

    :try_start_f
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception p0

    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_11
    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to serialize "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
