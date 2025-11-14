.class public final Lcom/android/server/pm/InstallDependencyHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final REQUEST_TIMEOUT_MILLIS:J

.field public static final UNBIND_TIMEOUT_MILLIS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mRemoteServices:Landroid/util/ArrayMap;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mTrackers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->UNBIND_TIMEOUT_MILLIS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->REQUEST_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/PackageInstallerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iput-object p3, p0, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-void
.end method

.method public static onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x9

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onError(Lcom/android/server/pm/PackageManagerException;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Orig session error: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallDependencyHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getMissingSharedLibraries(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;
    .locals 13

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sdk"

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v8

    iget-object v4, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "static shared"

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v8

    iget-object p1, v0, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Ljava/util/List;[J[[Ljava/lang/String;[ZLjava/lang/String;Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    monitor-exit p0

    return-object v12

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p1
.end method

.method public final notifySessionComplete(I)V
    .locals 7

    const-string v0, "InstallDependencyHelper"

    const-string/jumbo v1, "Session complete for "

    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->onSessionComplete(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resolveLibraryDependenciesIfNeededInternal(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "InstallDependencyHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "No missing dependency for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p6}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult()V

    return-void

    :cond_0
    const-string v0, "InstallDependencyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Missing dependencies found for pkg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " user: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DependencyInstallerService for user "

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "InstallDependencyHelper"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already bound"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    move-object v1, p0

    move v4, p4

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "InstallDependencyHelper"

    const-string v0, "Attempting to bind to Dependency Installer Service for user "

    invoke-static {p4, v0, p2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/role/RoleManager;

    if-nez p2, :cond_2

    const-string p0, "InstallDependencyHelper"

    const-string p1, "Cannot find RoleManager system service"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.app.role.SYSTEM_DEPENDENCY_INSTALLER"

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "InstallDependencyHelper"

    const-string/jumbo p1, "No holders of ROLE_SYSTEM_DEPENDENCY_INSTALLER found for user "

    invoke-static {p4, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.content.pm.action.INSTALL_DEPENDENCY"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    move-object v0, p3

    move v5, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object p2

    move v4, v5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p0, "InstallDependencyHelper"

    const-string/jumbo p1, "No package holding ROLE_SYSTEM_DEPENDENCY_INSTALLER found for user "

    invoke-static {v4, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "Dependency Installer Service not found"

    invoke-static {p6, p0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$1;

    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v6, p5

    move-object v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstallDependencyHelper$1;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;Landroid/os/Handler;)V

    iget-object p0, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter p0

    :try_start_1
    iget-object p3, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_5
    iget-object p3, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/server/pm/InstallDependencyHelper$2;

    invoke-direct {p3, v1, p2, v4}, Lcom/android/server/pm/InstallDependencyHelper$2;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/ComponentName;I)V

    invoke-virtual {v0, p3}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p0, "InstallDependencyHelper"

    const-string/jumbo p2, "Successfully bound to Dependency Installer Service for user "

    invoke-static {v4, p2, p0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    invoke-direct {p0, v1, p6, v4}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;I)V

    iget-object p2, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_2
    iget-object p3, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/ServiceConnector;

    new-instance p4, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1, p0}, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V

    invoke-interface {p3, p4}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    move-result p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p0, :cond_6

    const-string p0, "Failed to schedule job on Dependency Installer Service"

    invoke-static {p6, p0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
