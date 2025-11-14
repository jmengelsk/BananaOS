.class public final Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v0, 0x3

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_17b

    if-eq v2, v1, :cond_108

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5d

    if-eq v2, v0, :cond_4e

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1f

    const/4 p1, 0x5

    if-eq v2, p1, :cond_14

    goto :goto_35

    :cond_14
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const-string/jumbo p1, "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    return-void

    :cond_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object v3, v3, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1, v0}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result v3

    if-ne v3, v2, :cond_36

    :goto_35
    return-void

    :cond_36
    if-eqz v3, :cond_43

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void

    :cond_43
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void

    :cond_4e
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const-string/jumbo p1, "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    return-void

    :cond_5d
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [I

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-virtual {p1, p0}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyAllowlist([I)V

    iget-object p1, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7b
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_82
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_a2

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_a0

    invoke-virtual {p1, v5, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a0

    :catchall_9e
    move-exception p0

    goto :goto_106

    :cond_a0
    :goto_a0
    add-int/2addr v4, v1

    goto :goto_82

    :cond_a2
    move v4, v3

    :goto_a3
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_b6

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/2addr v4, v1

    goto :goto_a3

    :cond_b6
    array-length v4, p0

    move v5, v3

    :goto_b8
    if-ge v5, v4, :cond_d2

    aget v6, p0, v5

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_d0

    invoke-virtual {p1, v6, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_d0
    add-int/2addr v5, v1

    goto :goto_b8

    :cond_d2
    iget-object p0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-nez p0, :cond_da

    monitor-exit v2

    return-void

    :cond_da
    iget-object p0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_df
    .catchall {:try_start_7b .. :try_end_df} :catchall_9e

    :try_start_df
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v4, :cond_ea

    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_df .. :try_end_e6} :catchall_e8

    :try_start_e6
    monitor-exit v2
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_9e

    return-void

    :catchall_e8
    move-exception p1

    goto :goto_104

    :cond_ea
    :try_start_ea
    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e8

    :goto_eb
    :try_start_eb
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    if-ge v3, p0, :cond_102

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v5, -0x1

    invoke-virtual {v4, p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    add-int/2addr v3, v1

    goto :goto_eb

    :cond_102
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_eb .. :try_end_103} :catchall_9e

    return-void

    :goto_104
    :try_start_104
    monitor-exit p0
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_e8

    :try_start_105
    throw p1

    :goto_106
    monitor-exit v2
    :try_end_107
    .catchall {:try_start_105 .. :try_end_107} :catchall_9e

    throw p0

    :cond_108
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    const-class v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-virtual {p1, p0}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyActive(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "setLowPowerStandbyActive"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_131
    iget-object p1, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_176

    :try_start_136
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-ne v4, p0, :cond_143

    monitor-exit p1
    :try_end_13d
    .catchall {:try_start_136 .. :try_end_13d} :catchall_141

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_141
    move-exception p0

    goto :goto_174

    :cond_143
    :try_start_143
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean p0, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    iget-object p0, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_14c
    .catchall {:try_start_143 .. :try_end_14c} :catchall_141

    :try_start_14c
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v4, :cond_15a

    monitor-exit p0
    :try_end_153
    .catchall {:try_start_14c .. :try_end_153} :catchall_158

    :try_start_153
    monitor-exit p1
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_141

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_158
    move-exception v0

    goto :goto_172

    :cond_15a
    :try_start_15a
    monitor-exit p0
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_158

    :try_start_15b
    iget-object p0, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v4, "updateRulesForRestrictPower"

    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    iget-object p0, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForLowPowerStandbyUL()V

    monitor-exit p1
    :try_end_16e
    .catchall {:try_start_15b .. :try_end_16e} :catchall_141

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_172
    :try_start_172
    monitor-exit p0
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_158

    :try_start_173
    throw v0

    :goto_174
    monitor-exit p1
    :try_end_175
    .catchall {:try_start_173 .. :try_end_175} :catchall_141

    :try_start_175
    throw p0
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_176

    :catchall_176
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_17b
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_182
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit p1

    return-void

    :catchall_187
    move-exception p0

    monitor-exit p1
    :try_end_189
    .catchall {:try_start_182 .. :try_end_189} :catchall_187

    throw p0
.end method
