.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_1e

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/ISandboxedDetectionService;->ping(Landroid/service/voice/ISandboxedDetectionService$IPingMe;)V

    return-void

    :pswitch_15  #0x0
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V

    invoke-interface {p1, v0}, Landroid/service/voice/ISandboxedDetectionService;->registerRemoteStorageService(Landroid/service/voice/IDetectorSessionStorageService;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15  #00000000
    .end packed-switch
.end method
