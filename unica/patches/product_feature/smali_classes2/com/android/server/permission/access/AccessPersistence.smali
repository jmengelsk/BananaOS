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
    .registers 2

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
    .registers 7

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

    :goto_13
    if-ge v2, v1, :cond_27

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_27
    return-void
.end method

.method public final write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 10

    invoke-interface {p1}, Lcom/android/server/permission/access/WritableState;->getWriteMode()I

    move-result p1

    if-eqz p1, :cond_91

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_f
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    monitor-exit p1

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2f
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_88

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_51

    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    goto :goto_55

    :catchall_4f
    move-exception p0

    goto :goto_8f

    :cond_51
    invoke-virtual {p2, p3, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v4, v2

    :goto_55
    sub-long/2addr v2, v4

    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-eqz p2, :cond_81

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v4, 0x7d0

    cmp-long p3, v2, v4

    if-lez p3, :cond_68

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_78

    :cond_68
    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    cmp-long p3, v2, v4

    if-lez p3, :cond_70

    goto :goto_71

    :cond_70
    move-wide v4, v2

    :goto_71
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-eqz p0, :cond_7a

    invoke-virtual {p0, p2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_78
    .catchall {:try_start_2f .. :try_end_78} :catchall_4f

    :goto_78
    monitor-exit p1

    return-void

    :cond_7a
    :try_start_7a
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_81
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_88
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_8f
    .catchall {:try_start_7a .. :try_end_8f} :catchall_4f

    :goto_8f
    monitor-exit p1

    throw p0

    :cond_91
    return-void
.end method

.method public final writePendingState(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    :try_start_b
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

    if-eqz v3, :cond_41

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_3f

    :try_start_26
    monitor-exit v2

    iget-object v1, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_36

    if-nez v1, :cond_2d

    monitor-exit v0

    return-void

    :cond_2d
    const/4 v2, -0x1

    if-ne p1, v2, :cond_38

    :try_start_30
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPersistence;->writeSystemState(Lcom/android/server/permission/access/AccessState;)V

    goto :goto_3d

    :catchall_36
    move-exception p0

    goto :goto_4b

    :cond_38
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/permission/access/AccessPersistence;->writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_36

    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    goto :goto_49

    :cond_41
    :try_start_41
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3f

    :goto_49
    :try_start_49
    monitor-exit v2

    throw p0
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_36

    :goto_4b
    monitor-exit v0

    throw p0
.end method

.method public final writeSystemState(Lcom/android/server/permission/access/AccessState;)V
    .registers 10

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

    :try_start_17
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_b4

    :try_start_20
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
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_b6

    :try_start_39
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
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_65} :catch_b4

    :try_start_65
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6e} :catch_92

    :try_start_6e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_8b

    :try_start_73
    invoke-static {p1, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_84

    :try_start_7d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_8b

    :try_start_80
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_92

    goto :goto_a2

    :catchall_84
    move-exception v5

    :try_start_85
    throw v5
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception v6

    :try_start_87
    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v4

    :try_start_8c
    throw v4
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception v5

    :try_start_8e
    invoke-static {p1, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_92

    :catch_92
    move-exception p1

    :try_start_93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a2} :catch_b4

    :goto_a2
    :try_start_a2
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ac} :catch_ad

    goto :goto_d3

    :catch_ad
    move-exception p0

    :try_start_ae
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b3} :catch_b4

    goto :goto_d3

    :catch_b4
    move-exception p0

    goto :goto_c2

    :catchall_b6
    move-exception p0

    :try_start_b7
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception p0

    :try_start_bc
    throw p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bd

    :catchall_bd
    move-exception p1

    :try_start_be
    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c2} :catch_b4

    :goto_c2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to serialize "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    return-void
.end method

.method public final writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    .registers 11

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

    :try_start_1b
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_b8

    :try_start_24
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
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_ba

    :try_start_3d
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
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_69} :catch_b8

    :try_start_69
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_96

    :try_start_72
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_8f

    :try_start_77
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_88

    :try_start_81
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_8f

    :try_start_84
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_96

    goto :goto_a6

    :catchall_88
    move-exception v4

    :try_start_89
    throw v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v5

    :try_start_8b
    invoke-static {p2, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p2

    :try_start_90
    throw p2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v4

    :try_start_92
    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_96} :catch_96

    :catch_96
    move-exception p1

    :try_start_97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a6} :catch_b8

    :goto_a6
    :try_start_a6
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b0} :catch_b1

    goto :goto_d7

    :catch_b1
    move-exception p0

    :try_start_b2
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b7} :catch_b8

    goto :goto_d7

    :catch_b8
    move-exception p0

    goto :goto_c6

    :catchall_ba
    move-exception p0

    :try_start_bb
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception p0

    :try_start_c0
    throw p0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception p1

    :try_start_c2
    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c6} :catch_b8

    :goto_c6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to serialize "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d7
    return-void
.end method
