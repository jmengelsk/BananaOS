.class public final synthetic Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

.field public final synthetic f$1:Landroid/service/rotationresolver/RotationResolutionRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iput-object p2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$1:Landroid/service/rotationresolver/RotationResolutionRequest;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$1:Landroid/service/rotationresolver/RotationResolutionRequest;

    check-cast p1, Landroid/service/rotationresolver/IRotationResolverService;

    sget v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    iget-object v0, v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIRotationResolverCallback:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

    invoke-interface {p1, v0, p0}, Landroid/service/rotationresolver/IRotationResolverService;->resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    return-void
.end method
