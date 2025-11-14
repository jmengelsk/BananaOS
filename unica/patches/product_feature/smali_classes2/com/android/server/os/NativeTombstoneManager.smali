.class public final Lcom/android/server/os/NativeTombstoneManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TOMBSTONE_DIR:Ljava/io/File;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mTombstones:Landroid/util/SparseArray;

.field public final mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ServiceThread;

    const/4 v0, 0x1

    const-string/jumbo v1, "NativeTombstoneManager:tombstoneWatcher"

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-direct {p1, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    return-void
.end method


# virtual methods
.method public final collectTombstones(Ljava/util/ArrayList;III)V
    .locals 8

    new-instance v7, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v7}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager;IIILjava/util/ArrayList;ILjava/util/concurrent/CompletableFuture;)V

    iget-object p0, v1, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final handleTombstone(Ljava/io/File;)V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    const-string/jumbo v3, "tombstone_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-string v3, ".pb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v4, p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    :goto_0
    const-string/jumbo v0, "unexpected tombstone name: "

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".pb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v0, "NativeTombstoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unexpected tombstone name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    move/from16 v16, v3

    goto/16 :goto_a

    :cond_3
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    if-ltz v5, :cond_4

    const/16 v6, 0x63

    if-le v5, v6, :cond_5

    :cond_4
    move/from16 v16, v3

    goto/16 :goto_9

    :cond_5
    const/high16 v0, 0x30000000

    :try_start_2
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    const-string/jumbo v6, "NativeTombstoneManager"

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v8, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v8, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v9, ""

    const/4 v0, 0x0

    move v10, v7

    move v11, v10

    move-object v12, v9

    move-object v13, v12

    move-object v7, v0

    :cond_6
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v14, -0x1

    if-eq v0, v14, :cond_f

    invoke-virtual {v8}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/4 v15, 0x5

    if-eq v0, v15, :cond_e

    const/16 v15, 0xf

    if-eq v0, v15, :cond_a

    const/4 v14, 0x7

    if-eq v0, v14, :cond_9

    const/16 v14, 0x8

    if-eq v0, v14, :cond_8

    const/16 v14, 0x9

    if-eq v0, v14, :cond_7

    goto :goto_1

    :cond_7
    if-nez v7, :cond_6

    const-wide v14, 0x20900000009L

    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v16, v3

    goto/16 :goto_7

    :cond_8
    const-wide v13, 0x10900000008L

    invoke-virtual {v8, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_9
    const-wide v14, 0x10d00000007L

    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    goto :goto_1

    :cond_a
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    const-wide v14, 0x20b0000000fL

    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v14

    :goto_2
    invoke-virtual {v8}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/util/proto/ProtoParseException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v16, v3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    :try_start_4
    invoke-virtual {v8}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    move/from16 v3, v16

    goto :goto_2

    :cond_c
    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_d
    :goto_3
    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoInputStream;->end(J)V

    :goto_4
    move/from16 v3, v16

    goto :goto_1

    :cond_e
    move/from16 v16, v3

    const-wide v2, 0x10d00000005L

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/util/proto/ProtoParseException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :cond_f
    move/from16 v16, v3

    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tombstone\'s UID ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not an app, ignoring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_8

    :cond_10
    :try_start_5
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-object v0, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v2, v0, Landroid/system/StructTimespec;->tv_sec:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v2, v14

    iget-wide v14, v0, Landroid/system/StructTimespec;->tv_nsec:J

    const-wide/32 v17, 0xf4240

    div-long v14, v14, v17
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2

    add-long/2addr v2, v14

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v2, "Failed to get timestamp of tombstone"

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v2, 0x0

    :goto_5
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const-string/jumbo v14, "u:r:untrusted_app"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tombstone has invalid selinux label ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), ignoring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_8

    :cond_11
    new-instance v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-direct {v6, v4}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput v0, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    iput v8, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    iput v11, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    iput v10, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-nez v7, :cond_12

    goto :goto_6

    :cond_12
    move-object v9, v7

    :goto_6
    iput-object v9, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    iput-wide v2, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    iput-object v12, v6, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_8

    :goto_7
    const-string v2, "Failed to parse tombstone"

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_a

    :cond_13
    if-eqz v16, :cond_15

    iget-object v2, v1, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v3, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    if-eqz v3, :cond_14

    iget-object v3, v3, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_14
    iget-object v3, v1, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catch_3
    move-exception v0

    move/from16 v16, v3

    const-string/jumbo v2, "NativeTombstoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failed to open "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_a

    :goto_9
    :try_start_7
    const-string/jumbo v2, "NativeTombstoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    :catch_4
    move/from16 v16, v3

    :catch_5
    const-string/jumbo v0, "NativeTombstoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected tombstone name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :cond_15
    :goto_a
    new-instance v2, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/os/NativeTombstoneManager;->mTmpFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-class v4, Landroid/os/DropBoxManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/DropBoxManager;

    const-string v2, "BootReceiver"

    if-nez v4, :cond_16

    const-string v0, "Can\'t log tombstone: DropBoxManager not available"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_16
    sget-object v5, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    if-eqz v16, :cond_17

    const-string/jumbo v6, "SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS"

    goto :goto_b

    :cond_17
    const-string/jumbo v6, "SYSTEM_TOMBSTONE"

    :goto_b
    invoke-virtual {v5, v6, v0}, Lcom/android/server/am/DropboxRateLimiter;->shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    move-result-object v0

    iget-boolean v5, v0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mShouldRateLimit:Z

    if-eqz v5, :cond_18

    goto :goto_e

    :cond_18
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v16, :cond_19

    move-object/from16 v6, p1

    :try_start_8
    invoke-static {v6, v5}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :try_start_9
    invoke-static {v6, v4, v0}, Lcom/android/server/BootReceiver;->addAugmentedProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_19
    move-object/from16 v6, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->createHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string/jumbo v10, "SYSTEM_TOMBSTONE"

    const-string v7, ""

    move-object v6, v0

    invoke-static/range {v4 .. v10}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_d

    :goto_c
    const-string v3, "Can\'t log tombstone"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_d
    invoke-static {v5}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    :goto_e
    iget-object v0, v1, Lcom/android/server/os/NativeTombstoneManager;->mWatcher:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    invoke-static {v0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method
