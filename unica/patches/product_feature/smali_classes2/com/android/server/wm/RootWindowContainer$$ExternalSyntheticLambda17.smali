.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Transition;Lcom/android/server/wm/DisplayContent;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/wm/DisplayContent;

    iput p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$3:I

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$1:Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->setAllReady()V

    new-instance v1, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;->f$3:I

    invoke-direct {v1, p0}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    iget-object p0, p1, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v2, p1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->setDisconnectReparentDisplay(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    return-void
.end method
