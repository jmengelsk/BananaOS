.class public final Lcom/android/server/smartspace/RemoteSmartspaceService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/smartspace/SmartspacePerUserService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/smartspace/SmartspacePerUserService;ZZ)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p5, :cond_0

    const/high16 p5, 0x400000

    :goto_0
    move v7, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x1

    const-string/jumbo v2, "android.service.smartspace.SmartspaceService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    iput-object p4, p0, Lcom/android/server/smartspace/RemoteSmartspaceService;->mCallback:Lcom/android/server/smartspace/SmartspacePerUserService;

    return-void
.end method


# virtual methods
.method public final executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public final getRemoteRequestMillis()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-static {p1}, Landroid/service/smartspace/ISmartspaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/smartspace/ISmartspaceService;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final handleOnConnectedStateChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/smartspace/RemoteSmartspaceService;->mCallback:Lcom/android/server/smartspace/SmartspacePerUserService;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SmartspacePerUserService"

    const-string/jumbo v1, "onConnectedStateChanged(): connected="

    invoke-static {v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_1

    const-string/jumbo p0, "SmartspacePerUserService"

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked$3()V

    :cond_2
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    return-void
.end method
