.class public Lcom/android/server/wm/DisplayArea$Dimmable;
.super Lcom/android/server/wm/DisplayArea;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    new-instance p1, Lcom/android/server/wm/Dimmer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-void
.end method


# virtual methods
.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0
.end method

.method public prepareSurfaces()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayArea$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_1

    iput-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_2
    return-void
.end method
