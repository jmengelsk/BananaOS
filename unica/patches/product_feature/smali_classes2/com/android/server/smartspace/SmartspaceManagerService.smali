.class public Lcom/android/server/smartspace/SmartspaceManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040346

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "android.permission.MANAGE_SMARTSPACE"

    const-string/jumbo v1, "SmartspaceManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    const p0, 0x1d4c0

    return p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    new-instance p2, Lcom/android/server/smartspace/SmartspacePerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public final onServicePackageRestartedLocked(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartspace/SmartspacePerUserService;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "SmartspacePerUserService"

    const-string/jumbo v0, "onPackageRestartedLocked()"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->destroyAndRebindRemoteService$3()V

    :cond_1
    return-void
.end method

.method public final onServicePackageUpdatedLocked(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartspace/SmartspacePerUserService;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "SmartspacePerUserService"

    const-string/jumbo v0, "onPackageUpdatedLocked()"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->destroyAndRebindRemoteService$3()V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;

    invoke-direct {v0, p0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V

    const-string/jumbo v1, "smartspace"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
