.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$0:I

    iput p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$0:I

    iget v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;->f$3:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    sget v3, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1, v0, v1, v2, p0}, Landroid/service/wearable/IWearableSensingService;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
