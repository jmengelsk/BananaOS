.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mAudioSink:Landroid/os/ParcelFileDescriptor;

.field public final mAudioSource:Landroid/os/ParcelFileDescriptor;

.field public final mCopyBufferLength:I

.field public final mDetectorType:I

.field public final mStreamTaskId:Ljava/lang/String;

.field public volatile mTotalCopiedBytes:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;III)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSource:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSink:Landroid/os/ParcelFileDescriptor;

    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mCopyBufferLength:I

    iput p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mDetectorType:I

    iput p6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mUid:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 13

    const-string v1, "HotwordAudioStreamCopier"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Copy-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1a
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSource:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_8a
    .catchall {:try_start_1a .. :try_end_21} :catchall_86

    :try_start_21
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v4, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_83
    .catchall {:try_start_21 .. :try_end_28} :catchall_7f

    :try_start_28
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mCopyBufferLength:I

    new-array v0, v0, [B

    :cond_2c
    :goto_2c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": SingleAudioStreamCopyTask task was interrupted"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :catchall_49
    move-exception v0

    move-object p0, v0

    :goto_4b
    move-object v2, v3

    goto/16 :goto_ca

    :catch_4e
    move-exception v0

    goto :goto_8d

    :cond_50
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Reached end of audio stream"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6c} :catch_4e
    .catchall {:try_start_28 .. :try_end_6c} :catchall_49

    :goto_6c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :goto_6f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_c9

    :cond_73
    if-lez v5, :cond_2c

    const/4 v6, 0x0

    :try_start_76
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    iget v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7e} :catch_4e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_49

    goto :goto_2c

    :catchall_7f
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    goto :goto_4b

    :catch_83
    move-exception v0

    move-object v4, v2

    goto :goto_8d

    :catchall_86
    move-exception v0

    move-object p0, v0

    move-object v4, v2

    goto :goto_ca

    :catch_8a
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    :goto_8d
    :try_start_8d
    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSource:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSink:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Failed to copy audio stream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mDetectorType:I

    iget v8, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mUid:I

    const/16 v7, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_c1
    .catchall {:try_start_8d .. :try_end_c1} :catchall_49

    if-eqz v3, :cond_c6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_c6
    if-eqz v4, :cond_c9

    goto :goto_6f

    :cond_c9
    :goto_c9
    return-object v2

    :goto_ca
    if-eqz v2, :cond_cf

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_cf
    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_d4
    throw p0
.end method
