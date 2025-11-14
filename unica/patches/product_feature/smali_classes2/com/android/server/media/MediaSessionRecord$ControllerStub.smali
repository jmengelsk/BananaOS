.class public final Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRecord:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    if-nez v0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final fastForward(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:fastForward"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onFastForward(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in fastForward."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFlags()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public final getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final getMetadata()Landroid/media/MediaMetadata;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public final getQueue()Landroid/content/pm/ParceledListSlice;
    .locals 3

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v1, "Ignoring call to destroyed session"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getRatingType()I
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p0
.end method

.method public final getSessionInfo()Landroid/os/Bundle;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 8

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public final next(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:next"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onNext(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in next."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final pause(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:pause"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onPause(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in pause."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final play(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:play"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onPlay(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in play."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:playFromMediaId"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in playFromMediaId."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:playFromSearch"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in playFromSearch."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:playFromUri"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in playFromUri."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final prepare(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:prepare"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onPrepare(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in prepare."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:prepareFromMediaId"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in prepareFromMediaId."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:prepareFromSearch"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in prepareFromSearch."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:prepareFromUri"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in prepareFromUri."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final previous(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:previous"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onPrevious(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in previous."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final rate(Ljava/lang/String;Landroid/media/Rating;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:rate"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8, p2}, Landroid/media/session/ISessionCallback;->onRate(Ljava/lang/String;IILandroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in rate."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    const-string/jumbo v0, "registering controller callback "

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v2

    if-gez v2, :cond_2

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    new-instance v3, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p2}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V

    invoke-direct {v2, p2, p1, v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;)V

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MediaSessionRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from controller"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionRecord;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    const-string/jumbo p0, "MediaSessionRecord"

    const-string/jumbo p2, "registerCallback failed to linkToDeath"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    monitor-exit v1

    :catch_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final rewind(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:rewind"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onRewind(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in rewind."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final seekTo(Ljava/lang/String;J)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:seekTo"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-wide v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onSeekTo(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in seekTo."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "MediaSessionRecord:"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in sendCommand."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "MediaSessionRecord:custom-"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in sendCustomAction."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z
    .locals 10

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const/4 v1, 0x0

    const-string/jumbo v2, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "action="

    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v3, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";code="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v4, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    move-object v0, v4

    iget v4, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object v7, p1

    :goto_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-interface {p0, v7, v5, v9, p1}, Landroid/media/session/ISessionCallback;->onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_1
    const-string/jumbo p1, "Remote failure in sendMediaRequest."

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final setPlaybackSpeed(Ljava/lang/String;F)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:setPlaybackSpeed"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8, p2}, Landroid/media/session/ISessionCallback;->onSetPlaybackSpeed(Ljava/lang/String;IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in setPlaybackSpeed."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    if-nez v0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-object v4, p1

    move-object v5, p2

    move v3, p3

    move v6, p4

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(IIILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final skipToQueueItem(Ljava/lang/String;J)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:skipToTrack"

    move-object v6, p1

    move v8, v5

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    move v5, v8

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-wide v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionCallback;->onSkipToTrack(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in skipToTrack"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final stop(Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v1, "MediaSessionRecord"

    if-nez p0, :cond_0

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "MediaSessionRecord:stop"

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {p0, v6, v4, v8}, Landroid/media/session/ISessionCallback;->onStop(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "Remote failure in stop."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_0

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method
