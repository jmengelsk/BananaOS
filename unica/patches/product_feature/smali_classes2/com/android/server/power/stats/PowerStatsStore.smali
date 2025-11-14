.class public Lcom/android/server/power/stats/PowerStatsStore;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mHandler:Landroid/os/Handler;

.field public mJvmLock:Ljava/nio/channels/FileLock;

.field public final mLockFile:Ljava/io/File;

.field public final mMaxStorageBytes:J

.field public final mSectionReaders:Ljava/util/Map;

.field public final mStoreDir:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public volatile mTableOfContents:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/File;JLandroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSystemDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "power-stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string v1, ".lock"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsStore;->mHandler:Landroid/os/Handler;

    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    new-instance p1, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsStore;)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    const-string/jumbo v0, "Power stats store"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-wide v1, v1, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v1

    if-eqz v1, :cond_36

    :try_start_28
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_36

    :catchall_2c
    move-exception p0

    :try_start_2d
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p0

    :cond_36
    :goto_36
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    goto :goto_11

    :cond_3c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getTableOfContents()Ljava/util/List;
    .registers 12

    const-string/jumbo v0, "PowerStatsStore"

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    :try_start_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_8a

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".pss"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_68

    if-nez v8, :cond_2d

    goto :goto_87

    :cond_2d
    :try_start_2d
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_37} :catch_73
    .catchall {:try_start_2d .. :try_end_37} :catchall_68

    :try_start_37
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v9

    if-eqz v9, :cond_4c

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :catchall_4a
    move-exception v6

    goto :goto_6a

    :cond_4c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Removing incompatible PowerStatsSpan file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_64
    .catchall {:try_start_37 .. :try_end_64} :catchall_4a

    :goto_64
    :try_start_64
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_67} :catch_73
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_87

    :catchall_68
    move-exception v0

    goto :goto_99

    :goto_6a
    :try_start_6a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v8

    :try_start_6f
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_72
    throw v6
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_73} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_73} :catch_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_68

    :catch_73
    :try_start_73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read PowerStatsSpan file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_8a
    sget-object v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_95
    .catchall {:try_start_73 .. :try_end_95} :catchall_68

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object v2

    :goto_99
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    throw v0
.end method

.method public final varargs loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;
    .registers 9

    const-string v0, "Cannot read PowerStatsSpan file: "

    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%019d"

    invoke-static {v4, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".pss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_48

    const/4 p2, 0x0

    if-nez p1, :cond_31

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object p2

    :cond_31
    :try_start_31
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3b} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_3b} :catch_4a
    .catchall {:try_start_31 .. :try_end_3b} :catchall_48

    :try_start_3b
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore;->mSectionReaders:Ljava/util/Map;

    invoke-static {p1, v1, v3, p3}, Lcom/android/server/power/stats/PowerStatsSpan;->read(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p3
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_4c

    :try_start_41
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_44} :catch_4a
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object p3

    :catchall_48
    move-exception p1

    goto :goto_6c

    :catch_4a
    move-exception p1

    goto :goto_56

    :catchall_4c
    move-exception p3

    :try_start_4d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    :try_start_52
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p3
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_56} :catch_4a
    .catchall {:try_start_52 .. :try_end_56} :catchall_48

    :goto_56
    :try_start_56
    const-string/jumbo p3, "PowerStatsStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_48

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-object p2

    :goto_6c
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    throw p1
.end method

.method public final lockStoreDirectory()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1b
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p0

    const-string/jumbo v0, "PowerStatsStore"

    const-string v1, "Cannot lock snapshot directory"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final removeOldSpansLocked()V
    .registers 12

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_2e

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v3, v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".pss"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_2e
    :goto_2e
    iget-wide v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mMaxStorageBytes:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_6d

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-nez v1, :cond_3b

    goto :goto_6d

    :cond_3b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_5b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot delete power stats span "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PowerStatsStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    goto :goto_2e

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final reset()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_3e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3b

    const-string/jumbo v4, "PowerStatsStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete power stats span "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :catchall_39
    move-exception v0

    goto :goto_46

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_3e
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_39

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-void

    :goto_46
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    throw v0
.end method

.method public final storeBatteryUsageStats(JLandroid/os/BatteryUsageStats;)V
    .registers 15

    const-string v1, "Cannot close BatteryUsageStats"

    const-string/jumbo v2, "PowerStatsStore"

    :try_start_5
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v8

    iget-object v3, v0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-object v10, v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;-><init>(JJJ)V

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats;)V

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_36

    :try_start_2c
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_36
    move-exception v0

    move-object p0, v0

    :try_start_38
    invoke-virtual {p3}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_41

    :catch_3c
    move-exception v0

    move-object p1, v0

    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    throw p0
.end method

.method public final storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V
    .registers 9

    const-string/jumbo v0, "PowerStatsStore"

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->lockStoreDirectory()V

    :try_start_6
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_21

    const-string p1, "Could not create a directory for power stats store"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_59
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1f

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-void

    :catchall_1f
    move-exception p1

    goto :goto_62

    :cond_21
    :try_start_21
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p1, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    iget-wide v2, v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsStore;->mStoreDir:Ljava/io/File;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%019d"

    invoke-static {v6, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsSpan;)V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mTableOfContents:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->removeOldSpansLocked()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_59
    .catchall {:try_start_21 .. :try_end_55} :catchall_1f

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-void

    :catch_59
    :try_start_59
    const-string p1, "Cannot write PowerStatsSpan file"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_1f

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    return-void

    :goto_62
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->unlockStoreDirectory()V

    throw p1
.end method

.method public final unlockStoreDirectory()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    invoke-interface {v1}, Ljava/nio/channels/Channel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_19
    .catchall {:try_start_1 .. :try_end_f} :catchall_17

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_17
    move-exception v1

    goto :goto_2a

    :catch_19
    move-exception v1

    :try_start_1a
    const-string/jumbo v2, "PowerStatsStore"

    const-string v3, "Cannot unlock snapshot directory"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2a
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
