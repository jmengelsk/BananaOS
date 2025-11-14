.class public final Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;
.super Landroid/app/smartspace/ISmartspaceManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartspace/SmartspaceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-direct {p0}, Landroid/app/smartspace/ISmartspaceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    const-string/jumbo p1, "createSmartspaceSession"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceSessionId;I)V

    const-string/jumbo v1, "destroySmartspaceSession"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .registers 5

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Ljava/lang/Object;I)V

    const-string/jumbo p2, "notifySmartspaceEvent"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 5

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Ljava/lang/Object;I)V

    const-string/jumbo p2, "registerSmartspaceUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceSessionId;I)V

    const-string/jumbo v1, "requestSmartspaceUpdate"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V
    .registers 13

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceSessionId;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.MANAGE_SMARTSPACE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_82

    const-string/jumbo v1, "android.permission.ACCESS_SMARTSPACE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-object v0, v0, Lcom/android/server/smartspace/SmartspaceManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_82

    :cond_56
    const-string/jumbo p0, "Permission Denial: Cannot call "

    const-string p2, " from pid="

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SmartspaceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_82
    :goto_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_86
    iget-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_9f

    :try_start_8b
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartspace/SmartspacePerUserService;

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    monitor-exit p1
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_9b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_9b
    move-exception v0

    move-object p0, v0

    :try_start_9d
    monitor-exit p1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9b

    :try_start_9e
    throw p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 5

    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Ljava/lang/Object;I)V

    const-string/jumbo p2, "unregisterSmartspaceUpdates"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method
