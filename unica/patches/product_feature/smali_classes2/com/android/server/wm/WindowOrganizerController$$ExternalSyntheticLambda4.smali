.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$4:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$1:Landroid/window/WindowContainerTransaction;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$4:Landroid/window/RemoteTransition;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$1:Landroid/window/WindowContainerTransaction;

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$4:Landroid/window/RemoteTransition;

    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition;

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    if-eqz p1, :cond_16

    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v7}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    :cond_16
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    const/4 v2, -0x1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    move-result p0

    if-nez p0, :cond_37

    iget-object p0, v7, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_37

    if-nez v6, :cond_37

    invoke-virtual {v7}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    :cond_37
    iget-object p0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p1, 0x0

    invoke-virtual {p0, v7, p1, v6, p1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
