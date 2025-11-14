.class public final Lcom/android/server/power/stats/BatteryHistoryDirectory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryStore;


# static fields
.field public static final DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

.field public static final FILE_FORMAT_COMPRESSED_PARCEL:[B

.field public static final FILE_FORMAT_PARCEL:[B


# instance fields
.field public final mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

.field public final mDirectory:Ljava/io/File;

.field public mFileCompressionEnabled:Z

.field public final mHistoryFiles:Ljava/util/List;

.field public mInitialized:Z

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMaxHistorySize:I

.field public mWaitForDirectoryLock:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    return-void

    nop

    :array_18
    .array-data 1
        0x50t
        0x52t
        0x43t
        0x4ct
    .end array-data

    :array_1e
    .array-data 1
        0x47t
        0x5at
        0x49t
        0x50t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 5

    sget-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    iput p2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-nez p2, :cond_24

    const-string p1, "BatteryHistoryDirectory"

    const-string/jumbo p2, "maxHistorySize should not be zero"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)I
    .registers 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    return p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 6

    const-string v0, "Could not create history file: "

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_f
    iget-object p1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_1b
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    goto :goto_2c

    :catchall_19
    move-exception p1

    goto :goto_37

    :catch_1b
    :try_start_1b
    const-string p1, "BatteryHistoryDirectory"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_19

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v1

    :goto_37
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw p1
.end method

.method public final deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void
.end method

.method public final ensureInitialized()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-wide/32 v0, 0x80000

    const-string v2, "BatteryStatsHistory.load"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_34

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HistoryDir does not exist:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryHistoryDirectory"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    new-instance v7, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5a

    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_5a
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_70

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_70
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public final getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1f

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_1f
    move-exception v0

    goto :goto_26

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_26
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public getFileNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_2e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_2c

    goto :goto_14

    :catchall_2c
    move-exception v0

    goto :goto_32

    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :goto_32
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final getFragments()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Reading battery history without a lock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_27

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_27
    move-exception v0

    goto :goto_2e

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final getMaxHistorySize()I
    .registers 1

    iget p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    return p0
.end method

.method public final getSize()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2d

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catchall_2d
    move-exception v0

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :goto_33
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final hasCompletedFragments()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_17

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :catchall_17
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final isLocked()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p0

    return p0
.end method

.method public final lock()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public makeDirectoryLockUnconditional()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    return-void
.end method

.method public final readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B
    .registers 15

    const-string v0, "BatteryHistoryDirectory"

    move-object v1, p1

    check-cast v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    return-object v3

    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string v2, "BatteryStatsHistory.read"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1d
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_48
    .catchall {:try_start_1d .. :try_end_21} :catchall_45

    const/4 v6, 0x4

    :try_start_22
    new-array v7, v6, [B

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_4b

    const/4 v9, -0x1

    const-string v10, "Invalid battery history file format "

    if-ne v6, v9, :cond_6b

    :try_start_2e
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    if-nez v6, :cond_4e

    new-array v6, v8, [B
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_4b

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_48
    .catchall {:try_start_3e .. :try_end_41} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_45
    move-exception p0

    goto/16 :goto_142

    :catch_48
    move-exception v2

    goto/16 :goto_11f

    :catchall_4b
    move-exception v6

    goto/16 :goto_114

    :cond_4e
    :try_start_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_4b

    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_48
    .catchall {:try_start_64 .. :try_end_67} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_6b
    :try_start_6b
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_75

    const/4 v6, 0x1

    goto :goto_7e

    :cond_75
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_f7

    move v6, v8

    :goto_7e
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v7, v11

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v7, v11

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->readByte(Ljava/io/InputStream;)I

    move-result v11

    or-int/2addr v7, v11

    if-ltz v7, :cond_da

    const v11, 0x989680

    if-le v7, v11, :cond_9f

    goto :goto_da

    :cond_9f
    new-array v10, v7, [B
    :try_end_a1
    .catchall {:try_start_6b .. :try_end_a1} :catchall_4b

    const-string v11, "Invalid battery history file format"

    if-eqz v6, :cond_c1

    :try_start_a5
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_af
    if-ge v8, v7, :cond_d3

    sub-int v12, v7, v8

    invoke-virtual {v6, v10, v8, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-eq v12, v9, :cond_bb

    add-int/2addr v8, v12

    goto :goto_af

    :cond_bb
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c1
    :goto_c1
    if-ge v8, v7, :cond_d3

    sub-int v6, v7, v8

    invoke-virtual {v2, v10, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v9, :cond_cd

    add-int/2addr v8, v6

    goto :goto_c1

    :cond_cd
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_d3
    .catchall {:try_start_a5 .. :try_end_d3} :catchall_4b

    :cond_d3
    :try_start_d3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_48
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v10

    :cond_da
    :goto_da
    :try_start_da
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_f0
    .catchall {:try_start_da .. :try_end_f0} :catchall_4b

    :try_start_f0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_48
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_f7
    :try_start_f7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_10d
    .catchall {:try_start_f7 .. :try_end_10d} :catchall_4b

    :try_start_10d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_110} :catch_48
    .catchall {:try_start_10d .. :try_end_110} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_114
    if-eqz v2, :cond_11e

    :try_start_116
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_11a

    goto :goto_11e

    :catchall_11a
    move-exception v2

    :try_start_11b
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11e
    :goto_11e
    throw v6
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11f} :catch_48
    .catchall {:try_start_11b .. :try_end_11f} :catchall_45

    :goto_11f
    :try_start_11f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_13e
    .catchall {:try_start_11f .. :try_end_13e} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_142
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final reset()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    goto :goto_f

    :catchall_1f
    move-exception v0

    goto :goto_2c

    :cond_21
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_1f

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-void

    :goto_2c
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final trim()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    const-string v0, "BatteryStatsHistory.trim"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6f

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    :goto_11
    :try_start_11
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_36

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catchall_34
    move-exception v0

    goto :goto_71

    :cond_36
    :goto_36
    iget v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-le v4, v3, :cond_68

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_68

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v5, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_11 .. :try_end_66} :catchall_34

    sub-int/2addr v4, v5

    goto :goto_36

    :cond_68
    :try_start_68
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_6f
    move-exception p0

    goto :goto_75

    :goto_71
    :try_start_71
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_6f

    :goto_75
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final tryLock()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p0, 0x1

    return p0

    :cond_b
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p0

    return p0
.end method

.method public final unlock()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V
    .registers 7

    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    array-length v1, p2

    shr-int/lit8 v2, v1, 0x18

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v1, 0x10

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v1, 0x8

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    if-eqz p3, :cond_59

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    if-eqz p3, :cond_42

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    :catch_40
    move-exception p0

    goto :goto_4f

    :cond_42
    :goto_42
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4e} :catch_40

    return-void

    :goto_4f
    const-string p2, "BatteryHistoryDirectory"

    const-string p3, "Error writing battery history fragment"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_59
    return-void
.end method
