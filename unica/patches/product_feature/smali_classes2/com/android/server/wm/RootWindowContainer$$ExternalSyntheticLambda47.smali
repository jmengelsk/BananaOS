.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$1:Lcom/android/server/wm/Transition;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$1:Lcom/android/server/wm/Transition;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1, p1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    iget p0, v0, Lcom/android/server/wm/Transition;->mState:I

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    iget p0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v1, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, -0xc6418a78964c316L    # -7.804015622836719E248

    invoke-static {p0, v2, v3, p1, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    iput-boolean p1, v0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    iget-object p0, v0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    :goto_0
    if-ltz v1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Transition$ReadyCondition;

    iget-boolean v2, p1, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "play-now"

    iput-object v2, p1, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    sget-object p0, Lcom/android/server/wm/Transition$ReadyTracker;->NULL_TRACKER:Lcom/android/server/wm/Transition$ReadyTracker;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->setAllReady()V

    iget p0, v0, Lcom/android/server/wm/Transition;->mState:I

    if-nez p0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->start()V

    :cond_7
    iget-object p0, v0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t meet a condition before it is waited on"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
