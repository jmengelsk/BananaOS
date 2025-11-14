.class public final Lcom/android/server/voiceinteraction/DetectorSession$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v2, "DetectorSession"

    const/4 v3, 0x3

    if-eqz v0, :cond_31

    const-string/jumbo p1, "call callback after timeout"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    if-eq p1, v3, :cond_cd

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v0, 0x5

    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    return-void

    :cond_31
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez p1, :cond_45

    new-instance p1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_75

    :cond_45
    const-string/jumbo v7, "initialization_status"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Landroid/service/voice/HotwordDetectionService;->getMaxCustomInitializationStatus()I

    move-result v7

    if-le p1, v7, :cond_62

    new-instance v7, Landroid/util/Pair;

    if-ne p1, v0, :cond_58

    move p1, v6

    goto :goto_59

    :cond_58
    move p1, v3

    :goto_59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v7, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v7

    goto :goto_75

    :cond_62
    if-nez p1, :cond_66

    move v0, v5

    goto :goto_67

    :cond_66
    move v0, v1

    :goto_67
    new-instance v4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v4

    :goto_75
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :try_start_85
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v4, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    if-eq v0, v3, :cond_cd

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    if-eq v0, v1, :cond_a5

    if-eq v0, v6, :cond_a4

    move v1, v5

    goto :goto_a5

    :cond_a4
    move v1, v6

    :cond_a5
    :goto_a5
    const/16 v0, 0x1af

    invoke-static {v0, v1, p1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_aa} :catch_ab

    return-void

    :catch_ab
    move-exception p1

    const-string v0, "Failed to report initialization status: "

    invoke-static {v0, p1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    if-eq p1, v3, :cond_c8

    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0xe

    invoke-static {p1, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    :cond_c8
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    :cond_cd
    return-void
.end method
