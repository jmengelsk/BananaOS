.class public final Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;
.super Landroid/view/translation/ITranslationManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-direct {p0}, Landroid/view/translation/ITranslationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo v0, "TranslationManagerService"

    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_10

    return-void

    :cond_10
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_15
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_2e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_30

    :cond_2e
    :goto_2e
    monitor-exit p3

    return-void

    :goto_30
    monitor-exit p3
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public final getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 15

    const-string/jumbo v1, "Unable to send getServiceSettingsActivity(): "

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_96

    const/4 v2, 0x0

    if-eqz v0, :cond_85

    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    if-nez v3, :cond_1a

    :goto_18
    move-object v4, v2

    goto :goto_2e

    :cond_1a
    invoke-virtual {v3}, Landroid/service/translation/TranslationServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    goto :goto_18

    :cond_21
    iget-object v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    const/4 v3, 0x1

    if-nez v4, :cond_3f

    :try_start_31
    invoke-interface {p1, v3, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_3f

    :catch_35
    move-exception v0

    const-string/jumbo v2, "TranslationManagerService"

    const-string/jumbo v5, "Unable to send getServiceSettingsActivity(): "

    invoke-static {v5, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_4b
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
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_66

    :try_start_5e
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v3, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_65} :catch_69
    .catchall {:try_start_5e .. :try_end_65} :catchall_66

    goto :goto_7d

    :catchall_66
    move-exception v0

    move-object p0, v0

    goto :goto_81

    :catch_69
    move-exception v0

    move-object p0, v0

    :try_start_6b
    const-string/jumbo p1, "TranslationManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_6b .. :try_end_7d} :catchall_66

    :goto_7d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_95

    :goto_81
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_85
    const/4 p0, 0x2

    :try_start_86
    invoke-interface {p1, p0, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_89} :catch_8a

    return-void

    :catch_8a
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "TranslationManagerService"

    const-string/jumbo p2, "Unable to send getServiceSettingsActivity(): "

    invoke-static {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_95
    return-void

    :catchall_96
    move-exception v0

    move-object p0, v0

    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_96

    throw p0
.end method

.method public final onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    .registers 11

    const-string/jumbo v0, "onSessionCreated(): no service for "

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v2, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_46

    iget-object v5, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v5, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v5, "onSessionCreated"

    invoke-static {p0, p4, v5}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_46

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_5d

    :cond_2a
    :goto_2a
    invoke-virtual {v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_39

    new-instance p4, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, p4}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    goto :goto_5b

    :cond_39
    const-string/jumbo p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "onSessionCreatedLocked(): no remote service."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v4, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_5b

    :cond_46
    const-string/jumbo p0, "TranslationManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v4, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_5b
    monitor-exit v1

    return-void

    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_8 .. :try_end_5e} :catchall_28

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

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
    .registers 11

    const-string/jumbo v0, "onGetTranslationCapabilitiesLocked(): no service for "

    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v2, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_46

    iget-object v5, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v5, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v5, "getTranslationCapabilities"

    invoke-static {p0, p4, v5}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_46

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_5d

    :cond_2a
    :goto_2a
    invoke-virtual {v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    move-result-object p0

    if-eqz p0, :cond_39

    new-instance p4, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;-><init>(IILandroid/os/ResultReceiver;)V

    invoke-virtual {p0, p4}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    goto :goto_5b

    :cond_39
    const-string/jumbo p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "onTranslationCapabilitiesRequestLocked(): no remote service."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_5b

    :cond_46
    const-string/jumbo p0, "TranslationManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_5b
    monitor-exit v1

    return-void

    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_8 .. :try_end_5e} :catchall_28

    throw p0
.end method

.method public final onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
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

    if-nez p1, :cond_28

    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_28
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3a

    throw p0
.end method

.method public final registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_21

    if-eqz p0, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    :cond_20
    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz p0, :cond_19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerUiTranslationStateCallbackLocked(ILandroid/os/IRemoteCallback;)V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_17

    throw p0
.end method

.method public final unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    .registers 13

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

    :try_start_35
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, p8}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    if-eqz v0, :cond_5a

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    invoke-static {v2, p8}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    const-string/jumbo v2, "updateUiTranslationState"

    invoke-static {p0, p8, v2}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5a

    :cond_52
    move-object p0, v0

    goto :goto_57

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto :goto_5c

    :goto_57
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V

    :cond_5a
    monitor-exit v1

    return-void

    :goto_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_35 .. :try_end_5d} :catchall_54

    throw p0
.end method
