.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCopyTaskInfos:Ljava/util/List;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mResultTaskId:Ljava/lang/String;

.field public final mShouldNotifyAppOpsManager:Z

.field public final mTotalInitialAudioSizeBytes:I

.field public final mTotalMetadataSizeBytes:I

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    iput p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    iput-boolean p6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    return-void
.end method


# virtual methods
.method public final bestEffortPropagateError(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSource:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSink:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget v0, p1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v2, p1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Failed to propagate error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HotwordAudioStreamCopier"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, " bytes NOT streamed), total metadata bundle size bytes: "

    const-string v3, " (including "

    const-string v4, "HotwordAudioStreamCopier"

    const-string/jumbo v5, "android:record_audio_hotword"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Copy-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    move v0, v13

    :goto_0
    if-ge v0, v11, :cond_0

    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v14, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    iget-object v7, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSource:Landroid/os/ParcelFileDescriptor;

    iget-object v8, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSink:Landroid/os/ParcelFileDescriptor;

    iget v6, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mCopyBufferLength:I

    iget-object v9, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget v10, v9, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v9, v9, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    move/from16 v18, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v20, v9

    move/from16 v19, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;III)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-object v14, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget-object v7, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    const-string/jumbo v19, "Streaming hotword audio to VoiceInteractionService"

    const-string/jumbo v15, "android:record_audio_hotword"

    move-object/from16 v18, v0

    move/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v14 .. v19}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/4 v10, 0x0

    const/4 v7, 0x4

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to obtain RECORD_AUDIO_HOTWORD permission for voice interactor with uid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget v2, v2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attributionTag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->bestEffortPropagateError(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget v9, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    const/4 v7, 0x1

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    iget v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v0

    move v0, v13

    :goto_1
    if-ge v0, v6, :cond_2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    check-cast v7, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    iget v7, v7, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    add-int/2addr v9, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Task was completed. Total bytes egressed: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_1
    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v6

    :goto_3
    if-ge v13, v7, :cond_3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v13, v13, 0x1

    check-cast v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    iget v6, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    add-int/2addr v9, v6

    goto :goto_3

    :cond_3
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget v7, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v8, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    move v6, v7

    const/4 v7, 0x3

    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Task was interrupted. Total bytes egressed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->bestEffortPropagateError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :goto_4
    iget-boolean v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    iget-object v4, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v0
.end method
