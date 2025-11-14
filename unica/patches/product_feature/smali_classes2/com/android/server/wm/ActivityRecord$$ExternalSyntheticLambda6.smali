.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/ActivityRecord;)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityRecord;

    packed-switch v0, :pswitch_data_c4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    :cond_10
    return-void

    :pswitch_11  #0x1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    if-eqz v0, :cond_8b

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    new-instance v3, Landroid/app/assist/ActivityId;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_2b

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_2c

    :cond_2b
    const/4 v4, -0x1

    :goto_2c
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    invoke-direct {v3, v4, v5}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    const/16 v4, 0x2710

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->notifyActivityEvent(ILandroid/content/ComponentName;ILandroid/app/assist/ActivityId;)V

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_41
    iget-object v4, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    if-nez v4, :cond_4b

    monitor-exit v3

    goto :goto_8b

    :catchall_49
    move-exception p0

    goto :goto_89

    :cond_4b
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, -0x43

    invoke-virtual {v4, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "activity_start_assist_content"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v5, Landroid/app/assist/AssistContent;

    invoke-direct {v5, p0}, Landroid/app/assist/AssistContent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5, v4}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz v0, :cond_87

    invoke-virtual {v0, v2, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    monitor-exit v3

    goto :goto_8b

    :cond_87
    monitor-exit v3

    goto :goto_8b

    :goto_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_41 .. :try_end_8a} :catchall_49

    throw p0

    :cond_8b
    :goto_8b
    return-void

    :pswitch_8c  #0x0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_94
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_a2

    goto :goto_b9

    :cond_a2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_94 .. :try_end_a5} :catchall_b7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string/jumbo v2, "resetConfig"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_bd

    :catchall_b7
    move-exception p0

    goto :goto_be

    :cond_b9
    :goto_b9
    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_bd
    return-void

    :goto_be
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_b7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_8c  #00000000
        :pswitch_11  #00000001
    .end packed-switch
.end method
