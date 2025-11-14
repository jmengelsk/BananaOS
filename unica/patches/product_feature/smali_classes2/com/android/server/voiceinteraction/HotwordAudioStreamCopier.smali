.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final DEFAULT_COPY_BUFFER_LENGTH_BYTES:I = 0x8000

.field static final MAX_COPY_BUFFER_LENGTH_BYTES:I = 0x10000


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mDetectorType:I

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mVoiceInteractorAttributionTag:Ljava/lang/String;

.field public final mVoiceInteractorPackageName:Ljava/lang/String;

.field public final mVoiceInteractorUid:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;
    .registers 20

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    iget v5, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/4 v6, 0x0

    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    const/4 v4, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    return-object p1

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/voice/HotwordAudioStream;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    aget-object v9, v8, v2

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->buildUpon()Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/service/voice/HotwordAudioStream$Builder;->setAudioStreamParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/voice/HotwordAudioStream$Builder;->build()Landroid/service/voice/HotwordAudioStream;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-static {v9}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v11

    add-int/2addr v4, v11

    const-string/jumbo v11, "android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES"

    invoke-virtual {v9, v11}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    const v15, 0x8000

    if-eqz v12, :cond_a8

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-lt v9, v10, :cond_7c

    const/high16 v10, 0x10000

    if-le v9, v10, :cond_7a

    goto :goto_7c

    :cond_7a
    move v15, v9

    goto :goto_a8

    :cond_7c
    :goto_7c
    const/16 v10, 0x9

    iget v11, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    move v12, v9

    iget v9, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    move v13, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v2, v16

    invoke-static/range {v9 .. v14}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Attempted to set an invalid copy buffer length ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "HotwordAudioStreamCopier"

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    :goto_a8
    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->getInitialAudio()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v5, v2

    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    invoke-direct {v6, v2, v8, v15}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_35

    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HotwordDetectedResult@"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;-><init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->buildUpon()Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/HotwordDetectedResult$Builder;->build()Landroid/service/voice/HotwordDetectedResult;

    move-result-object v0

    return-object v0
.end method
