.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;
.super Landroid/service/voice/IDetectorSessionStorageService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Landroid/service/voice/IDetectorSessionStorageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "BinderCallback#onFileOpen"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
