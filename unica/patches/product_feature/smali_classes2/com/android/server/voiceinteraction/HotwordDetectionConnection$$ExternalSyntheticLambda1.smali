.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Lcom/android/server/voiceinteraction/DetectorSession;

    packed-switch p0, :pswitch_data_30

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "setDebugHotwordLoggingLocked: false"

    const-string v0, "DetectorSession"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    return-void

    :pswitch_16  #0x1
    instance-of p0, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    if-nez p0, :cond_2a

    new-instance p0, Landroid/service/voice/HotwordDetectionServiceFailure;

    const/16 v0, 0xa

    const-string/jumbo v1, "Shutdown hotword detection service on voice activation op disabled!"

    invoke-direct {p0, v0, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    :cond_2a
    return-void

    :pswitch_2b  #0x0
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_16  #00000001
    .end packed-switch
.end method
