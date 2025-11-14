.class public final synthetic Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/net/watchlist/FileHashCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/watchlist/FileHashCache;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/watchlist/FileHashCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/watchlist/FileHashCache;

    packed-switch v0, :pswitch_data_d4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ","

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lcom/android/server/net/watchlist/FileHashCache;->sPersistFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_79
    .catchall {:try_start_10 .. :try_end_1c} :catchall_77

    :try_start_1c
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    iget-wide v4, v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    iget-object v1, v1, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_6c} :catch_70
    .catchall {:try_start_1c .. :try_end_6c} :catchall_6d

    goto :goto_28

    :catchall_6d
    move-exception p0

    move-object v1, v2

    goto :goto_85

    :catch_70
    move-exception p0

    move-object v1, v2

    goto :goto_7a

    :cond_73
    invoke-static {v2}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_84

    :catchall_77
    move-exception p0

    goto :goto_85

    :catch_79
    move-exception p0

    :goto_7a
    :try_start_7a
    const-string v0, "FileHashCache"

    const-string v2, "Failed to save."

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_77

    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    :goto_84
    return-void

    :goto_85
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :pswitch_89  #0x0
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/net/watchlist/FileHashCache;->sPersistFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a1

    goto :goto_cf

    :cond_a1
    const/4 v1, 0x0

    :try_start_a2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ac} :catch_c4
    .catch Ljava/io/UncheckedIOException; {:try_start_a2 .. :try_end_ac} :catch_c4
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_c2

    :try_start_ac
    invoke-virtual {v2}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/net/watchlist/FileHashCache;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b8} :catch_bf
    .catch Ljava/io/UncheckedIOException; {:try_start_ac .. :try_end_b8} :catch_bf
    .catchall {:try_start_ac .. :try_end_b8} :catchall_bc

    invoke-static {v2}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_cf

    :catchall_bc
    move-exception p0

    move-object v1, v2

    goto :goto_d0

    :catch_bf
    move-exception p0

    move-object v1, v2

    goto :goto_c5

    :catchall_c2
    move-exception p0

    goto :goto_d0

    :catch_c4
    move-exception p0

    :goto_c5
    :try_start_c5
    const-string v0, "FileHashCache"

    const-string v2, "Failed to read storage file"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_c2

    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    :goto_cf
    return-void

    :goto_d0
    invoke-static {v1}, Lcom/android/server/net/watchlist/FileHashCache;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_89  #00000000
    .end packed-switch
.end method
