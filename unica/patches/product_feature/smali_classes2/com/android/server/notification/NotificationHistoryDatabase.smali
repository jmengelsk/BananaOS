.class public final Lcom/android/server/notification/NotificationHistoryDatabase;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field mBuffer:Landroid/app/NotificationHistory;

.field public final mCurrentVersion:I

.field public final mFileWriteHandler:Landroid/os/Handler;

.field public final mHistoryDir:Ljava/io/File;

.field final mHistoryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mUris:Ljava/util/ArrayList;

.field public final mVersionFile:Ljava/io/File;

.field public final mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mUris:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "version"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "history"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    new-instance p1, Landroid/app/NotificationHistory;

    invoke-direct {p1}, Landroid/app/NotificationHistory;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    new-instance p1, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    return-void
.end method

.method public static readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 6

    const-string v0, "Cannot open "

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_12
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_f
    return-void

    :catchall_10
    move-exception p0

    goto :goto_2e

    :catch_12
    move-exception p1

    :try_start_13
    const-string/jumbo p2, "NotiHistoryDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p1
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_10

    :goto_2e
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_33
    throw p0
.end method


# virtual methods
.method public final addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, p1}, Landroid/app/NotificationHistory;->addNewNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_2f

    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2d

    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    const-wide/32 v1, 0x124f80

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_18

    throw p0
.end method

.method public final checkVersionAndBuildLocked()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_22

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    goto :goto_23

    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    const/4 v1, 0x0

    :goto_23
    iget v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    if-eq v1, v0, :cond_67

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_67

    :try_start_2f
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_58

    :try_start_3b
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_4e

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_58

    goto :goto_67

    :catchall_4e
    move-exception p0

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v0

    :try_start_54
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw p0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_58} :catch_58

    :catch_58
    move-exception p0

    const-string/jumbo v0, "NotiHistoryDatabase"

    const-string v1, "Failed to write new version"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_67
    :goto_67
    return-void
.end method

.method public final deleteFile(Landroid/util/AtomicFile;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Removed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-virtual {p1}, Landroid/util/AtomicFile;->delete()V

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2f

    goto :goto_54

    :cond_2f
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_54
    :goto_54
    invoke-static {}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->deleteRows(J)Z

    return-void
.end method

.method public final init()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_21

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "could not create history directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1d
    move-exception p0

    goto :goto_61

    :catch_1f
    move-exception v1

    goto :goto_27

    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_1f
    .catchall {:try_start_3 .. :try_end_26} :catchall_1d

    goto :goto_30

    :goto_27
    :try_start_27
    const-string/jumbo v2, "NotiHistoryDatabase"

    const-string/jumbo v3, "could not create needed files"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->checkVersionAndBuildLocked()V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_41

    goto :goto_5c

    :cond_41
    new-instance v2, Lcom/android/server/notification/NotificationHistoryDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4b
    if-ge v3, v2, :cond_5c

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->prune()V

    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_27 .. :try_end_62} :catchall_1d

    throw p0
.end method

.method public final prune()V
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-ltz v0, :cond_71

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_61

    :try_start_2e
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_32} :catch_33
    .catchall {:try_start_2e .. :try_end_32} :catchall_61

    goto :goto_35

    :catch_33
    const-wide/16 v4, -0x1

    :goto_35
    :try_start_35
    sget-boolean v6, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v6, :cond_63

    const-string/jumbo v6, "NotiHistoryDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " created on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :catchall_61
    move-exception p0

    goto :goto_73

    :cond_63
    :goto_63
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6e

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteFile(Landroid/util/AtomicFile;)V

    :cond_6e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_71
    monitor-exit v2

    return-void

    :goto_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_35 .. :try_end_74} :catchall_61

    throw p0
.end method

.method public final readNotificationHistory()Landroid/app/NotificationHistory;
    .registers 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_32

    :try_start_1f
    new-instance v3, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    const v5, 0x7fffffff

    iput v5, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    iput-object v4, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_34
    .catchall {:try_start_1f .. :try_end_31} :catchall_32

    goto :goto_13

    :catchall_32
    move-exception p0

    goto :goto_58

    :catch_34
    move-exception v3

    :try_start_35
    const-string/jumbo v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_56
    monitor-exit v0

    return-object v1

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_35 .. :try_end_59} :catchall_32

    throw p0
.end method

.method public final readNotificationHistoryForDump(Ljava/lang/String;)Landroid/app/NotificationHistory;
    .registers 10

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    const/16 v3, 0x14

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/NotificationHistory;->addNotificationsForDump(Landroid/app/NotificationHistory;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_37

    :try_start_21
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object p1, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    iput v3, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_39
    .catchall {:try_start_21 .. :try_end_34} :catchall_37

    if-ne v3, v2, :cond_15

    goto :goto_5b

    :catchall_37
    move-exception p0

    goto :goto_5d

    :catch_39
    move-exception v4

    :try_start_3a
    const-string/jumbo v5, "NotiHistoryDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error reading(for dump) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :cond_5b
    :goto_5b
    monitor-exit v0

    return-object v1

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3a .. :try_end_5e} :catchall_37

    throw p0
.end method

.method public final readNotificationHistoryForPackage(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .registers 11

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, v2, p3, p1}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_34

    :try_start_1f
    new-instance v3, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p2, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    iput p1, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    iput-object p3, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_36
    .catchall {:try_start_1f .. :try_end_31} :catchall_34

    if-ne p1, v2, :cond_13

    goto :goto_58

    :catchall_34
    move-exception p0

    goto :goto_5a

    :catch_36
    move-exception v3

    :try_start_37
    const-string/jumbo v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_58
    :goto_58
    monitor-exit v0

    return-object v1

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_34

    throw p0
.end method

.method public final readNotificationHistoryWithNullKeyHandling(ILjava/lang/String;)Landroid/app/NotificationHistory;
    .registers 10

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, v2, p2, p1}, Landroid/app/NotificationHistory;->addNotificationsToWriteForPkgName(Landroid/app/NotificationHistory;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_35

    :try_start_1f
    new-instance v3, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p2, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    iput p1, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_37
    .catchall {:try_start_1f .. :try_end_32} :catchall_35

    if-ne p1, v2, :cond_13

    goto :goto_59

    :catchall_35
    move-exception p0

    goto :goto_5b

    :catch_37
    move-exception v3

    :try_start_38
    const-string/jumbo v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_59
    :goto_59
    monitor-exit v0

    return-object v1

    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_38 .. :try_end_5c} :catchall_35

    throw p0
.end method

.method public final updateCancelEvent(Ljava/lang/String;Z)V
    .registers 10

    const-string/jumbo v0, "updateCancelEvent key = "

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v2, p1, p2}, Landroid/app/NotificationHistory;->updateNotificationToWrite(Ljava/lang/String;Z)Z

    const-string/jumbo v2, "NotiHistoryDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_50

    :try_start_2f
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    const v6, 0x7fffffff

    iput v6, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    invoke-virtual {v3, p1, p2}, Landroid/app/NotificationHistory;->updateNotificationToWrite(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4f} :catch_52
    .catchall {:try_start_2f .. :try_end_4f} :catchall_50

    goto :goto_23

    :catchall_50
    move-exception p0

    goto :goto_75

    :catch_52
    move-exception v3

    :try_start_53
    const-string/jumbo v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on conversation removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :cond_73
    monitor-exit v1

    return-void

    :goto_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_53 .. :try_end_76} :catchall_50

    throw p0
.end method

.method public final writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    .registers 4

    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    :try_start_4
    iget p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    invoke-static {v0, p2, p0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_11
    move-exception p0

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0
.end method
