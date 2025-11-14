.class public final Lcom/android/server/pm/PackageInstallerSession$5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const-string/jumbo v3, "android.content.pm.extra.PRE_APPROVAL"

    const-string/jumbo v4, "android.content.pm.extra.STATUS"

    const-string/jumbo v5, "android.content.pm.extra.SESSION_ID"

    const-string/jumbo v6, "PackageInstallerSession"

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    :catch_0
    :goto_0
    move/from16 v20, v10

    goto/16 :goto_b

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->verifyNonStaged()V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v3, v2}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_1

    const-string/jumbo v0, "Skip preapproval intent sending because IntentSender is null."

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v14, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_2
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_2
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return v10

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Landroid/content/IntentSender;

    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v13, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v13, v10, :cond_2

    move v13, v10

    goto :goto_1

    :cond_2
    move v13, v9

    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v1

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v10, v11, :cond_5

    if-eqz v1, :cond_5

    if-eqz v8, :cond_3

    const-string/jumbo v1, "android.intent.extra.REPLACING"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v10

    goto :goto_2

    :cond_3
    move v1, v9

    :goto_2
    const-class v10, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v14, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v10, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    invoke-direct {v10, v14, v9}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    const-string v9, "Core.PACKAGE_UPDATED_BY_DO"

    invoke-virtual {v1, v9, v10}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    const/4 v10, 0x1

    invoke-direct {v9, v14, v10}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    const-string v10, "Core.PACKAGE_INSTALLED_BY_DO"

    invoke-virtual {v1, v10, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v0, v14, v1, v2}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v9, "notification"

    invoke-virtual {v14, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    const/16 v10, 0x15

    invoke-virtual {v9, v2, v10, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v11}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-static {v11, v7}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v1, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v8, :cond_7

    const-string/jumbo v3, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string/jumbo v3, "android.content.pm.extra.WARNINGS"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_7
    const-string/jumbo v3, "result of session: "

    const-string/jumbo v4, "{"

    const-string/jumbo v5, "}, "

    invoke-static {v11, v15, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v7, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v17

    move-object v13, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v1

    invoke-virtual/range {v12 .. v19}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_4
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    invoke-static {v11, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->notifyKnoxSignatureVerificationFailure(IILjava/lang/String;)V

    :cond_8
    :goto_4
    const/16 v20, 0x1

    goto/16 :goto_b

    :pswitch_4
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    sget v2, Lcom/android/server/om/SemSamsungThemeUtils;->$r8$clinit:I

    const-string/jumbo v2, "com.samsung.android.themecenter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_9

    const-string v0, "Install failed with internal error"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    const/16 v2, -0x6e

    invoke-virtual {v1, v2, v0, v8}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x70

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :cond_a
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    move-result v0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->deactivate()V

    goto :goto_4

    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    sget v4, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->parseApk()V

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->parseApk()V
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :goto_6
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v3, v2}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    :cond_f
    :goto_7
    iget-boolean v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Verification is already in progress for session "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v0, v1, v6}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->verifySession()V

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v10}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :pswitch_5
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_12
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_4

    :goto_9
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, v3, v2, v8}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerException;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_13
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    :goto_a
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->notifyKnoxSignatureVerificationFailure(IILjava/lang/String;)V

    goto/16 :goto_4

    :goto_b
    return v20

    :pswitch_6
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string/jumbo v1, "dispatchSessionSealed"

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    iget-object v2, v1, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v1}, Lcom/android/server/pm/utils/RequestThrottle;->runInternal()Z

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/16 v20, 0x1

    return v20

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, " before sealing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
