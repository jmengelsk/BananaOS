.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "f2ec48a74490bf9d5675f48cb89ecdb3e5cd9c35"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final modelUnloaded(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    return-void
.end method

.method public final phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 4

    iget-object v0, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    iget v2, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;-><init>()V

    iput-object p2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    return-void
.end method

.method public final recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .locals 3

    iget-boolean v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    iget v1, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionEventSys;-><init>()V

    iput-object p2, v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->halEventReceivedMillis:J

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    return-void
.end method
