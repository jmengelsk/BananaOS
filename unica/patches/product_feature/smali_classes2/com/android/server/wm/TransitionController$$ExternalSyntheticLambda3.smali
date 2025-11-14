.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TransitionController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TransitionController;

    iput-boolean p2, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/Transition;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TransitionController;

    iget-boolean v1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/Transition;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_2d

    if-nez v1, :cond_27

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-static {v0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_27
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_2d
    return-void
.end method
