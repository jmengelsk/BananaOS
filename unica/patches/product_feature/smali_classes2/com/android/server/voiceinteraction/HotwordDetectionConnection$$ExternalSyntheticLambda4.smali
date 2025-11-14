.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Audio server died; restarting the HotwordDetectionService."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->initAudioFlinger()V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->restartProcessLocked()V

    iget v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2d

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    const/4 v3, 0x2

    if-eq v1, v3, :cond_25

    const/4 v3, 0x0

    goto :goto_25

    :cond_24
    move v3, v2

    :cond_25
    :goto_25
    const/16 v1, 0x1b0

    invoke-static {v1, v3, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2b

    throw p0
.end method
