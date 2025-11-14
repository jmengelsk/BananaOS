.class public final Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_11

    if-eq v2, v1, :cond_e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    if-eq v2, v0, :cond_4

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const-string/jumbo p1, "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    return-void

    :cond_1
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

    if-ne v3, v2, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const-string/jumbo p1, "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    return-void

    :cond_5
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

    :try_start_0
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v5, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1, v5, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_6
    :goto_2
    add-int/2addr v4, v1

    goto :goto_1

    :cond_7
    move v4, v3

    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/2addr v4, v1

    goto :goto_3

    :cond_8
    array-length v4, p0

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_a

    aget v6, p0, v5

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_9

    invoke-virtual {p1, v6, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_9
    add-int/2addr v5, v1

    goto :goto_4

    :cond_a
    iget-object p0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-nez p0, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    iget-object p0, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v4, :cond_c

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_c
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    :try_start_4
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    if-ge v3, p0, :cond_d

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v5, -0x1

    invoke-virtual {v4, p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(II)V

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4, p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForLowPowerStandbyUL(I)V

    add-int/2addr v3, v1

    goto :goto_5

    :cond_d
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_6
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :goto_7
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_e
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

    :try_start_7
    iget-object p1, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    if-ne v4, p0, :cond_f

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_9

    :cond_f
    :try_start_9
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean p0, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mLowPowerStandbyActive:Z

    iget-object p0, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-nez v4, :cond_10

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_10
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    iget-object p0, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v4, "updateRulesForRestrictPower"

    new-instance v5, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->forEachUid(Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    iget-object p0, v1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForLowPowerStandbyUL()V

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_8
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0

    :goto_9
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_11
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit p1

    return-void

    :catchall_5
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw p0
.end method
