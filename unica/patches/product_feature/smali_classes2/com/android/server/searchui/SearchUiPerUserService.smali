.class public final Lcom/android/server/searchui/SearchUiPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/searchui/SearchUiPerUserService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService$2()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_5

    goto :goto_3e

    :cond_5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "SearchUiPerUserService"

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1f
    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3f

    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_39

    const-string/jumbo v0, "SearchUiPerUserService"

    const-string/jumbo v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/searchui/RemoteSearchUiService;->reconnect()V

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

.method public final getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;
    .registers 8

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    if-nez v0, :cond_1d

    check-cast v1, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1b

    const-string/jumbo p0, "SearchUiPerUserService"

    const-string/jumbo v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 p0, 0x0

    return-object p0

    :cond_1d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    new-instance v0, Lcom/android/server/searchui/RemoteSearchUiService;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v3, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v5

    iget-boolean v6, v3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/searchui/RemoteSearchUiService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/searchui/SearchUiPerUserService;ZZ)V

    iput-object v0, v4, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    goto :goto_3a

    :cond_39
    move-object v4, p0

    :goto_3a
    iget-object p0, v4, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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

.method public final onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .registers 6

    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;)V

    :try_start_1d
    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object p3, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-interface {p1, p3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_2b

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_2b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Caller is dead before session can be started, sessionId: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "SearchUiPerUserService"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    :cond_44
    return-void
.end method

.method public final onDestroyLocked(Landroid/app/search/SearchSessionId;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    const-string/jumbo v1, "SearchUiPerUserService"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDestroyLocked(): sessionId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v2, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, v2}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Removing all callbacks for session Id="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callbacks."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz p0, :cond_5f

    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_5f
    iget-object p0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/android/server/searchui/RemoteSearchUiService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "SearchUiPerUserService"

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
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2f

    iget-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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

.method public final registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_b

    goto :goto_3f

    :cond_b
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_3f

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Storing callback for session Id="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and callback="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SearchUiPerUserService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/searchui/RemoteSearchUiService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final resurrectSessionsLocked$2()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    const-string/jumbo v2, "Resurrecting remote service ("

    const-string/jumbo v3, "SearchUiPerUserService"

    if-eqz v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    iget-object v4, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object v5, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") for session Id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callbacks."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSearchContext:Landroid/app/search/SearchContext;

    iget-object v6, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/searchui/SearchUiPerUserService;->onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    iget-object v4, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v5, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, p0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;Lcom/android/server/searchui/SearchUiPerUserService;)V

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_3a

    :cond_8a
    return-void
.end method

.method public final updateLocked(Z)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    :cond_16
    return p1
.end method
