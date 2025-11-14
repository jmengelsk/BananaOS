.class public final synthetic Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

.field public final synthetic f$1:Landroid/media/musicrecognition/RecognitionRequest;

.field public final synthetic f$2:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

.field public final synthetic f$3:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/media/musicrecognition/RecognitionRequest;

    iput-object p3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$2:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    iput-object p4, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$3:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/media/musicrecognition/RecognitionRequest;

    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$2:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$3:Landroid/os/ParcelFileDescriptor;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getMaxAudioLengthSeconds()I

    move-result v3

    const/16 v4, 0x18

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string/jumbo v4, "MusicRecognitionManagerPerUserService"

    if-gtz v3, :cond_0

    const-string/jumbo p1, "No audio requested. Closing stream."

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-interface {v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Problem closing stream."

    invoke-static {v4, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->startRecordAudioOp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, v3

    new-instance v6, Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v8

    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getCaptureSession()I

    move-result v9

    invoke-direct {v6, v7, v8, v5, v9}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    :try_start_2
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, v1, v3, v6, v5}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->streamAudio(Landroid/media/musicrecognition/RecognitionRequest;ILandroid/media/AudioRecord;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    invoke-virtual {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    :try_start_5
    invoke-interface {v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    const-string v1, "Audio streaming stopped."

    invoke-static {v4, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    invoke-virtual {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    :try_start_9
    invoke-interface {v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :goto_2
    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    invoke-virtual {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    :try_start_a
    invoke-interface {v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    throw p0

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RECORD_AUDIO op not permitted on behalf of "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    :try_start_b
    invoke-interface {v2, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    :goto_3
    return-void
.end method
