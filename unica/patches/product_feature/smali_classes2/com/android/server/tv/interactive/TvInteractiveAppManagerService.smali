.class public Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mGetAdServiceListCalled:Z

.field public mGetAppLinkInfoListCalled:Z

.field public mGetServiceListCalled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageMonitor:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$MyPackageMonitor;

.field public final mRunningProfiles:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z
    .locals 4

    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-interface {p2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p2

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;[Landroid/view/InputChannel;)V

    const/4 p0, 0x1

    :try_start_0
    aget-object v1, p2, p0

    iget-object v2, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mType:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/media/tv/ad/ITvAdService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in createSession"

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    iget-object v0, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    iget p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    const/4 p1, 0x0

    :goto_0
    aget-object p0, p2, p0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return p1
.end method

.method public static -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z
    .locals 4

    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-interface {p2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p2

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;[Landroid/view/InputChannel;)V

    const/4 p0, 0x1

    :try_start_0
    aget-object v1, p2, p0

    iget-object v2, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    iget v3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mType:I

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "TvInteractiveAppManagerService"

    const-string/jumbo v1, "error in createSession"

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget-object v0, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    iget p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    const/4 p1, 0x0

    :goto_0
    aget-object p0, p2, p0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return p1
.end method

.method public static -$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service state not found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (userId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mreleaseAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/media/tv/ad/ITvAdSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    invoke-interface {v1}, Landroid/media/tv/ad/ITvAdSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p2, v0

    :goto_1
    :try_start_2
    const-string/jumbo v2, "TvInteractiveAppManagerService"

    const-string/jumbo v3, "error in releaseSession"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    return-void

    :goto_3
    if-eqz p2, :cond_2

    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    :cond_2
    throw p0
.end method

.method public static -$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p2, v0

    :goto_1
    :try_start_2
    const-string/jumbo v2, "TvInteractiveAppManagerService"

    const-string/jumbo v3, "error in releaseSession"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked$1(ILandroid/os/IBinder;)V

    return-void

    :goto_3
    if-eqz p2, :cond_2

    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    :cond_2
    throw p0
.end method

.method public static -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAdServiceListCalled:Z

    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAppLinkInfoListCalled:Z

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$MyPackageMonitor;

    invoke-direct {p1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$MyPackageMonitor;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mPackageMonitor:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$MyPackageMonitor;

    return-void
.end method

.method public static getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session not yet created for token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session not yet created for token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/ITvAdClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onSessionCreated"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in onSessionCreated"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final abortPendingCreateAdSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/os/IBinder;

    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v7, v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    if-nez v7, :cond_0

    iget-object v7, v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v4, p2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    iget v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v5, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public final abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/os/IBinder;

    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v7, v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-nez v7, :cond_0

    if-eqz p2, :cond_1

    iget-object v7, v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge v4, p2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    iget v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked$1(ILandroid/os/IBinder;)V

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v5, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public final buildAppLinkInfoLocked(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "android.media.tv.interactive.AppLinkInfo.ClassName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.media.tv.interactive.AppLinkInfo.Uri"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/media/tv/interactive/AppLinkInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v1, v2, v4}, Landroid/media/tv/interactive/AppLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAppLinkInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAppLinkInfoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final buildTvAdServiceListLocked(I[Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.tv.ad.TvAdService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "TvInteractiveAppManagerService"

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v6, "android.permission.BIND_TV_AD_SERVICE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Skipping TV AD service "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v6, ": it does not require the permission android.permission.BIND_TV_AD_SERVICE"

    invoke-static {v5, v3, v6, v4}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Landroid/media/tv/ad/TvAdServiceInfo;

    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Landroid/media/tv/ad/TvAdServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "failed to load TV AD service "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/media/tv/ad/TvAdServiceInfo;

    invoke-virtual {v7}, Landroid/media/tv/ad/TvAdServiceInfo;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    if-nez v9, :cond_2

    new-instance v9, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    :cond_2
    iput-object v7, v9, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v7}, Landroid/media/tv/ad/TvAdServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unable to get UID for  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v10}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {v7}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v9, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v7, v5

    :goto_4
    if-ge v7, v6, :cond_5

    :try_start_2
    iget-object v8, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/media/tv/ad/ITvAdManagerCallback;

    invoke-interface {v8, v3}, Landroid/media/tv/ad/ITvAdManagerCallback;->onAdServiceAdded(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v8

    const-string/jumbo v9, "failed to report added AD service to callback"

    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    iget-object v6, v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    invoke-virtual {v6}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    array-length v7, p2

    move v8, v5

    :goto_6
    if-ge v8, v7, :cond_4

    aget-object v9, p2, v8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0, p1, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v7, v5

    :goto_7
    if-ge v7, v6, :cond_7

    :try_start_3
    iget-object v8, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/media/tv/ad/ITvAdManagerCallback;

    invoke-interface {v8, v3}, Landroid/media/tv/ad/ITvAdManagerCallback;->onAdServiceUpdated(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v8

    const-string/jumbo v9, "failed to report updated AD service to callback"

    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-eqz v3, :cond_b

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateAdSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Ljava/lang/String;I)V

    :cond_b
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    move v6, v5

    :goto_a
    if-ge v6, v3, :cond_c

    :try_start_4
    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/media/tv/ad/ITvAdManagerCallback;

    invoke-interface {v7, v2}, Landroid/media/tv/ad/ITvAdManagerCallback;->onAdServiceRemoved(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v7

    const-string/jumbo v8, "failed to report removed AD service to callback"

    invoke-static {v4, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_c
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_9

    :cond_d
    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    iput-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    return-void
.end method

.method public final buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x84

    invoke-virtual {v0, v5, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string/jumbo v7, "TvInteractiveAppManagerService"

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v9, "android.permission.BIND_TV_INTERACTIVE_APP"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Skipping TV interactiva app service "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v9, ": it does not require the permission android.permission.BIND_TV_INTERACTIVE_APP"

    invoke-static {v0, v8, v9, v7}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    iget-object v10, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    iget-object v7, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "failed to load TV Interactive App service "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v8, v0}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    move v0, v10

    :goto_1
    if-ge v0, v9, :cond_4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v0, 0x1

    check-cast v11, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    invoke-virtual {v11}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v14, 0x1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v14, v0

    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_3
    move-object v14, v0

    iput-object v11, v14, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v11}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unable to get UID for  "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {v11}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v12

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_6

    :try_start_2
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    invoke-interface {v0, v8}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceAdded(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string/jumbo v11, "failed to report added Interactive App service to callback"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_5

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    array-length v9, v3

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_5

    aget-object v11, v3, v10

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v1, v2, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v9, :cond_8

    :try_start_3
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    invoke-interface {v0, v8}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    const-string/jumbo v11, "failed to report updated Interactive App service to callback"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_4

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    iget-object v8, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz v0, :cond_c

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    :cond_c
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_d

    :try_start_4
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    invoke-interface {v0, v5}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string/jumbo v10, "failed to report removed Interactive App service to callback"

    invoke-static {v7, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_d
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_a

    :cond_e
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v6, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    return-void
.end method

.method public final clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionReleased(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in onSessionReleased"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    iget p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method public final getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    if-eqz p0, :cond_2

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_1

    iget p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mCallingUid:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Illegal access to the session with token "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from uid "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Session state not found for token "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    invoke-direct {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;-><init>()V

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    if-eqz p0, :cond_2

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_1

    iget p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mCallingUid:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Illegal access to the session with token "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from uid "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Session state not found for token "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 8

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mPackageMonitor:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$MyPackageMonitor;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.USER_SWITCHED"

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-static {v5, p1, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildAppLinkInfoLocked(I)V

    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    const-string/jumbo v1, "tv_interactive_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;

    invoke-direct {v0, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    const-string/jumbo v1, "tv_ad"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final releaseSessionOfUserLocked$1(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    :try_start_0
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v4, "TvInteractiveAppManagerService"

    const-string/jumbo v5, "error in release"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public final removeAdSessionStateLocked(ILandroid/os/IBinder;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    if-nez v1, :cond_0

    const-string/jumbo p0, "TvInteractiveAppManagerService"

    const-string/jumbo p1, "sessionState null, no more remove session action!"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    invoke-interface {v3}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    invoke-interface {v4}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    invoke-interface {v3}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mComponent:Landroid/content/ComponentName;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public final removeSessionStateLocked$1(ILandroid/os/IBinder;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    if-nez v1, :cond_0

    const-string/jumbo p0, "TvInteractiveAppManagerService"

    const-string/jumbo p1, "sessionState null, no more remove session action!"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    invoke-interface {v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mComponent:Landroid/content/ComponentName;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public final switchUser$1(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo p0, "TvInteractiveAppManagerService"

    const-string/jumbo p1, "cannot switch to a profile!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked$1(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked$1(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked$1(I)V

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked$1(I)V

    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildAppLinkInfoLocked(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unbindServiceOfUserLocked$1(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    invoke-interface {v3, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "TvInteractiveAppManagerService"

    const-string/jumbo v4, "error in unregisterCallback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    :cond_2
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    if-nez v2, :cond_6

    if-eqz v3, :cond_6

    iget-boolean v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.ad.TvAdService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    const p1, 0x2000001

    invoke-virtual {p0, p2, v4, p1, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    return-void

    :cond_6
    if-eqz v2, :cond_7

    if-nez v3, :cond_7

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void
.end method

.method public final updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    :cond_2
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    if-nez v2, :cond_6

    if-eqz v3, :cond_6

    iget-boolean v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    const p1, 0x2000001

    invoke-virtual {p0, p2, v4, p1, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    return-void

    :cond_6
    if-eqz v2, :cond_7

    if-nez v3, :cond_7

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-void
.end method
