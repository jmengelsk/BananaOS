.class public final synthetic Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityClientController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IRemoteCallback;

.field public final synthetic f$3:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$4:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityClientController;ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityClientController;

    iput p2, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$2:Landroid/os/IRemoteCallback;

    iput-object p4, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/ActivityRecord;

    iput-object p5, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$4:Lcom/android/server/wm/Transition;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$2:Landroid/os/IRemoteCallback;

    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityClientController;

    iget-object v1, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v3, v2, v1}, Lcom/android/server/wm/ActivityClientController;->validateMultiwindowFullscreenRequestLocked(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "result"

    invoke-static {v1, v4}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :try_start_0
    invoke-interface {p1, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ActivityTaskManager"

    const-string/jumbo v4, "client throws an exception back to the server, ignore it"

    invoke-static {p1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$4:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    :cond_1
    iget-object p1, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/ActivityClientController;->executeMultiWindowFullscreenRequest(ILcom/android/server/wm/Task;)V

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method
