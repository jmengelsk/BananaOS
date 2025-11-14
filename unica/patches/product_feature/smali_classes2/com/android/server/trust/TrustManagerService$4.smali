.class public final Lcom/android/server/trust/TrustManagerService$4;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v1, -0x1

    const/4 v2, 0x1

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_14

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v1, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onUserMayRequestUnlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    add-int/2addr v3, v2

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    move p1, v3

    :goto_2
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, v1, :cond_2

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUserRequestedUnlock(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_2
    :goto_3
    add-int/2addr v3, v2

    goto :goto_2

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_4

    :cond_3
    move v0, v3

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_4

    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    goto :goto_5

    :cond_4
    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    :goto_5
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    sget-object v4, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    if-ne p1, v4, :cond_5

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xdbba00

    add-long v9, v3, v5

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    if-eqz p1, :cond_7

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_6

    goto/16 :goto_14

    :cond_6
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_6
    move-object v12, p1

    goto :goto_7

    :cond_7
    new-instance p1, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    invoke-direct {p1, p0, v1}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :goto_7
    iput-boolean v2, v12, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v13, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v8, 0x2

    const-string/jumbo v11, "TrustManagerService.trustTimeoutForUser"

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "except"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    :goto_8
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, p1, :cond_9

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_9

    invoke-interface {v0, v1}, Landroid/service/trust/ITrustAgentService;->onUnlockLockout(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_9
    :goto_9
    add-int/2addr v3, v2

    goto :goto_8

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v4

    :try_start_3
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v1, v4, :cond_a

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    :cond_a
    add-int/2addr v3, v2

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_14

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->updateDualDARStateAndUnlockIfNeeded(I)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    move v0, v3

    :goto_b
    iget-object v1, p1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v5, p1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v4, v5, :cond_b

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v4, v1, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-eqz v4, :cond_b

    iput-boolean v3, v1, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    iput-boolean v3, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    iput-boolean v2, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v4, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_b
    add-int/2addr v0, v2

    goto :goto_b

    :cond_c
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "TrustManagerService"

    :goto_c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    :try_start_5
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustListener;->onEnabledTrustAgentsChanged(I)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    const-string v5, "Exception while notifying TrustListener."

    invoke-static {v4, v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_4
    const-string/jumbo v0, "Removing dead TrustListener."

    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/2addr v3, v1

    :goto_d
    add-int/2addr v3, v2

    goto :goto_c

    :pswitch_d
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    :goto_e
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    if-ltz p1, :cond_f

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v5

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v6

    if-eq v6, v5, :cond_e

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    :cond_e
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "userId must be a valid user: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, p1, :cond_12

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    iget-object v4, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v4, :cond_11

    invoke-interface {v4, v1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_10

    :cond_11
    iput-boolean v1, v0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_11

    :goto_10
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_12
    :goto_11
    add-int/2addr v3, v2

    goto :goto_f

    :pswitch_e
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    :goto_12
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_13
    add-int/2addr v3, v2

    goto :goto_12

    :pswitch_f
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    move v0, v3

    :goto_13
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v1, v4, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    add-int/2addr v0, v2

    goto :goto_13

    :cond_16
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    :goto_15
    if-ge v3, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v4

    const-string/jumbo v5, "TrustManagerService"

    :try_start_7
    invoke-interface {p1, v4, v0}, Landroid/app/trust/ITrustListener;->onIsActiveUnlockRunningChanged(ZI)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_16

    :catch_6
    move-exception v0

    const-string v4, "Exception while notifying TrustListener."

    invoke-static {v5, v4, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_7
    const-string/jumbo v0, "TrustListener dead while trying to notify Active Unlock running state"

    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    add-int/2addr v3, v2

    goto :goto_15

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
