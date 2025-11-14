.class public abstract Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRootDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mScheduledFileDataMap:Ljava/util/Map;

.field public mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_35

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_34

    :cond_17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_34

    const-string p0, "AbstractProtoDiskReadWriter"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete file: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-void

    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public abstract protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
.end method

.method public abstract protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
.end method

.method public final read(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    new-instance v1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_58

    array-length v0, p1

    if-nez v0, :cond_11

    goto :goto_58

    :cond_11
    array-length v0, p1

    const/4 v1, 0x1

    const-string v2, "AbstractProtoDiskReadWriter"

    if-le v0, v1, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found multiple files with the same name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const/4 v0, 0x0

    aget-object p1, p1, v0

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_2d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_44

    :try_start_31
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;->read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_47

    if-eqz p1, :cond_46

    :try_start_40
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    move-exception p0

    goto :goto_53

    :cond_46
    return-object p0

    :catchall_47
    move-exception p0

    if-eqz p1, :cond_52

    :try_start_4a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception p1

    :try_start_4f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    throw p0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_44

    :goto_53
    const-string p1, "Failed to parse protobuf file."

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_58
    :goto_58
    const/4 p0, 0x0

    return-object p0
.end method

.method public final saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_49

    monitor-enter p0

    :try_start_a
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_45

    :cond_1d
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_28

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_28

    :catchall_26
    move-exception p1

    goto :goto_47

    :cond_28
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_26

    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :try_start_34
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1388

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_34 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    const-string p1, "AbstractProtoDiskReadWriter"

    const-string p2, "Failed to save data immediately."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_45
    :goto_45
    :try_start_45
    monitor-exit p0

    return-void

    :goto_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_26

    throw p1

    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public final declared-synchronized scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "AbstractProtoDiskReadWriter"

    const-string/jumbo p2, "Worker is shutdown, failed to schedule data saving."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    goto :goto_36

    :cond_1c
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1a

    if-eqz p1, :cond_22

    monitor-exit p0

    return-void

    :cond_22
    :try_start_22
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x1d4c0

    invoke-interface {p1, p2, v1, v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_1a

    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_1a

    throw p1
.end method

.method public final writeTo(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_c
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_2c

    :try_start_10
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;

    move-result-object p0

    invoke-interface {p0, v1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;->write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_27
    move-exception p0

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0

    :catch_2c
    move-exception p0

    const-string p1, "AbstractProtoDiskReadWriter"

    const-string p2, "Failed to write to protobuf file."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
