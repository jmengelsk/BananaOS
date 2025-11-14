.class public final Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
.super Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field public mDependencyInstallerCallbackInvoked:Z

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-direct {p0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iput p3, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onAllDependenciesResolved([I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    if-nez v0, :cond_71

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_6f

    sget v0, Lcom/android/server/pm/InstallDependencyHelper;->$r8$clinit:I

    const-string v0, "InstallDependencyHelper"

    const-string/jumbo v1, "onAllDependenciesResolved started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->validateSessionIds([I)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult()V

    return-void

    :catch_23
    move-exception p1

    goto :goto_66

    :cond_25
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Landroid/util/ArraySet;)V

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v1, v1, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    monitor-enter v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_23

    :try_start_31
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v2, v2, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_63

    :try_start_3b
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3f
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v1, v1, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    if-nez v1, :cond_3f

    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_61} :catch_23

    goto :goto_3f

    :cond_62
    return-void

    :catchall_63
    move-exception p1

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw p1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_23

    :goto_66
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_68
    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    throw p1

    :catchall_6c
    move-exception p1

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p1

    :catchall_6f
    move-exception p1

    goto :goto_79

    :cond_71
    :try_start_71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Callback is being or has been already processed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_6f

    throw p1
.end method

.method public final onFailureToResolveAllDependencies()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :catchall_12
    move-exception v0

    goto :goto_1c

    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback is being or has been already processed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_12

    throw v0
.end method

.method public final validateSessionIds([I)Landroid/util/ArraySet;
    .registers 11

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_8
    array-length v4, p1

    if-ge v2, v4, :cond_98

    aget v4, p1, v2

    iget-object v5, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v5, v5, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    const-string v6, "InstallDependencyHelper"

    const-string/jumbo v7, "Session already finished: "

    if-eqz v5, :cond_4a

    iget-boolean v8, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    if-nez v8, :cond_40

    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-nez v5, :cond_7f

    sget v5, Lcom/android/server/pm/InstallDependencyHelper;->$r8$clinit:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onAllDependenciesResolved pending session: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    sget v5, Lcom/android/server/pm/InstallDependencyHelper;->$r8$clinit:I

    const-string/jumbo v5, "onAllDependenciesResolved cleaning up finished session: "

    invoke-static {v4, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_62

    iget-object v3, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v3, v3, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget v5, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mUserId:I

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageInstallerService;->getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    :cond_62
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-eqz v5, :cond_8c

    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-eqz v5, :cond_82

    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to find session: "

    invoke-static {v4, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    return-object v0
.end method
