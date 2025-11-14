.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    return-void
.end method

.method public static interceptReasonToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, "INTERCEPT_REASON_APP_REQUESTED"

    return-object p0

    :cond_16
    const-string/jumbo p0, "TASK_IS_MOVING_TO_REMOTE_APP_DISPLAY"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "TASK_IS_MOVING_TO_DEFAULT_DISPLAY"

    return-object p0

    :cond_1e
    const-string/jumbo p0, "OTHER_TASK_EXISTS_IN_REMOTE_APP_DISPLAY"

    return-object p0

    :cond_22
    const-string/jumbo p0, "UNDEFINED"

    return-object p0
.end method


# virtual methods
.method public final onStartActivityInterceptedLocked(Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/pm/ActivityInfo;IZLandroid/app/ActivityManager$RunningTaskInfo;Lcom/android/server/wm/RemoteAppController$CallerInfo;II)Z
    .registers 23

    move-object/from16 v9, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v5, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    const/4 v6, 0x0

    if-eqz v5, :cond_10c

    iget-object v4, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v9, :cond_34

    :try_start_12
    iget-object v5, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v5, v5, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    iget v7, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mTransferTaskMap:Ljava/util/HashMap;

    iget v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    return v6

    :catchall_31
    move-exception v0

    goto/16 :goto_10a

    :cond_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_31

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V

    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    if-nez v2, :cond_40

    iget v5, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mCurrentUserId:I

    if-eq v3, v5, :cond_b5

    :cond_40
    iget-object v4, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mInterceptedActivityRepo:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    new-instance v5, Lcom/android/server/remoteappmode/InterceptedActivityInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v2, v5, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->callerInfo:Lcom/android/server/wm/RemoteAppController$CallerInfo;

    iput v3, v5, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->userId:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "mInterceptedActivityInfoMap size = "

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string/jumbo v8, "[RAMS] InterceptedActivityRepo"

    const-string/jumbo v10, "mInterceptedActivityInfoMap.put - hashcode : "

    const-string v11, ", intent : "

    invoke-static {v7, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_76
    iget-object v10, v4, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "[RAMS] InterceptedActivityRepo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v8
    :try_end_98
    .catchall {:try_start_76 .. :try_end_98} :catchall_107

    const-string/jumbo v3, "[RAMS]RemoteAppModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveCallerInfo - mInterceptedActivityRepo.put cInfo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intent:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mStartActivityInterceptNotifier:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    iget-object v2, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    monitor-enter v2

    :try_start_bc
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->mStartActivityInterceptListeners:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_bc .. :try_end_ca} :catchall_104

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_ce
    if-ge v6, v11, :cond_102

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v12, v6, 0x1

    check-cast v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;

    if-eqz p2, :cond_e1

    :try_start_da
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_e2

    :catch_df
    move-exception v0

    goto :goto_fd

    :cond_e1
    const/4 v2, 0x0

    :goto_e2
    if-eqz v9, :cond_eb

    iget v3, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    move v6, v3

    move v7, v4

    goto :goto_ee

    :cond_eb
    const/4 v3, -0x1

    move v6, v3

    move v7, v6

    :goto_ee
    iget-object v0, v0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-object v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p9

    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->onStartActivityIntercepted(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ActivityInfo;IZIII)V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_fc} :catch_df

    goto :goto_100

    :goto_fd
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_100
    move v6, v12

    goto :goto_ce

    :cond_102
    const/4 v0, 0x1

    return v0

    :catchall_104
    move-exception v0

    :try_start_105
    monitor-exit v2
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw v0

    :catchall_107
    move-exception v0

    :try_start_108
    monitor-exit v8
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v0

    :goto_10a
    :try_start_10a
    monitor-exit v4
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_31

    throw v0

    :cond_10c
    return v6
.end method
