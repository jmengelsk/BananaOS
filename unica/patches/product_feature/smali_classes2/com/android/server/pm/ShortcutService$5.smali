.class public final Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/pm/ShortcutService$5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget v2, v1, Lcom/android/server/pm/ShortcutService$5;->$r8$classId:I

    packed-switch v2, :pswitch_data_276

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    goto :goto_2b

    :catchall_29
    move-exception v0

    goto :goto_35

    :cond_2b
    :goto_2b
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v2

    return-void

    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_29

    throw v0

    :pswitch_37  #0x1
    const-string/jumbo v2, "adding package: "

    const-string/jumbo v3, "replacing package: "

    const-string/jumbo v4, "archiving package: "

    const-string/jumbo v5, "removing package: "

    const-string/jumbo v6, "changing package: "

    const-string/jumbo v7, "Skip PACKAGE_CHANGED intent from Emergency mode: "

    const-string/jumbo v8, "clearing data for package: "

    const-string/jumbo v9, "received package broadcast intent: "

    const-string v10, "Intent broadcast does not contain package name: "

    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/16 v12, -0x2710

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v12, :cond_72

    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_229

    :cond_72
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_7a
    iget-object v15, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object v15, v15, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_21d
    .catchall {:try_start_7a .. :try_end_7f} :catchall_219

    move-wide/from16 v16, v13

    :try_start_81
    iget-object v13, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v13, v11}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v13

    if-nez v13, :cond_92

    monitor-exit v15
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_8f

    :cond_8a
    :goto_8a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_229

    :catchall_8f
    move-exception v0

    goto/16 :goto_217

    :cond_92
    :try_start_92
    monitor-exit v15
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_8f

    :try_start_93
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_a4

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    goto :goto_a5

    :catchall_9e
    move-exception v0

    goto/16 :goto_22a

    :catch_a1
    move-exception v0

    goto/16 :goto_220

    :cond_a4
    const/4 v13, 0x0

    :goto_a5
    if-nez v13, :cond_ba

    const-string/jumbo v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    :cond_ba
    const-string/jumbo v10, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v15, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string/jumbo v14, "ShortcutService"

    move/from16 v18, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v14, 0x1

    const/4 v10, -0x1

    sparse-switch v9, :sswitch_data_27e

    goto :goto_113

    :sswitch_e7
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    const/4 v9, 0x0

    goto :goto_114

    :sswitch_f2
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    move v9, v14

    goto :goto_114

    :sswitch_fd
    const-string/jumbo v9, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    const/4 v9, 0x3

    goto :goto_114

    :sswitch_108
    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    const/4 v9, 0x2

    goto :goto_114

    :cond_113
    :goto_113
    move v9, v10

    :goto_114
    if-eqz v9, :cond_1d3

    if-eq v9, v14, :cond_189

    const/4 v2, 0x2

    if-eq v9, v2, :cond_144

    const/4 v2, 0x3

    if-eq v9, v2, :cond_120

    goto/16 :goto_8a

    :cond_120
    const-string/jumbo v0, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v11, v13, v14}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    goto/16 :goto_8a

    :cond_144
    const-string v2, "EM_PKG_HADNLER_ID"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v10, :cond_168

    const-string/jumbo v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pkg: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    :cond_168
    const-string/jumbo v0, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0, v13, v11}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto/16 :goto_8a

    :cond_189
    if-eqz v18, :cond_18f

    if-eqz v18, :cond_8a

    if-eqz v15, :cond_8a

    :cond_18f
    if-nez v18, :cond_1ac

    const-string/jumbo v0, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c8

    :cond_1ac
    if-eqz v15, :cond_1c8

    const-string/jumbo v0, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c8
    :goto_1c8
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v13, v2}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    goto/16 :goto_8a

    :cond_1d3
    if-eqz v18, :cond_1f6

    const-string/jumbo v0, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0, v13, v11}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto/16 :goto_8a

    :cond_1f6
    const-string/jumbo v0, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0, v13, v11}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_215} :catch_a1
    .catchall {:try_start_93 .. :try_end_215} :catchall_9e

    goto/16 :goto_8a

    :goto_217
    :try_start_217
    monitor-exit v15
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_8f

    :try_start_218
    throw v0
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_219} :catch_a1
    .catchall {:try_start_218 .. :try_end_219} :catchall_9e

    :catchall_219
    move-exception v0

    move-wide/from16 v16, v13

    goto :goto_22a

    :catch_21d
    move-exception v0

    move-wide/from16 v16, v13

    :goto_220
    :try_start_220
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v2, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_227
    .catchall {:try_start_220 .. :try_end_227} :catchall_9e

    goto/16 :goto_8a

    :goto_229
    return-void

    :goto_22a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_22e  #0x0
    iget-object v2, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_239

    goto :goto_274

    :cond_239
    :try_start_239
    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_274

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const/16 v2, -0x2710

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_250} :catch_26c

    :try_start_250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_254
    .catchall {:try_start_250 .. :try_end_254} :catchall_263

    :try_start_254
    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_25e
    .catchall {:try_start_254 .. :try_end_25e} :catchall_265

    :try_start_25e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    goto :goto_274

    :catchall_263
    move-exception v0

    goto :goto_26a

    :catchall_265
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_26a
    monitor-exit v2
    :try_end_26b
    .catchall {:try_start_25e .. :try_end_26b} :catchall_263

    :try_start_26b
    throw v0
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_26c} :catch_26c

    :catch_26c
    move-exception v0

    iget-object v1, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v2, "Exception in mReceiver.onReceive"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_274
    :goto_274
    return-void

    nop

    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_22e  #00000000
        :pswitch_37  #00000001
    .end packed-switch

    :sswitch_data_27e
    .sparse-switch
        0xa480416 -> :sswitch_108
        0xff13fb5 -> :sswitch_fd
        0x1f50b9c2 -> :sswitch_f2
        0x5c1076e2 -> :sswitch_e7
    .end sparse-switch
.end method
