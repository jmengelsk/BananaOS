.class public final synthetic Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/os/SchedulingPolicyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/SchedulingPolicyService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/SchedulingPolicyService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/SchedulingPolicyService;

    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    monitor-enter v0

    :try_start_5
    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    sget-object v1, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_21

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    invoke-virtual {p0, v1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_1f

    throw p0
.end method
