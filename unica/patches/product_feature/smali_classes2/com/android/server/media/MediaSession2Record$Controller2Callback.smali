.class public final Lcom/android/server/media/MediaSession2Record$Controller2Callback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSession2Record;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSession2Record;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .registers 5

    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    if-eqz p1, :cond_25

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

    :cond_25
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2a
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    iget-object p2, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_37

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V

    return-void

    :catchall_37
    move-exception p0

    :try_start_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final onDisconnected(Landroid/media/MediaController2;)V
    .registers 4

    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    if-eqz p1, :cond_1d

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

    :cond_1d
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_22
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_35

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2d
    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    monitor-exit v1

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw p0

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final onPlaybackActiveChanged(Landroid/media/MediaController2;Z)V
    .registers 5

    sget-boolean p1, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    if-eqz p1, :cond_25

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

    :cond_25
    iget-object p1, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object p1, p1, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2a
    iget-object p0, p0, Lcom/android/server/media/MediaSession2Record$Controller2Callback;->this$0:Lcom/android/server/media/MediaSession2Record;

    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_34

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p2, p1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V

    return-void

    :catchall_34
    move-exception p0

    :try_start_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method
