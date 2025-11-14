.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;
.super Landroid/media/tv/ad/ITvAdManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "createMediaView"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in createMediaView"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createSession(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    move/from16 v8, p4

    const-string v1, "Failed to find state for serviceId="

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const-string/jumbo v14, "createSession"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v11, p5

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_0
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v13, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v5, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    const/4 v6, 0x0

    move/from16 v9, p5

    if-eq v9, v5, :cond_0

    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v7, v4, v6, v6, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v16, v11

    goto/16 :goto_1

    :cond_0
    :try_start_2
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v14

    iget-object v3, v14, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    if-nez v15, :cond_1

    const-string/jumbo v0, "TvInteractiveAppManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v4, v6, v6, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_3
    iget-object v1, v14, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    iget-object v3, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-nez v1, :cond_2

    iget-object v1, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v6, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    iget-object v5, v14, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    iget-object v6, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v5, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    if-eqz v5, :cond_3

    move-object/from16 v7, p1

    const/4 v3, 0x0

    invoke-static {v7, v4, v3, v3, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    move-object/from16 v7, p1

    :try_start_4
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    move-object v5, v1

    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move v9, v10

    move v10, v2

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v6, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide/from16 v16, v11

    move-object v11, v5

    move-object/from16 v5, p3

    :try_start_5
    invoke-direct/range {v1 .. v10}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/media/tv/ad/ITvAdClient;III)V

    iget-object v2, v14, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2, v1, v3, v10}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v10, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v10, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    :cond_5
    :goto_0
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-wide/from16 v16, v11

    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "dispatchSurfaceChanged"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4}, Landroid/media/tv/ad/ITvAdSession;->dispatchSurfaceChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in dispatchSurfaceChanged"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getTvAdServiceList(I)Ljava/util/List;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "getTvAdServiceList"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-boolean v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAdServiceListCalled:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAdServiceListCalled:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "notifyError"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in notifyError"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyTvInputSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "notifyTvInputSessionData"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in notifyTvInputSessionData"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "notifyTvMessage"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyTvMessage(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in notifyTvMessage"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final registerCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "registerCallback"

    invoke-static {v2, v0, v1, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "TvInteractiveAppManagerService"

    const-string/jumbo p1, "client process has already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "relayoutMediaView"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->relayoutMediaView(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in relayoutMediaView"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final releaseSession(Landroid/os/IBinder;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "releaseSession"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final removeMediaView(Landroid/os/IBinder;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "removeMediaView"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->removeMediaView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in removeMediaView"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final resetAdService(Landroid/os/IBinder;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "resetAdService"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->resetAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in reset"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 8

    const-string/jumbo v0, "failed to sendAppLinkCommand - unknown service id "

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, "sendAppLinkCommand"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v4, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    if-nez v5, :cond_0

    const-string/jumbo p0, "TvInteractiveAppManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object p1, v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    invoke-virtual {p1}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {v0, v5, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    if-eqz v4, :cond_2

    invoke-interface {v4, p2}, Landroid/media/tv/ad/ITvAdService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_5
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in sendAppLinkCommand"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "sendCurrentChannelUri"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentChannelUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in sendCurrentChannelUri"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "sendCurrentTvInputId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentTvInputId(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in sendCurrentTvInputId"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "sendCurrentVideoBounds"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in sendCurrentVideoBounds"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "sendSigningResult"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->sendSigningResult(Ljava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in sendSigningResult"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "sendTrackInfoList"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendTrackInfoList(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in sendTrackInfoList"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "setSurface"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p3, "error in setSurface"

    invoke-static {p1, p3, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final startAdService(Landroid/os/IBinder;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "startAdService"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->startAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in start"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final stopAdService(Landroid/os/IBinder;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v5, "stopAdService"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->stopAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "TvInteractiveAppManagerService"

    const-string/jumbo p2, "error in stop"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final unregisterCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "unregisterCallback"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
