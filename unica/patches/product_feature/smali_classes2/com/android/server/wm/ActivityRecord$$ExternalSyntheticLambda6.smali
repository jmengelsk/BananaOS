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
    .locals 0

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityRecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    new-instance v3, Landroid/app/assist/ActivityId;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
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

    :try_start_0
    iget-object v4, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->activityStartAssistDataEnabled:Z

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
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

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    monitor-exit v3

    goto :goto_2

    :cond_3
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string/jumbo v2, "resetConfig"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_6
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_4
    return-void

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
