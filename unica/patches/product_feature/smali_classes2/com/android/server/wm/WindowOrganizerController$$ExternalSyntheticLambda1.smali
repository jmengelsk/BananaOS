.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/WindowContainerTransaction;

    iput p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/WindowContainerTransaction;

    iget v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$2:I

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    return-void
.end method
