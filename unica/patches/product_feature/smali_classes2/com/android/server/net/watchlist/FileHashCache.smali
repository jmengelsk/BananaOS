.class public final Lcom/android/server/net/watchlist/FileHashCache;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sLoggedWtf:Z = false

.field static sPersistFileName:Ljava/lang/String; = "/data/system/file_hash_cache"

.field public static final sSaveDeferredDelayMillis:J


# instance fields
.field public final mEntries:Ljava/util/Map;

.field public final mHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

.field public final mLoadTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

.field public final mSaveTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/FileHashCache;->sSaveDeferredDelayMillis:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    new-instance v0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/FileHashCache;I)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mLoadTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/FileHashCache;I)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mSaveTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method


# virtual methods
.method public final getSha256Hash(Ljava/io/File;)[B
    .registers 8

    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mSaveTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/FileHashCache;->getSha256HashFromCache(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    invoke-static {p1}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    new-instance v3, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    iget-wide v4, v4, Landroid/system/StructStat;->st_ctime:J

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/net/watchlist/FileHashCache$Entry;-><init>(J[B)V

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-wide v2, Lcom/android/server/net/watchlist/FileHashCache;->sSaveDeferredDelayMillis:J

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_2d} :catch_2e

    return-object v1

    :catch_2e
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getSha256HashFromCache(Ljava/io/File;)[B
    .registers 8

    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "FileHashCache"

    const-string/jumbo v0, "Request from invalid thread"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_1b
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    if-nez v0, :cond_28

    return-object v1

    :cond_28
    :try_start_28
    iget-wide v2, v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    iget-wide v4, v4, Landroid/system/StructStat;->st_ctime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    iget-object p0, v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B
    :try_end_3a
    .catch Landroid/system/ErrnoException; {:try_start_28 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    :cond_3b
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
