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
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    new-instance v0, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->DEFAULT_COMPRESSOR:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x52t
        0x43t
        0x4ct
    .end array-data

    :array_1
    .array-data 1
        0x47t
        0x5at
        0x49t
        0x50t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2

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

    if-nez p2, :cond_0

    const-string p1, "BatteryHistoryDirectory"

    const-string/jumbo p2, "maxHistorySize should not be zero"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final createFragment(J)Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 3

    const-string v0, "Could not create history file: "

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_0
    iget-object p1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "BatteryHistoryDirectory"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw p1
.end method

.method public final deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p0, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void
.end method

.method public final ensureInitialized()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x80000

    const-string v2, "BatteryStatsHistory.load"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

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

    :cond_1
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

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mInitialized:Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public final getEarliestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public getFileNames()Ljava/util/List;
    .locals 5
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

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final getFragments()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Reading battery history without a lock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLatestFragment()Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final getMaxHistorySize()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    return p0
.end method

.method public final getSize()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final hasCompletedFragments()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final isLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p0

    return p0
.end method

.method public final lock()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public makeDirectoryLockUnconditional()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    return-void
.end method

.method public final readFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)[B
    .locals 13

    const-string v0, "BatteryHistoryDirectory"

    move-object v1, p1

    check-cast v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V

    return-object v3

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string v2, "BatteryStatsHistory.read"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x4

    :try_start_1
    new-array v7, v6, [B

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, -0x1

    const-string v10, "Invalid battery history file format "

    if-ne v6, v9, :cond_2

    :try_start_2
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    if-nez v6, :cond_1

    new-array v6, v8, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    goto/16 :goto_6

    :catchall_1
    move-exception v6

    goto/16 :goto_4

    :cond_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_2
    :try_start_6
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_PARCEL:[B

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    :goto_0
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

    if-ltz v7, :cond_9

    const v11, 0x989680

    if-le v7, v11, :cond_4

    goto :goto_3

    :cond_4
    new-array v10, v7, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v11, "Invalid battery history file format"

    if-eqz v6, :cond_6

    :try_start_7
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    if-ge v8, v7, :cond_8

    sub-int v12, v7, v8

    invoke-virtual {v6, v10, v8, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-eq v12, v9, :cond_5

    add-int/2addr v8, v12

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    :goto_2
    if-ge v8, v7, :cond_8

    sub-int v6, v7, v8

    invoke-virtual {v2, v10, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v9, :cond_7

    add-int/2addr v8, v6

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v10

    :cond_9
    :goto_3
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_a
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->deleteFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_4
    if-eqz v2, :cond_b

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_e
    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    throw v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_6
    :try_start_f
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
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :goto_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final reset()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
.end method

.method public final trim()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->ensureInitialized()V

    const-string v0, "BatteryStatsHistory.trim"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

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

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mMaxHistorySize:I

    if-le v4, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mHistoryFiles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final tryLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mWaitForDirectoryLock:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p0

    return p0
.end method

.method public final unlock()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final writeFragment(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;[BZ)V
    .locals 3

    check-cast p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;->atomicFile:Landroid/util/AtomicFile;

    const/4 v0, 0x0

    :try_start_0
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

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mFileCompressionEnabled:Z

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p2, "BatteryHistoryDirectory"

    const-string p3, "Error writing battery history fragment"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    return-void
.end method
