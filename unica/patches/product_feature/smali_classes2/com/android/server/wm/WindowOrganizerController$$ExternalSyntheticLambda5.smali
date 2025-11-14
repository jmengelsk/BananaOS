.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$4:Lcom/android/server/wm/Transition$ReadyCondition;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$2:Landroid/window/WindowContainerTransaction;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$4:Lcom/android/server/wm/Transition$ReadyCondition;

    iput-boolean p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$2:Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/wm/Transition;->start()V

    iget-object v2, v6, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v1, v2, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    const/4 v2, -0x1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$4:Lcom/android/server/wm/Transition$ReadyCondition;

    invoke-virtual {p1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    iget-boolean p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$5:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    :cond_0
    return-void
.end method
