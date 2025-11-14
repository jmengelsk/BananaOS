.class public final Lcom/android/server/smartspace/SmartspacePerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# instance fields
.field public mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/smartspace/SmartspacePerUserService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService$3()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_5

    goto :goto_3e

    :cond_5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "SmartspacePerUserService"

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1f
    iput-boolean v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3f

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_39

    const-string/jumbo v0, "SmartspacePerUserService"

    const-string/jumbo v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {p0}, Lcom/android/server/smartspace/RemoteSmartspaceService;->reconnect()V

    :cond_3e
    :goto_3e
    return-void

    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;
    .registers 8

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    if-nez v0, :cond_1d

    check-cast v1, Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1b

    const-string/jumbo p0, "SmartspacePerUserService"

    const-string/jumbo v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 p0, 0x0

    return-object p0

    :cond_1d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    new-instance v0, Lcom/android/server/smartspace/RemoteSmartspaceService;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v3, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v5

    iget-boolean v6, v3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/smartspace/RemoteSmartspaceService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/smartspace/SmartspacePerUserService;ZZ)V

    iput-object v0, v4, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    goto :goto_3a

    :cond_39
    move-object v4, p0

    :goto_3a
    iget-object p0, v4, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    return-object p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v1, 0x80

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v0, "Could not get service for "

    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .registers 6

    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-virtual {p0, v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;)V

    :try_start_1d
    iget-object p1, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object p3, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-interface {p1, p3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_2b

    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_2b
    invoke-virtual {p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    :cond_2e
    return-void
.end method

.method public final onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDestroyLocked(): sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SmartspacePerUserService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    iget-object p0, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz p0, :cond_39

    iget-object p1, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_39
    iget-object p0, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/android/server/smartspace/RemoteSmartspaceService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "SmartspacePerUserService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2f

    iget-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    :cond_2e
    return-void

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/RemoteSmartspaceService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final resurrectSessionsLocked$3()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Resurrecting remote service ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SmartspacePerUserService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    iget-object v2, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    iget-object v3, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    iget-object v4, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    iget-object v2, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_3a

    :cond_5f
    return-void
.end method

.method public final updateLocked(Z)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked$3()V

    return p1

    :cond_10
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    :cond_1a
    return p1
.end method
