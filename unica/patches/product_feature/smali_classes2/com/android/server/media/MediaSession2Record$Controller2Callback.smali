.class public final Lcom/android/server/media/MediaSession2Record$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSession2Record;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSession2Record;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .locals 2

    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "MediaSession2Record"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "connected to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    iget-object p2, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDisconnected(Landroid/media/MediaController2;)V
    .locals 2

    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "MediaSession2Record"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "disconnected from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .locals 2

    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "MediaSession2Record"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "playback active changed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p2, p1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
