.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->$r8$classId:I

    packed-switch v0, :pswitch_data_84

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    check-cast p0, [I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_14

    goto :goto_30

    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_30

    :cond_1b
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    aget v0, p0, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p0, v1

    :goto_30
    return-void

    :pswitch_31  #0x1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p0, p1, :cond_56

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_56

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_56

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    :cond_56
    return-void

    :pswitch_57  #0x0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda23;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p0, p1, :cond_82

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_82

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_82

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p0

    if-eqz p0, :cond_82

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    :cond_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_57  #00000000
        :pswitch_31  #00000001
    .end packed-switch
.end method
