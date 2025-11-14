.class public final Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    return-void
.end method


# virtual methods
.method public final handleAlarm()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    sget-object v2, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->cancelBothTrustableAlarms(I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    if-eqz v0, :cond_4a

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_24
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    goto :goto_2c

    :cond_3e
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    return-void
.end method
