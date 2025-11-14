.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v3, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$3:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_e0

    aget v6, v2, v5

    iget-object v7, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v8, v8, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v8

    :try_start_22
    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    move-result v7

    monitor-exit v8
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_d7

    if-nez v7, :cond_31

    :cond_2d
    move/from16 p0, v0

    goto/16 :goto_da

    :cond_31
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    :try_start_35
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v8, "android.intent.extra.user_handle"

    invoke-virtual {v9, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v8, 0x20

    if-eqz v0, :cond_4e

    invoke-virtual {v9, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4e
    const-string/jumbo v10, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    iget-object v10, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v10, :cond_60

    invoke-virtual {v10}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v10

    :goto_5d
    move-wide/from16 v17, v10

    goto :goto_63

    :cond_60
    const-wide/16 v10, 0x2710

    goto :goto_5d

    :goto_63
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v16

    const-string v21, ""

    const/16 v20, 0xca

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v6

    move-object v6, v7

    const/4 v7, 0x0

    move/from16 v24, v8

    const/4 v8, 0x0

    move/from16 p0, v0

    move/from16 v0, v24

    invoke-interface/range {v6 .. v22}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-object v7, v6

    move/from16 v6, v22

    iget-object v8, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v8

    if-eqz v8, :cond_da

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v8, "android.intent.extra.user_handle"

    invoke-virtual {v9, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p0, :cond_b5

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_b5
    invoke-virtual/range {v23 .. v23}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v6

    move-object v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v6 .. v22}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_d0} :catch_d1

    goto :goto_da

    :catch_d1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catchall_d7
    move-exception v0

    :try_start_d8
    monitor-exit v8
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v0

    :cond_da
    :goto_da
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p0

    goto/16 :goto_f

    :cond_e0
    return-void
.end method
