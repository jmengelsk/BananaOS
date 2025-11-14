.class public final Lcom/android/server/pdb/PersistentDataBlockService$InternalService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pdb/PersistentDataBlockManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    return-void
.end method


# virtual methods
.method public final clearTestHarnessModeData()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v1

    const/16 v3, 0x270c

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(IJ)[B

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    new-array v1, v1, [B

    :cond_11
    array-length v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    return-void
.end method

.method public final readInternal(IJ)[B
    .registers 8

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    if-eqz v0, :cond_59

    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v3, v3, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1b} :catch_50

    :try_start_1b
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_42
    .catchall {:try_start_1b .. :try_end_20} :catchall_40

    :try_start_20
    invoke-virtual {v0, p2, p3}, Ljava/io/DataInputStream;->skip(J)J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    if-lez p2, :cond_38

    if-le p2, p1, :cond_2c

    goto :goto_38

    :cond_2c
    new-array p1, p2, [B

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_36

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catchall_36
    move-exception p1

    goto :goto_3e

    :cond_38
    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_36

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    return-object p0

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_36

    :try_start_3f
    throw p1
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_40} :catch_42
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p0

    goto :goto_4c

    :catch_42
    move-exception p0

    :try_start_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not readable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_40

    :goto_4c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catch_50
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "persistent partition not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "invalid checksum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeDataBuffer(JLjava/nio/ByteBuffer;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v2, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_10

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return v3

    :catchall_e
    move-exception p0

    goto :goto_4f

    :cond_10
    :try_start_10
    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_21} :catch_36
    .catchall {:try_start_10 .. :try_end_21} :catchall_e

    :try_start_21
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_38

    :try_start_2b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_36
    .catchall {:try_start_2b .. :try_end_2e} :catchall_e

    :try_start_2e
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_e

    return p0

    :catch_36
    move-exception p0

    goto :goto_44

    :catchall_38
    move-exception p0

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p1

    :try_start_40
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw p0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_36
    .catchall {:try_start_40 .. :try_end_44} :catchall_e

    :goto_44
    :try_start_44
    const-string/jumbo p1, "PersistentDataBlockService"

    const-string/jumbo p2, "unable to access persistent partition"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return v3

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_e

    throw p0
.end method

.method public final writeInternal(J[BI)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_a

    array-length v2, p3

    if-lez v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    const-string/jumbo v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_18

    array-length v2, p3

    if-gt v2, p4, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :cond_18
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "data must not be longer than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    if-nez p3, :cond_33

    goto :goto_34

    :cond_33
    array-length v1, p3

    :goto_34
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_3c

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3c
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    return-void
.end method
