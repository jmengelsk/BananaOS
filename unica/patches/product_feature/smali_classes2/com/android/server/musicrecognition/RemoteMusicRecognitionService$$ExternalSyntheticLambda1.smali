.class public final synthetic Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    iput-object p2, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    iget-object p0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/media/musicrecognition/IMusicRecognitionService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v0}, Landroid/media/musicrecognition/IMusicRecognitionService;->getAttributionTag(Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;)V

    return-void
.end method
