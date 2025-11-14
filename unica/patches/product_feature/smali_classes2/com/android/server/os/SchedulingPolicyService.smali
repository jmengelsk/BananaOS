.class public final Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final MEDIA_PROCESS_NAMES:[Ljava/lang/String;


# instance fields
.field public mBoostedPid:I

.field public mClient:Landroid/os/IBinder;

.field public final mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media.swcodec"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$1;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    iput-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    const-string/jumbo p0, "SchedulingPolicyService.<init>"

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final disableCpusetBoost(I)V
    .locals 9

    const-string v0, " back to group default"

    const-string/jumbo v1, "SchedulingPolicyService"

    const-string/jumbo v2, "Moving "

    iget v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    throw p1

    :cond_0
    :goto_0
    if-ne v3, p1, :cond_1

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v4}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t move pid "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final enableCpusetBoost(ILandroid/os/IBinder;)I
    .locals 8

    const-string/jumbo v0, "SchedulingPolicyService"

    const-string v1, " to group 5"

    const-string/jumbo v2, "Moving "

    iget v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-interface {v5, v7, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    throw p1

    :cond_1
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-interface {p2, v5, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/os/Process;->setProcessGroup(II)V

    iput p1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    iput-object p2, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v4

    :catch_1
    move-exception p1

    const-string v1, "Failed enableCpusetBoost: "

    invoke-static {p1, v1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    iget-object p0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-interface {p2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return v3
.end method

.method public final requestCpusetBoost(ZLandroid/os/IBinder;)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    monitor-enter v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    aget p1, v0, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/SchedulingPolicyService;->enableCpusetBoost(ILandroid/os/IBinder;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    aget p1, v0, v2

    invoke-virtual {p0, p1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)V

    monitor-exit v1

    return v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    const-string/jumbo p0, "SchedulingPolicyService"

    const-string/jumbo p1, "requestCpusetBoost: can\'t find media.codec process"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final requestPriority(IIIZ)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/16 v1, 0x3ea

    const/16 v2, 0x411

    const/4 v3, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    const/16 v0, 0x417

    if-eq p0, v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p0, 0x1

    if-lt p3, p0, :cond_6

    const/4 p0, 0x3

    if-gt p3, p0, :cond_6

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result p0

    if-eq p0, p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-ne p0, v2, :cond_3

    if-nez p4, :cond_3

    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result p0

    if-eq p0, v2, :cond_3

    return v3

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const-string/jumbo p1, "SchedulingPolicyService"

    if-eq p0, v1, :cond_5

    if-nez p4, :cond_4

    const/4 p0, 0x4

    goto :goto_1

    :cond_4
    const/4 p0, 0x6

    :goto_1
    :try_start_0
    invoke-static {p2, p0}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed setThreadGroup: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    :goto_2
    const p0, 0x40000001    # 2.0000002f

    :try_start_1
    invoke-static {p2, p0, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x0

    return p0

    :catch_1
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed setThreadScheduler: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return v3
.end method
