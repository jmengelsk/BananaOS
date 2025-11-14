.class public final synthetic Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {p1, p0}, Landroid/service/voice/ISandboxedDetectionService;->detectWithVisualSignals(Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V

    return-void
.end method
