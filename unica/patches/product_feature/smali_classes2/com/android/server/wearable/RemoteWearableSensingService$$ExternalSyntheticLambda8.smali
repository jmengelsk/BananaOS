.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;->$r8$classId:I

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1}, Landroid/service/wearable/IWearableSensingService;->onValidatedByHotwordDetectionService()V

    return-void

    :pswitch_0
    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1}, Landroid/service/wearable/IWearableSensingService;->stopActiveHotwordAudio()V

    return-void

    :pswitch_1
    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1}, Landroid/service/wearable/IWearableSensingService;->killProcess()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
