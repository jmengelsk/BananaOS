.class public final Lcom/android/server/pm/PackageHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final doHandleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    if-eq v3, v2, :cond_1d

    const/16 v5, 0x9

    const-wide/32 v6, 0x40000

    if-eq v3, v5, :cond_12

    const/16 v5, 0xc

    if-eq v3, v5, :cond_e

    const/16 v5, 0xd

    if-eq v3, v5, :cond_d

    const/16 v5, 0xf

    if-eq v3, v5, :cond_a

    const/16 v5, 0x10

    if-eq v3, v5, :cond_6

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v2

    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unused_static_shared_lib_min_cache_period"

    sget-wide v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to prune unused static shared libraries :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_24

    const/16 v5, 0x1d

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    return-void

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/CleanUpArgs;

    if-eqz v1, :cond_24

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/VerifyingSession;

    if-eqz v3, :cond_24

    iget-object v5, v3, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Enable rollback timed out for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->remove(I)V

    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Continuing with installation of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "enable_rollback"

    invoke-static {v6, v7, v5, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-boolean v4, v3, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    invoke-virtual {v3}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/VerifyingSession;

    if-nez v5, :cond_1

    const-string/jumbo v0, "PackageManager"

    const-string v1, "Invalid rollback enabled token "

    const-string v2, " received"

    invoke-static {v3, v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    if-eq v1, v2, :cond_2

    iget-object v0, v5, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Failed to enable rollback for "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Continuing with installation of "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "enable_rollback"

    invoke-static {v6, v7, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-boolean v4, v5, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    invoke-virtual {v5}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    return-void

    :pswitch_6
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/content/pm/InstantAppRequest;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    sget-boolean v1, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v8, v9, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    const-string/jumbo v1, "["

    const-string/jumbo v15, "PackageManager"

    sget-boolean v16, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v16, :cond_3

    const-string/jumbo v4, "] Phase2; resolving"

    invoke-static {v1, v8, v4, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v7, v9, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    invoke-static {v7}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    new-instance v4, Lcom/android/server/pm/InstantAppResolver$1;

    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    :try_start_1
    new-instance v17, Landroid/content/pm/InstantAppRequestInfo;

    iget-object v5, v9, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    invoke-static {v5}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v18

    iget-object v5, v9, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    iget v6, v9, Landroid/content/pm/InstantAppRequest;->userId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v20

    iget-boolean v6, v9, Landroid/content/pm/InstantAppRequest;->isRequesterInstantApp:Z

    iget-object v7, v9, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    move-object/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    invoke-direct/range {v17 .. v22}, Landroid/content/pm/InstantAppRequestInfo;-><init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V

    move-object/from16 v5, v17

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/pm/InstantAppResolverConnection$1;

    invoke-direct {v6, v0, v4, v13, v14}, Lcom/android/server/pm/InstantAppResolverConnection$1;-><init>(Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolver$1;J)V
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v0, v5, v6}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Landroid/os/IRemoteCallback;)V

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    :try_start_5
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v0

    :catch_3
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {v0, v2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v0
    :try_end_5
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_1
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v3, 0x2

    if-ne v0, v2, :cond_4

    move v2, v3

    :cond_4
    const/16 v0, 0x384

    invoke-static {v0, v2, v13, v14, v8}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IIJLjava/lang/String;)V

    if-eqz v16, :cond_24

    if-ne v2, v3, :cond_5

    const-string/jumbo v0, "] Phase2; bind timed out"

    invoke-static {v1, v8, v0, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_5
    const-string/jumbo v0, "] Phase2; service connection error"

    invoke-static {v1, v8, v0, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_7
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_6
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_6
    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    move v2, v4

    :goto_2
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_c

    :cond_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    if-nez v2, :cond_9

    iget v2, v1, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget-object v6, v5, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_c

    :cond_9
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v5, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    return-void

    :cond_a
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-nez v3, :cond_b

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Verification with id "

    const-string v3, " not found. It may be invalid or overridden by integrity verification"

    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Verification with id "

    const-string v3, " already complete."

    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v3, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    return-void

    :cond_d
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->writeSettings(Z)V

    return-void

    :cond_e
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_f

    move v4, v2

    :cond_f
    iget v3, v1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    :cond_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_11

    check-cast v1, Ljava/util/Set;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AsecInstallHelper;->unloadAllContainers(Ljava/util/Set;)V

    :cond_11
    if-eqz v4, :cond_24

    :try_start_7
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_c

    :catch_4
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "StorageManagerService not running?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_12
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_8
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallRequest;

    iget v8, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_13

    move v4, v2

    :cond_13
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v5, :cond_14

    goto/16 :goto_c

    :cond_14
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v1, :cond_15

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_15
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_16
    iget v1, v5, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v1, v2, :cond_1a

    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v1, :cond_1a

    iget-object v3, v1, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget v9, v3, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v10

    if-nez v10, :cond_17

    goto :goto_3

    :cond_17
    :try_start_9
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_18

    goto :goto_3

    :cond_18
    iget-object v11, v10, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-wide v12, v10, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget-boolean v3, v3, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-nez v3, :cond_19

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v11, v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    const v9, 0x33479

    invoke-static {v9, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_3

    :cond_19
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v11, v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    const v9, 0x3347a

    invoke-static {v9, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    :cond_1a
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1b
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v1, :cond_1c

    goto :goto_4

    :cond_1c
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/PackageManagerService;->handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V

    :goto_4
    const-string/jumbo v0, "postInstall"

    invoke-static {v6, v7, v0, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :cond_1d
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    iget v13, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_b
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PendingPackageBroadcasts;->copiedMap()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v4

    move v7, v6

    :goto_5
    if-ge v6, v5, :cond_1e

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    goto/16 :goto_d

    :cond_1e
    if-nez v7, :cond_1f

    monitor-exit v1

    return-void

    :cond_1f
    new-array v14, v7, [Ljava/lang/String;

    new-array v15, v7, [Ljava/util/ArrayList;

    new-array v6, v7, [I

    move v7, v4

    move v8, v7

    :goto_6
    if-ge v7, v5, :cond_22

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    invoke-static {v10}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v11

    :goto_7
    if-ge v4, v11, :cond_21

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v14, v8

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    aput-object v17, v15, v8

    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 p0, v3

    aget-object v3, v14, v8

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    goto :goto_8

    :cond_20
    const/4 v2, -0x1

    :goto_8
    aput v2, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p0

    move/from16 v2, v17

    goto :goto_7

    :cond_21
    move/from16 v17, v2

    move-object/from16 p0, v3

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_22
    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    iget-object v3, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v2, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v8, :cond_24

    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    if-eqz v2, :cond_23

    aget-object v2, v15, v4

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, v17

    if-ne v2, v3, :cond_23

    aget-object v2, v15, v4

    const-string/jumbo v3, "androidx.work.impl.background.systemalarm.RescheduleReceiver"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Don\'t send PACKAGE_CHANGED for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v14, v4

    const-string v7, " by WorkManager"

    invoke-static {v3, v5, v7, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    move-object v6, v1

    move-object v1, v2

    move v2, v8

    :goto_a
    const/16 v17, 0x1

    goto :goto_b

    :cond_23
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    aget-object v7, v14, v4

    aget-object v9, v15, v4

    aget v10, v6, v4

    const/4 v11, 0x0

    move v2, v8

    const/4 v8, 0x1

    move-object/from16 v23, v6

    move-object v6, v1

    move-object/from16 v1, v23

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    :goto_b
    add-int/lit8 v4, v4, 0x1

    move-object v8, v6

    move-object v6, v1

    move-object v1, v8

    move v8, v2

    goto :goto_9

    :catch_6
    :cond_24
    :goto_c
    return-void

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0

    :goto_d
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw p0
.end method
