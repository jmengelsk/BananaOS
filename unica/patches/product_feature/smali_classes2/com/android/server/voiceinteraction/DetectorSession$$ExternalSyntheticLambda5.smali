.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/os/PersistableBundle;

.field public final synthetic f$1:Landroid/os/SharedMemory;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;->f$0:Landroid/os/PersistableBundle;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;->f$1:Landroid/os/SharedMemory;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;->f$0:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda5;->f$1:Landroid/os/SharedMemory;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Landroid/service/voice/ISandboxedDetectionService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method
