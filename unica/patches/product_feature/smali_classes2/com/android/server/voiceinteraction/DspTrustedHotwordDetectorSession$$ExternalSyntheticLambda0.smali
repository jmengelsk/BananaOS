.class public final synthetic Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic f$3:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

.field public final synthetic f$4:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v8, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;

    move-object v3, p1

    check-cast v3, Landroid/service/voice/ISandboxedDetectionService;

    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V

    const-wide/16 v1, 0xfa0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v1, v2, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-interface/range {v3 .. v8}, Landroid/service/voice/ISandboxedDetectionService;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    return-void
.end method
