.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;

.field public final synthetic f$3:Lcom/android/server/wm/Transition;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;Lcom/android/server/wm/Transition;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    iput-boolean p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;

    iput-object p4, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/Transition;

    iput-boolean p5, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 9

    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    iget-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/Transition;

    iget-boolean p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$4:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v5, v5, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-eqz v0, :cond_0

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v8, v7}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " uses blast for display switch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DeferredDisplayUpdater"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput v7, v4, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    :cond_0
    iget-object v4, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;->run()V

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2, v5, v3}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v5, v3}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v0

    if-eqz p0, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3, v1, v4}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    new-instance v1, Landroid/view/DisplayInfo;

    iget-object v3, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v1, v3}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-eq p0, v1, :cond_2

    invoke-virtual {v0, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;->setDisconnectReparentDisplay(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    :cond_2
    iget-object p0, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :goto_1
    iget-object p1, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p0
.end method
