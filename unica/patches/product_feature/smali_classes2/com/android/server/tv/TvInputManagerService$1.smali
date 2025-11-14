.class public final Lcom/android/server/tv/TvInputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/tv/TvInputManagerService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-object p2, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    goto/16 :goto_9

    :cond_0
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    if-nez p2, :cond_1

    monitor-exit v0

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/media/tv/ITvInputSession;->release()V

    iput-object v2, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    iget-boolean v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    if-eqz v6, :cond_3

    iput-boolean v1, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_2

    :goto_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_3
    const-string/jumbo v6, "TvInputManagerService"

    const-string/jumbo v7, "error in release"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    :cond_4
    throw p1

    :cond_5
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    iget-object v5, v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    goto :goto_3

    :cond_7
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->kill()V

    iput-object v2, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget p2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, p2, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    :cond_8
    monitor-exit v0

    goto/16 :goto_9

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_9
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget p2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq p1, p2, :cond_c

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz v1, :cond_b

    iget p2, v1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p2, v1, :cond_b

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->cleanUpHdmiDevices(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_b
    :goto_5
    monitor-exit v0

    goto :goto_9

    :cond_c
    :goto_6
    monitor-exit v0

    goto :goto_9

    :goto_7
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_d
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string/jumbo p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_6
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v0, :cond_e

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    monitor-exit p2

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->cleanUpHdmiDevices(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p2

    goto :goto_9

    :goto_8
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_f
    :goto_9
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "TvInputManagerService"

    const/4 v0, 0x5

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_a

    :cond_10
    const-string/jumbo p1, "The TV woke up."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_11
    const-string/jumbo p1, "The TV turned off."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
