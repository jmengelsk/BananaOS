.class public final Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;
.super Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttributionTag(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;->val$attributionTagFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
