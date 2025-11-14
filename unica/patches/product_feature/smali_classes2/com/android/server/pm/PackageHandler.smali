.class public final Lcom/android/server/pm/PackageHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final doHandleMessage(Landroid/os/Message;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    if-eq v3, v2, :cond_372

    const/16 v5, 0x9

    const-wide/32 v6, 0x40000

    if-eq v3, v5, :cond_2d9

    const/16 v5, 0xc

    if-eq v3, v5, :cond_2a2

    const/16 v5, 0xd

    if-eq v3, v5, :cond_29c

    const/16 v5, 0xf

    if-eq v3, v5, :cond_266

    const/16 v5, 0x10

    if-eq v3, v5, :cond_232

    packed-switch v3, :pswitch_data_468

    packed-switch v3, :pswitch_data_478

    goto/16 :goto_462

    :pswitch_29  #0x1c
    :try_start_29
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
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_50} :catch_51

    return-void

    :catch_51
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

    goto/16 :goto_462

    :pswitch_6c  #0x1b
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->runMessage(ILjava/lang/Object;)Z

    return-void

    :pswitch_7c  #0x18, 0x1d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_462

    const/16 v5, 0x1d

    if-ne v3, v5, :cond_87

    goto :goto_88

    :cond_87
    move v2, v4

    :goto_88
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    return-void

    :pswitch_8e  #0x17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/CleanUpArgs;

    if-eqz v1, :cond_462

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :pswitch_a0  #0x16
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/VerifyingSession;

    if-eqz v3, :cond_462

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

    :pswitch_112  #0x15
    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/VerifyingSession;

    if-nez v5, :cond_12d

    const-string/jumbo v0, "PackageManager"

    const-string v1, "Invalid rollback enabled token "

    const-string v2, " received"

    invoke-static {v3, v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12d
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    if-eq v1, v2, :cond_166

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

    :cond_166
    const-string/jumbo v0, "enable_rollback"

    invoke-static {v6, v7, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-boolean v4, v5, Lcom/android/server/pm/VerifyingSession;->mWaitForEnableRollbackToComplete:Z

    invoke-virtual {v5}, Lcom/android/server/pm/VerifyingSession;->handleReturnCode()V

    return-void

    :pswitch_172  #0x14
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

    if-eqz v16, :cond_1a1

    const-string/jumbo v4, "] Phase2; resolving"

    invoke-static {v1, v8, v4, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a1
    iget-object v7, v9, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    invoke-static {v7}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    new-instance v4, Lcom/android/server/pm/InstantAppResolver$1;

    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    :try_start_1ac
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
    :try_end_1d3
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1ac .. :try_end_1d3} :catch_1ec

    :try_start_1d3
    invoke-virtual {v5}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_1db
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1d3 .. :try_end_1db} :catch_1f5
    .catch Ljava/lang/InterruptedException; {:try_start_1d3 .. :try_end_1db} :catch_1ee
    .catch Landroid/os/RemoteException; {:try_start_1d3 .. :try_end_1db} :catch_462
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1d3 .. :try_end_1db} :catch_1ec

    :try_start_1db
    invoke-virtual {v3, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0
    :try_end_1df
    .catchall {:try_start_1db .. :try_end_1df} :catchall_1e7

    :try_start_1df
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v0, v5, v6}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Landroid/os/IRemoteCallback;)V

    goto/16 :goto_462

    :catchall_1e7
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_1ec
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1df .. :try_end_1ec} :catch_1f5
    .catch Ljava/lang/InterruptedException; {:try_start_1df .. :try_end_1ec} :catch_1ee
    .catch Landroid/os/RemoteException; {:try_start_1df .. :try_end_1ec} :catch_462
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1df .. :try_end_1ec} :catch_1ec

    :catch_1ec
    move-exception v0

    goto :goto_1fb

    :catch_1ee
    :try_start_1ee
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v0

    :catch_1f5
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {v0, v2}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw v0
    :try_end_1fb
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1ee .. :try_end_1fb} :catch_1ec

    :goto_1fb
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v3, 0x2

    if-ne v0, v2, :cond_201

    move v2, v3

    :cond_201
    const/16 v0, 0x384

    invoke-static {v0, v2, v13, v14, v8}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IIJLjava/lang/String;)V

    if-eqz v16, :cond_462

    if-ne v2, v3, :cond_212

    const-string/jumbo v0, "] Phase2; bind timed out"

    invoke-static {v1, v8, v0, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_462

    :cond_212
    const-string/jumbo v0, "] Phase2; service connection error"

    invoke-static {v1, v8, v0, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_462

    :pswitch_21a  #0x13
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_221
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    monitor-exit v3

    return-void

    :catchall_22f
    move-exception v0

    monitor-exit v3
    :try_end_231
    .catchall {:try_start_221 .. :try_end_231} :catchall_22f

    throw v0

    :cond_232
    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_239

    goto :goto_23a

    :cond_239
    move v2, v4

    :goto_23a
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v5, :cond_462

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v6

    if-eqz v6, :cond_24e

    goto/16 :goto_462

    :cond_24e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    if-nez v2, :cond_260

    iget v2, v1, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget-object v6, v5, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_260

    goto/16 :goto_462

    :cond_260
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v5, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    return-void

    :cond_266
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-nez v3, :cond_280

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Verification with id "

    const-string v3, " not found. It may be invalid or overridden by integrity verification"

    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_280
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_292

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Verification with id "

    const-string v3, " already complete."

    invoke-static {v2, v1, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_292
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v3, v1, v0}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V

    return-void

    :cond_29c
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->writeSettings(Z)V

    return-void

    :cond_2a2
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2a7

    move v4, v2

    :cond_2a7
    iget v3, v1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_2b2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    :cond_2b2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2c3

    check-cast v1, Ljava/util/Set;

    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AsecInstallHelper;->unloadAllContainers(Ljava/util/Set;)V

    :cond_2c3
    if-eqz v4, :cond_462

    :try_start_2c5
    invoke-static {}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->finishMediaUpdate()V
    :try_end_2cc
    .catch Landroid/os/RemoteException; {:try_start_2c5 .. :try_end_2cc} :catch_2ce

    goto/16 :goto_462

    :catch_2ce
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "StorageManagerService not running?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_462

    :cond_2d9
    iget-object v3, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_2de
    iget-object v5, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallRequest;

    iget v8, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_2f1

    move v4, v2

    :cond_2f1
    iget-object v1, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v3
    :try_end_2f9
    .catchall {:try_start_2de .. :try_end_2f9} :catchall_36f

    if-nez v5, :cond_2fd

    goto/16 :goto_462

    :cond_2fd
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v1, :cond_305

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_305
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v1, :cond_30c

    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_30c
    iget v1, v5, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v1, v2, :cond_356

    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v1, :cond_356

    iget-object v3, v1, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget v9, v3, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v10

    if-nez v10, :cond_31f

    goto :goto_353

    :cond_31f
    :try_start_31f
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_326

    goto :goto_353

    :cond_326
    iget-object v11, v10, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-wide v12, v10, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget-boolean v3, v3, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-nez v3, :cond_341

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v11, v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    const v9, 0x33479

    invoke-static {v9, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_353

    :cond_341
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v11, v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    const v9, 0x3347a

    invoke-static {v9, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_353
    .catch Ljava/lang/IllegalStateException; {:try_start_31f .. :try_end_353} :catch_353
    .catch Ljava/lang/NullPointerException; {:try_start_31f .. :try_end_353} :catch_353

    :catch_353
    :goto_353
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    :cond_356
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_35d

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_35d
    iget-object v1, v5, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v1, :cond_362

    goto :goto_367

    :cond_362
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/PackageManagerService;->handlePackagePostInstall(Lcom/android/server/pm/InstallRequest;Z)V

    :goto_367
    const-string/jumbo v0, "postInstall"

    invoke-static {v6, v7, v0, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_462

    :catchall_36f
    move-exception v0

    :try_start_370
    monitor-exit v3
    :try_end_371
    .catchall {:try_start_370 .. :try_end_371} :catchall_36f

    throw v0

    :cond_372
    iget-object v0, v0, Lcom/android/server/pm/PackageHandler;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    iget v13, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_382
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PendingPackageBroadcasts;->copiedMap()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v4

    move v7, v6

    :goto_390
    if-ge v6, v5, :cond_3a2

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v2

    goto :goto_390

    :catchall_39f
    move-exception v0

    goto/16 :goto_466

    :cond_3a2
    if-nez v7, :cond_3a6

    monitor-exit v1

    return-void

    :cond_3a6
    new-array v14, v7, [Ljava/lang/String;

    new-array v15, v7, [Ljava/util/ArrayList;

    new-array v6, v7, [I

    move v7, v4

    move v8, v7

    :goto_3ae
    if-ge v7, v5, :cond_3fb

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    invoke-static {v10}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v11

    :goto_3be
    if-ge v4, v11, :cond_3f3

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

    if-eqz v2, :cond_3e7

    iget v2, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    goto :goto_3e8

    :cond_3e7
    const/4 v2, -0x1

    :goto_3e8
    aput v2, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p0

    move/from16 v2, v17

    goto :goto_3be

    :cond_3f3
    move/from16 v17, v2

    move-object/from16 p0, v3

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_3ae

    :cond_3fb
    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PendingPackageBroadcasts;

    iget-object v3, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_404
    .catchall {:try_start_382 .. :try_end_404} :catchall_39f

    :try_start_404
    iget-object v2, v2, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    monitor-exit v3
    :try_end_40a
    .catchall {:try_start_404 .. :try_end_40a} :catchall_463

    :try_start_40a
    monitor-exit v1
    :try_end_40b
    .catchall {:try_start_40a .. :try_end_40b} :catchall_39f

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const/4 v4, 0x0

    :goto_412
    if-ge v4, v8, :cond_462

    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    if-eqz v2, :cond_447

    aget-object v2, v15, v4

    if-eqz v2, :cond_447

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, v17

    if-ne v2, v3, :cond_447

    aget-object v2, v15, v4

    const-string/jumbo v3, "androidx.work.impl.background.systemalarm.RescheduleReceiver"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_447

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

    :goto_444
    const/16 v17, 0x1

    goto :goto_45b

    :cond_447
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

    goto :goto_444

    :goto_45b
    add-int/lit8 v4, v4, 0x1

    move-object v8, v6

    move-object v6, v1

    move-object v1, v8

    move v8, v2

    goto :goto_412

    :catch_462
    :cond_462
    :goto_462
    return-void

    :catchall_463
    move-exception v0

    :try_start_464
    monitor-exit v3
    :try_end_465
    .catchall {:try_start_464 .. :try_end_465} :catchall_463

    :try_start_465
    throw v0

    :goto_466
    monitor-exit v1
    :try_end_467
    .catchall {:try_start_465 .. :try_end_467} :catchall_39f

    throw v0

    :pswitch_data_468
    .packed-switch 0x13
        :pswitch_21a  #00000013
        :pswitch_172  #00000014
        :pswitch_112  #00000015
        :pswitch_a0  #00000016
        :pswitch_8e  #00000017
        :pswitch_7c  #00000018
    .end packed-switch

    :pswitch_data_478
    .packed-switch 0x1b
        :pswitch_6c  #0000001b
        :pswitch_29  #0000001c
        :pswitch_7c  #0000001d
    .end packed-switch
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_8
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw p0
.end method
