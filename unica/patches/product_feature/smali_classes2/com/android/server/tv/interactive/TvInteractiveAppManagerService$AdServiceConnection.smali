.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    iget p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    monitor-exit p1

    goto/16 :goto_b

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_0
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    invoke-static {p2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-direct {p2, v1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    invoke-interface {v1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in registerCallback"

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/interactive/AppLinkInfo;

    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_4

    :cond_2
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/tv/interactive/AppLinkInfo;

    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_4
    :try_start_5
    const-string/jumbo v5, "TvInteractiveAppManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error in notifyAppLinkInfo("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") when onServiceConnected"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :goto_5
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    invoke-interface {v4, v1}, Landroid/media/tv/interactive/ITvInteractiveAppService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_7
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_8

    :catch_2
    move-exception v4

    :try_start_9
    const-string/jumbo v5, "TvInteractiveAppManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error in sendAppLinkCommand("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") when onServiceConnected"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :goto_8
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_5
    :goto_9
    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    iget v8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-static {v6, v7, v5, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    if-ge v3, v0, :cond_7

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {v2, v4, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked$1(ILandroid/os/IBinder;)V

    goto :goto_a

    :cond_7
    monitor-exit p1

    :goto_b
    return-void

    :goto_c
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    monitor-exit p1

    goto/16 :goto_13

    :catchall_3
    move-exception p0

    goto/16 :goto_14

    :cond_8
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    invoke-static {p2}, Landroid/media/tv/ad/ITvAdService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdService;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    if-nez p2, :cond_9

    new-instance p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    invoke-direct {p2}, Landroid/media/tv/ad/ITvAdServiceCallback$Stub;-><init>()V

    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    invoke-interface {v1, p2}, Landroid/media/tv/ad/ITvAdService;->registerCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_d

    :catch_3
    move-exception p2

    :try_start_d
    const-string/jumbo v1, "TvInteractiveAppManagerService"

    const-string/jumbo v2, "error in registerCallback"

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_d
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    invoke-interface {v4, v1}, Landroid/media/tv/ad/ITvAdService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_f
    :try_start_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_e

    :catchall_4
    move-exception p0

    goto :goto_10

    :catch_4
    move-exception v4

    :try_start_10
    const-string/jumbo v5, "TvInteractiveAppManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error in sendAppLinkCommand("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") when onServiceConnected"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_f

    :goto_10
    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_b
    :goto_11
    if-ge v4, v2, :cond_c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    iget v8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-static {v6, v7, v5, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_12
    if-ge v3, v0, :cond_d

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {v2, v4, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    goto :goto_12

    :cond_d
    monitor-exit p1

    :goto_13
    return-void

    :goto_14
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Mismatched ComponentName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (expected), "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (actual)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateAdSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Ljava/lang/String;I)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Mismatched ComponentName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (expected), "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (actual)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
