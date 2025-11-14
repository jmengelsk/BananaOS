.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field public final mVoiceInteractorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/media/permission/Identity;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    return-void
.end method


# virtual methods
.method public final onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return-void
.end method

.method public final onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v0, v0, Landroid/media/permission/Identity;->uid:I

    const/4 v2, 0x1

    const/16 v3, 0x1b1

    invoke-static {v3, v2, v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    sget-boolean v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v4, v0, Landroid/media/permission/Identity;->uid:I

    iget-object v5, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    const-string/jumbo v7, "Non-HDS keyphrase recognition to VoiceInteractionService"

    const/16 v3, 0x66

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "onKeyphraseDetected suppressed, permission check returned: "

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionPaused()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    iget v0, v0, Landroid/media/permission/Identity;->uid:I

    invoke-static {v1, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    return-void
.end method

.method public final onModuleDied()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    const/4 v1, 0x1

    const-string/jumbo v2, "STHAL died"

    invoke-direct {v0, v1, v2}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    return-void
.end method

.method public final onPauseFailed(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    const-string/jumbo v1, "STService recognition pause failed with: "

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    return-void
.end method

.method public final onPreempted()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    const/4 v1, 0x3

    const-string/jumbo v2, "Unexpected startRecognition on already started ST session"

    invoke-direct {v0, v1, v2}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    return-void
.end method

.method public final onRecognitionPaused()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionPaused()V

    return-void
.end method

.method public final onRecognitionResumed()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRecognitionResumed()V

    return-void
.end method

.method public final onResumeFailed(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$SoundTriggerCallback;->mExternalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    new-instance v0, Landroid/service/voice/SoundTriggerFailure;

    const-string/jumbo v1, "STService recognition resume failed with: "

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    return-void
.end method
