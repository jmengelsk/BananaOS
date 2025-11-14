.class public final Lcom/android/server/media/MediaSessionService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/MediaCommunicationManager$SessionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    return-void
.end method


# virtual methods
.method public final onSession2TokenCreated(Landroid/media/Session2Token;I)V
    .locals 2

    sget p2, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    const-string/jumbo p2, "MediaSessionService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session2 is created "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/server/media/MediaSession2Record;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mRecordThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/media/MediaSession2Record;-><init>(Landroid/media/Session2Token;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p2}, Lcom/android/server/media/MediaSession2Record;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
