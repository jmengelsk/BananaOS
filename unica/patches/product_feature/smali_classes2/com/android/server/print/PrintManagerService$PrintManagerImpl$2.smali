.class public final Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method

.method public static hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_9

    goto :goto_29

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_29

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    :goto_29
    return v0
.end method


# virtual methods
.method public final hasPrintService(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "android.printservice.PrintService"

    invoke-static {v0, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x10800004

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 12

    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object p1, p1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_10

    return p3

    :cond_10
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object p1, p1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_15
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-virtual {v0, p0, p3, p3, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2a

    monitor-exit p1

    return p3

    :catchall_28
    move-exception p0

    goto :goto_5f

    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p3

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    array-length v4, p2

    move v5, p3

    :goto_45
    if-ge v5, v4, :cond_2f

    aget-object v6, p2, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    if-nez p4, :cond_53

    monitor-exit p1

    return v0

    :cond_53
    move v2, v0

    goto :goto_2f

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_58
    if-eqz v2, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    :cond_5d
    monitor-exit p1

    return p3

    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_15 .. :try_end_60} :catchall_28

    throw p0
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object p2, p2, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_f

    return-void

    :cond_f
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object p2, p2, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    :cond_2b
    :goto_2b
    monitor-exit p2

    return-void

    :goto_2d
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_38

    :cond_f
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object v1, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1f
    invoke-static {v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_39

    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    const/4 v2, 0x1

    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_2c

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    :cond_38
    :goto_38
    return-void

    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_2c

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object p2, p2, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_32

    :cond_f
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1f
    invoke-static {p2, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    const/4 v1, 0x1

    goto :goto_2c

    :catchall_2a
    move-exception p1

    goto :goto_33

    :cond_2c
    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2a

    if-eqz v1, :cond_32

    invoke-virtual {p2}, Lcom/android/server/print/UserState;->prunePrintServices()V

    :cond_32
    :goto_32
    return-void

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2a

    throw p1
.end method
