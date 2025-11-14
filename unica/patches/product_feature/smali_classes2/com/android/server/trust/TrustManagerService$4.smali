.class public final Lcom/android/server/trust/TrustManagerService$4;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v1, -0x1

    const/4 v2, 0x1

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_2ea

    :pswitch_b  #0x5
    goto/16 :goto_2b6

    :pswitch_d  #0x12
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    :goto_11
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v1, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, p1, :cond_36

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2a
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onUserMayRequestUnlock()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_36
    :goto_36
    add-int/2addr v3, v2

    goto :goto_11

    :pswitch_38  #0x11
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v0, :cond_2b6

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_2b6

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    return-void

    :pswitch_52  #0x10
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_5c

    move p1, v2

    goto :goto_5d

    :cond_5c
    move p1, v3

    :goto_5d
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, v1, :cond_82

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_76
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_82

    invoke-interface {v0, p1}, Landroid/service/trust/ITrustAgentService;->onUserRequestedUnlock(Z)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_82
    :goto_82
    add-int/2addr v3, v2

    goto :goto_5d

    :pswitch_84  #0xf
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_8a

    move v0, v2

    goto :goto_8b

    :cond_8a
    move v0, v3

    :goto_8b
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_92

    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    goto :goto_94

    :cond_92
    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    :goto_94
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    sget-object v4, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    if-ne p1, v4, :cond_a0

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    return-void

    :cond_a0
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

    if-eqz p1, :cond_c6

    if-nez v0, :cond_bf

    iget-boolean v0, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_bf

    goto/16 :goto_2b6

    :cond_bf
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_c4
    move-object v12, p1

    goto :goto_d5

    :cond_c6
    new-instance p1, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    invoke-direct {p1, p0, v1}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    :goto_d5
    iput-boolean v2, v12, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v13, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v8, 0x2

    const-string/jumbo v11, "TrustManagerService.trustTimeoutForUser"

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :pswitch_e3  #0xe
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_ee

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    :cond_ee
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

    :pswitch_103  #0xd
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    :goto_109
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, p1, :cond_12e

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_122
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v0, :cond_12e

    invoke-interface {v0, v1}, Landroid/service/trust/ITrustAgentService;->onUnlockLockout(I)V
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_129} :catch_12a

    goto :goto_12e

    :catch_12a
    move-exception v0

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_12e
    :goto_12e
    add-int/2addr v3, v2

    goto :goto_109

    :pswitch_130  #0xc
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void

    :pswitch_138  #0xa
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v4

    :try_start_13d
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    monitor-exit v4
    :try_end_146
    .catchall {:try_start_13d .. :try_end_146} :catchall_167

    :goto_146
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b6

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v1, v4, :cond_165

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    :cond_165
    add-int/2addr v3, v2

    goto :goto_146

    :catchall_167
    move-exception v0

    move-object p0, v0

    :try_start_169
    monitor-exit v4
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_167

    throw p0

    :pswitch_16b  #0x9
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void

    :pswitch_175  #0x7, 0x8, 0xb
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2b6

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->updateDualDARStateAndUnlockIfNeeded(I)V

    return-void

    :pswitch_18a  #0x6
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    move v0, v3

    :goto_18d
    iget-object v1, p1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b8

    iget-object v1, p1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v5, p1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v4, v5, :cond_1b6

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v4, v1, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-eqz v4, :cond_1b6

    iput-boolean v3, v1, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    iput-boolean v3, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    iput-boolean v2, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    iget-object v4, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {v4, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_1b6
    add-int/2addr v0, v2

    goto :goto_18d

    :cond_1b8
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void

    :pswitch_1c0  #0x4
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "TrustManagerService"

    :goto_1d1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b6

    :try_start_1d9
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustListener;->onEnabledTrustAgentsChanged(I)V
    :try_end_1e4
    .catch Landroid/os/DeadObjectException; {:try_start_1d9 .. :try_end_1e4} :catch_1ec
    .catch Landroid/os/RemoteException; {:try_start_1d9 .. :try_end_1e4} :catch_1e5

    goto :goto_1f8

    :catch_1e5
    move-exception v0

    const-string v5, "Exception while notifying TrustListener."

    invoke-static {v4, v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f8

    :catch_1ec
    const-string/jumbo v0, "Removing dead TrustListener."

    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/2addr v3, v1

    :goto_1f8
    add-int/2addr v3, v2

    goto :goto_1d1

    :pswitch_1fa  #0x3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_202

    move v1, v2

    goto :goto_203

    :cond_202
    move v1, v3

    :goto_203
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_242

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    if-ltz p1, :cond_232

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v5

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v6

    if-eq v6, v5, :cond_21f

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    :cond_21f
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_242

    :cond_232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "userId must be a valid user: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_242
    :goto_242
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, p1, :cond_26b

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_25b
    iget-object v4, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v4, :cond_265

    invoke-interface {v4, v1}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_26b

    :catch_263
    move-exception v0

    goto :goto_268

    :cond_265
    iput-boolean v1, v0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_267
    .catch Landroid/os/RemoteException; {:try_start_25b .. :try_end_267} :catch_263

    goto :goto_26b

    :goto_268
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_26b
    :goto_26b
    add-int/2addr v3, v2

    goto :goto_242

    :pswitch_26d  #0x2
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    :goto_273
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_293

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_293
    add-int/2addr v3, v2

    goto :goto_273

    :pswitch_295  #0x1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    move v0, v3

    :goto_29c
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b9

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v1, v4, :cond_2b7

    :cond_2b6
    :goto_2b6
    return-void

    :cond_2b7
    add-int/2addr v0, v2

    goto :goto_29c

    :cond_2b9
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    :goto_2c4
    if-ge v3, v1, :cond_2e6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v4

    const-string/jumbo v5, "TrustManagerService"

    :try_start_2d3
    invoke-interface {p1, v4, v0}, Landroid/app/trust/ITrustListener;->onIsActiveUnlockRunningChanged(ZI)V
    :try_end_2d6
    .catch Landroid/os/DeadObjectException; {:try_start_2d3 .. :try_end_2d6} :catch_2de
    .catch Landroid/os/RemoteException; {:try_start_2d3 .. :try_end_2d6} :catch_2d7

    goto :goto_2e4

    :catch_2d7
    move-exception v0

    const-string v4, "Exception while notifying TrustListener."

    invoke-static {v5, v4, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e4

    :catch_2de
    const-string/jumbo v0, "TrustListener dead while trying to notify Active Unlock running state"

    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e4
    add-int/2addr v3, v2

    goto :goto_2c4

    :cond_2e6
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    return-void

    :pswitch_data_2ea
    .packed-switch 0x1
        :pswitch_295  #00000001
        :pswitch_26d  #00000002
        :pswitch_1fa  #00000003
        :pswitch_1c0  #00000004
        :pswitch_b  #00000005
        :pswitch_18a  #00000006
        :pswitch_175  #00000007
        :pswitch_175  #00000008
        :pswitch_16b  #00000009
        :pswitch_138  #0000000a
        :pswitch_175  #0000000b
        :pswitch_130  #0000000c
        :pswitch_103  #0000000d
        :pswitch_e3  #0000000e
        :pswitch_84  #0000000f
        :pswitch_52  #00000010
        :pswitch_38  #00000011
        :pswitch_d  #00000012
    .end packed-switch
.end method
