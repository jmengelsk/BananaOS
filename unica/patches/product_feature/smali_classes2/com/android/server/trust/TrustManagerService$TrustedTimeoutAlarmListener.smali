.class public final Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    return-void
.end method


# virtual methods
.method public final disableNonrenewableTrustWhileRenewableTrustIsPresent()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v1, v2, :cond_28

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public final handleAlarm()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v0, :cond_1f

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->disableNonrenewableTrustWhileRenewableTrustIsPresent()V

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    return-void
.end method
