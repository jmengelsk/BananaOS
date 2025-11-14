.class public final Lcom/android/server/wm/MultiTaskingController$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyWallpaperVisibilityChanged:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartHomeAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyFinishRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    return-void

    :cond_4
    const-class p0, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;

    if-nez p0, :cond_5

    const-string/jumbo p0, "MultiTaskingController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleMessage: can\'t find localService, what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, p0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v2, ""

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;->onSecuredAppLaunched(ILjava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;->onSecuredAppRemoved(ILjava/lang/String;)V

    return-void

    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/FreeformController;->setFreeformWindowingModeByCornerGestureLocked(IILandroid/graphics/Rect;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_CORNER_GESTURE_SA_LOGGING:Z

    if-eqz p0, :cond_9

    const-string p0, "2004"

    const-string p1, "From Gesture"

    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
