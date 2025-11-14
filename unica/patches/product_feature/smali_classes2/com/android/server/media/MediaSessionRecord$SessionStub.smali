.class public final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRecord:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final destroySession()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_17
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v3, v2, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_27

    :try_start_1c
    invoke-virtual {v2, p0}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getBinderForSetQueue()Landroid/os/IBinder;
    .registers 4

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_14

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_14
    new-instance v0, Landroid/media/session/ParcelableListBinder;

    const-class v1, Landroid/media/session/MediaSession$QueueItem;

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    invoke-direct {v0, v1, v2}, Landroid/media/session/ParcelableListBinder;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final getController()Landroid/media/session/ISessionController;
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_14

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_14
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object p0
.end method

.method public final resetQueue()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string v0, "Ignoring call to destroyed session"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_17
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    if-nez p2, :cond_19

    const/4 p2, 0x0

    goto :goto_1f

    :cond_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p2, v0

    :goto_1f
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setActive(Z)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x4

    if-eqz p1, :cond_2a

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v2, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    goto :goto_35

    :cond_2a
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v2, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    :goto_35
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_61

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_41
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_48
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Landroid/media/session/PlaybackState;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_59

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_59
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0

    :catchall_61
    move-exception p0

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public final setCurrentVolume(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    goto :goto_20

    :cond_1a
    :try_start_1a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_20
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2a

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final setFlags(I)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_37

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v3, v3, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_37

    :cond_2e
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    int-to-long v1, p1

    iput-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    if-eqz v0, :cond_4e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_40
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_49

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4e

    :catchall_49
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4e
    :goto_4e
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public final setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    .registers 14

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v0, "MediaSessionRecord"

    if-nez p0, :cond_13

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const-string/jumbo v1, "setMediaButtonBroadcastReceiver(): Ignoring invalid component name="

    const-string v2, "Invalid component name: "

    const-string/jumbo v3, "receiver does not belong to package name provided to MediaSessionRecord. Pkg = "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    if-eqz p1, :cond_67

    :try_start_25
    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_67

    :cond_32
    const-string v0, "238177121"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Receiver Pkg = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_65
    move-exception p0

    goto :goto_de

    :cond_67
    :goto_67
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I
    :try_end_69
    .catchall {:try_start_25 .. :try_end_69} :catchall_65

    const/4 v7, 0x1

    and-int/2addr v3, v7

    if-eqz v3, :cond_71

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_71
    :try_start_71
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v9, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v10

    invoke-virtual {v3, v9, v10, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_cb

    const-wide/32 v7, 0x1018a063

    invoke-static {v7, v8, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_b9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_71 .. :try_end_b5} :catchall_65

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_b9
    :try_start_b9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cb
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    new-instance v1, Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1, v7}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_da
    .catchall {:try_start_b9 .. :try_end_da} :catchall_65

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_de
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    const-string/jumbo v0, "MediaSessionRecord"

    if-nez p0, :cond_13

    const-string p0, "Ignoring call to destroyed session"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1b
    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_3f

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_25
    if-eqz p1, :cond_4a

    :try_start_27
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_4a

    const-wide/32 p0, 0x1041a3ac

    invoke-static {p0, p1, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_41

    const-string p0, "Ignoring invalid media button receiver targeting an activity."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_3f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p0

    goto :goto_5d

    :cond_41
    :try_start_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "The media button receiver cannot be set to an activity."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->create(Ljava/lang/String;Landroid/app/PendingIntent;I)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_3f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    iput-wide p2, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->sanitizeMediaMetadata(Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_28

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    :goto_1e
    if-nez p1, :cond_22

    move v2, v1

    goto :goto_26

    :cond_22
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    :goto_26
    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_48
    const/4 v1, 0x1

    :cond_49
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4e
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_75

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_55
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_72

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5c
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;ZLandroid/media/session/PlaybackState;)V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_6d

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_6d
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_72
    move-exception p0

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0

    :catchall_75
    move-exception p0

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public final setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iput v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    if-eqz p1, :cond_2b

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    goto :goto_34

    :catchall_29
    move-exception p0

    goto :goto_51

    :cond_2b
    const-string/jumbo p1, "MediaSessionRecord"

    const-string/jumbo v2, "Received null audio attributes, using existing attributes"

    invoke-static {p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_29

    if-eqz v1, :cond_50

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_3b
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_4b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_4b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_50
    return-void

    :goto_51
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_29

    throw p0
.end method

.method public final setPlaybackToRemote(IILjava/lang/String;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_43

    if-eqz v2, :cond_42

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_2d
    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p3, p0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_3d

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_3d
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_42
    return-void

    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public final setRatingType(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->mRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaSessionRecord;

    if-nez p0, :cond_13

    const-string/jumbo p0, "MediaSessionRecord"

    const-string p1, "Ignoring call to destroyed session"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return-void
.end method
