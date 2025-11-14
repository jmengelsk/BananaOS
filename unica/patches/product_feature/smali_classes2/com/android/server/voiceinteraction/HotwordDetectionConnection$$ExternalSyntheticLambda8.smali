.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/speech/IRecognitionServiceManager;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->updateRecognitionServiceManager(Landroid/speech/IRecognitionServiceManager;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/os/IBinder;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->updateAudioFlinger(Landroid/os/IBinder;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/view/contentcapture/IContentCaptureManager;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    new-instance v0, Landroid/content/ContentCaptureOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p1, p0, v0}, Landroid/service/voice/ISandboxedDetectionService;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
