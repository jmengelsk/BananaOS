.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v2, :pswitch_data_126

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wm/FactoryErrorDialog;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->ensureBootCompleted()V

    return-void

    :pswitch_24  #0x1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_31
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    move-result-object v4

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_7a

    :try_start_3c
    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v4, :cond_64

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v6
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_5a

    if-eqz v6, :cond_64

    :try_start_50
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-interface {p0, v1}, Landroid/app/IApplicationThread;->clearIdsTrainingData(Z)V

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_58} :catch_5d
    .catchall {:try_start_50 .. :try_end_58} :catchall_5a

    move v0, v1

    goto :goto_64

    :catchall_5a
    move-exception v0

    move-object p0, v0

    goto :goto_92

    :catch_5d
    :try_start_5d
    const-string p0, "ActivityTaskManager"

    const-string v1, "Failed to clear Ids Training Data"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    :goto_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_5a

    if-eqz v0, :cond_90

    :try_start_67
    new-instance p0, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/data/system/idsFile.txt"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_73} :catch_89
    .catchall {:try_start_67 .. :try_end_73} :catchall_7a

    :try_start_73
    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_7d

    :try_start_76
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_89
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_90

    :catchall_7a
    move-exception v0

    move-object p0, v0

    goto :goto_94

    :catchall_7d
    move-exception v0

    move-object v1, v0

    :try_start_7f
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_88

    :catchall_83
    move-exception v0

    move-object p0, v0

    :try_start_85
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_88
    throw v1
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_7a

    :catch_89
    :try_start_89
    const-string p0, "ActivityTaskManager"

    const-string v0, "Error writing IDS file during bindApplication."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_7a

    return-void

    :goto_92
    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_5a

    :try_start_93
    throw p0

    :goto_94
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_93 .. :try_end_95} :catchall_7a

    throw p0

    :pswitch_96  #0x0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    iget-object v4, v3, Lcom/android/server/wm/VrController;->mVrService:Lcom/android/server/vr/VrManagerService$LocalService;

    if-nez v4, :cond_a6

    move v12, v0

    goto :goto_f4

    :cond_a6
    iget-object v5, v3, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_a9
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_af

    move v7, v1

    goto :goto_b0

    :cond_af
    move v7, v0

    :goto_b0
    iget v9, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v10, v3, Lcom/android/server/wm/VrController;->mVrState:I

    if-eqz v7, :cond_c4

    iget v12, v3, Lcom/android/server/wm/VrController;->mVrState:I

    or-int/2addr v12, v1

    iput v12, v3, Lcom/android/server/wm/VrController;->mVrState:I

    goto :goto_ca

    :cond_c4
    iget v12, v3, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v12, v12, -0x2

    iput v12, v3, Lcom/android/server/wm/VrController;->mVrState:I

    :goto_ca
    iget v12, v3, Lcom/android/server/wm/VrController;->mVrState:I

    if-eq v10, v12, :cond_d0

    move v12, v1

    goto :goto_d1

    :cond_d0
    move v12, v0

    :goto_d1
    if-eqz v12, :cond_e2

    if-eqz v6, :cond_df

    iget v10, v6, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-lez v10, :cond_e2

    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    invoke-virtual {v3, v10, v6, v0}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_e2

    :cond_df
    invoke-virtual {v3, v0, v0}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    :cond_e2
    :goto_e2
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_ea

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    :goto_e8
    move v10, p0

    goto :goto_ec

    :cond_ea
    const/4 p0, -0x1

    goto :goto_e8

    :goto_ec
    monitor-exit v5
    :try_end_ed
    .catchall {:try_start_a9 .. :try_end_ed} :catchall_122

    sget-object p0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    iget-object v6, v4, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    :goto_f4
    if-nez v12, :cond_f7

    goto :goto_11c

    :cond_f7
    iget-object p0, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    :try_start_fd
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    iget v3, v3, Lcom/android/server/wm/VrController;->mVrState:I

    if-eqz v3, :cond_104

    move v0, v1

    :cond_104
    iget-object v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    if-eqz v0, :cond_118

    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    goto :goto_118

    :catchall_116
    move-exception v0

    goto :goto_11d

    :cond_118
    :goto_118
    monitor-exit p0
    :try_end_119
    .catchall {:try_start_fd .. :try_end_119} :catchall_116

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_11c
    return-void

    :goto_11d
    :try_start_11d
    monitor-exit p0
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_116

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_122
    move-exception v0

    move-object p0, v0

    :try_start_124
    monitor-exit v5
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_122

    throw p0

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_96  #00000000
        :pswitch_24  #00000001
    .end packed-switch
.end method
