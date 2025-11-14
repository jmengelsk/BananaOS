.class public final Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;
.super Landroid/view/translation/ITranslationManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {p0}, Landroid/view/translation/ITranslationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo v0, "TranslationManagerService"

    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 12

    const-string/jumbo v1, "Unable to send getServiceSettingsActivity(): "

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    if-nez v3, :cond_0

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/service/translation/TranslationServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x1

    if-nez v4, :cond_2

    :try_start_1
    invoke-interface {p1, v3, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TranslationManagerService"

    const-string/jumbo v5, "Unable to send getServiceSettingsActivity(): "

    invoke-static {v5, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_2
    :goto_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_2
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, p2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v7, 0x0

    const/high16 v9, 0x4000000

    const/4 v10, 0x0

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v3, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    const-string/jumbo p1, "TranslationManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    const/4 p0, 0x2

    :try_start_5
    invoke-interface {p1, p0, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "TranslationManagerService"

    const-string/jumbo p2, "Unable to send getServiceSettingsActivity(): "

    invoke-static {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_5
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    .locals 6

    const-string/jumbo v0, "onSessionCreated(): no service for "

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v2, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v5, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v5, "onSessionCreated"

    invoke-static {p0, p4, v5}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p4, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, p4}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "onSessionCreatedLocked(): no remote service."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v4, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "TranslationManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v4, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;-><init>(Lcom/android/server/translation/TranslationManagerService;)V

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

.method public final onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V
    .locals 6

    const-string/jumbo v0, "onGetTranslationCapabilitiesLocked(): no service for "

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v2, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v5, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v5, "getTranslationCapabilities"

    invoke-static {p0, p4, v5}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p4, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;-><init>(IILandroid/os/ResultReceiver;)V

    invoke-virtual {p0, p4}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "onTranslationCapabilitiesRequestLocked(): no remote service."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "TranslationManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    iget-object p0, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p4, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {p0, p3, p4}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v7

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez p1, :cond_0

    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerUiTranslationStateCallbackLocked(ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v1, "android.permission.MANAGE_UI_TRANSLATION"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Permission Denial from pid ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t hold android.permission.MANAGE_UI_TRANSLATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, p8}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p8}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v2, "updateUiTranslationState"

    invoke-static {p0, p8, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
