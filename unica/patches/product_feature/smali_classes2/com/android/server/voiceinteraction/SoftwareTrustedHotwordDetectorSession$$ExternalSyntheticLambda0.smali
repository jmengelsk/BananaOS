.class public final synthetic Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {p1}, Landroid/service/voice/ISandboxedDetectionService;->stopDetection()V

    return-void
.end method
