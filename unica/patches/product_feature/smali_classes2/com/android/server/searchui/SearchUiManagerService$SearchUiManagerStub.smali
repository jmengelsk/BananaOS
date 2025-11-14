.class public final Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;
.super Landroid/app/search/ISearchUiManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/searchui/SearchUiManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    invoke-direct {p0}, Landroid/app/search/ISearchUiManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    const-string/jumbo p1, "createSearchSession"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final destroySearchSession(Landroid/app/search/SearchSessionId;)V
    .registers 4

    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda5;-><init>(Landroid/app/search/SearchSessionId;)V

    const-string/jumbo v1, "destroySearchSession"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final notifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 6

    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V

    const-string/jumbo p2, "notifyEvent"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/searchui/SearchUiManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/searchui/SearchUiManagerServiceShellCommand;-><init>(Lcom/android/server/searchui/SearchUiManagerService;)V

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

.method public final query(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 6

    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V

    const-string/jumbo p2, "query"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final registerEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 5

    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V

    const-string/jumbo p2, "registerEmptyQueryResultUpdateCallback"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V
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

    invoke-virtual {p2}, Landroid/app/search/SearchSessionId;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    iget-object v0, v0, Lcom/android/server/searchui/SearchUiManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_66

    :cond_3a
    const-string/jumbo p0, "Permission Denial: "

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

    const-string/jumbo p1, "SearchUiManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    :goto_66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_6a
    iget-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_83

    :try_start_6f
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/searchui/SearchUiPerUserService;

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    monitor-exit p1
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_7f

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_7f
    move-exception v0

    move-object p0, v0

    :try_start_81
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_7f

    :try_start_82
    throw p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final unregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 5

    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V

    const-string/jumbo p2, "unregisterEmptyQueryResultUpdateCallback"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    return-void
.end method
