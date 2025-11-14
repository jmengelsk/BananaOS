.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser$1(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p2

    if-nez p2, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "TvInteractiveAppManagerService"

    const-string/jumbo v5, "error in release"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    iget-object v4, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    if-eqz v4, :cond_4

    iget-object v5, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_4
    const-string/jumbo v5, "TvInteractiveAppManagerService"

    const-string/jumbo v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :cond_6
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object p2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->kill()V

    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne p1, p2, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser$1(I)V

    :cond_7
    monitor-exit v0

    goto/16 :goto_8

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_8
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-eq p1, p2, :cond_b

    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v1, :cond_a

    iget p2, v1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne p2, v1, :cond_a

    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildAppLinkInfoLocked(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :cond_b
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_c
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_6
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne p1, v0, :cond_d

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser$1(I)V

    monitor-exit p2

    return-void

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked$1(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked$1(I)V

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :goto_7
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_e
    :goto_8
    return-void
.end method
