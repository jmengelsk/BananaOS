.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;
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
    .locals 0

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast p0, [I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast p0, [I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    new-instance v4, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;

    invoke-direct {v4, v3, v1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda19;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_7

    aget v1, p0, v2

    add-int/lit8 v3, v1, 0x1

    aput v3, p0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
