.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/RemoteCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$0:I

    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    iput p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$4:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 6

    iget v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$0:I

    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    iget v3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$2:I

    iget-object v4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$4:Landroid/os/RemoteCallback;

    move-object v0, p1

    check-cast v0, Landroid/service/wearable/IWearableSensingService;

    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface/range {v0 .. v5}, Landroid/service/wearable/IWearableSensingService;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
