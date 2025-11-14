.class public final Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final completeSignal:Ljava/util/concurrent/CountDownLatch;

.field public final mediaPlayer:Landroid/media/MediaPlayer;

.field public running:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->running:Z

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string/jumbo p1, "Shutdown-SoundPlayer"

    const-string v0, "!@onCompletion(MediaPlayer arg0) called !!"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final run()V
    .registers 8

    const-string/jumbo v0, "Set sound complete audioParam awaitResult = "

    iget-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

    const-string/jumbo v2, "Shutdown-SoundPlayer"

    if-nez v1, :cond_11

    const-string/jumbo p0, "MediaPlayer is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const-string/jumbo v1, "Start play sound file"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1f} :catch_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_2d

    :catch_20
    const-string/jumbo v1, "sound thread exception"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :catch_27
    const-string/jumbo v1, "sound thread IllegalStateException"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "g_shutdown_suspend=suspend"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string v0, "H/W workaround. wait 1000ms before power off"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    move-exception v0

    const-string/jumbo v1, "Wait fail"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->running:Z

    const-string/jumbo p0, "Shutdown sound done"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
