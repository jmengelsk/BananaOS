.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;
.super Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

.field public final synthetic this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    return-void
.end method


# virtual methods
.method public final onRecognitionFailed(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    invoke-interface {v0, p1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    return-void
.end method

.method public final onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->sanitizeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    return-void
.end method
