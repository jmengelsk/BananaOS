.class public final Lcom/android/server/systemcaptions/SystemCaptionsManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040348

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x44

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 6

    new-instance p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string/jumbo v1, "initialize()"

    const-string/jumbo v2, "SystemCaptionsManagerPerUserService"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "getRemoteServiceLocked(): Not set"

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v3, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    invoke-direct {v3, v4, v0, v5, p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v3, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getRemoteServiceLocked(): initialize for user "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    iget-boolean v0, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    const-string/jumbo v3, "RemoteSystemCaptionsManagerService"

    if-eqz v0, :cond_4

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_6

    const-string/jumbo p1, "scheduleBind(): already scheduled"

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_0
    iget-object p1, p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    :goto_1
    if-nez p1, :cond_7

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_7

    const-string/jumbo p0, "initialize(): Failed to init remote server"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object p2
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 3

    check-cast p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p2, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p2, :cond_0

    const-string/jumbo p2, "SystemCaptionsManagerPerUserService"

    const-string/jumbo v0, "destroyLocked()"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method
