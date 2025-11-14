.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$4:Landroid/window/WindowContainerTransaction$HierarchyOp;

.field public final synthetic f$5:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/WindowContainer;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/wm/TaskDisplayArea;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$4:Landroid/window/WindowContainerTransaction$HierarchyOp;

    iput-object p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$5:Lcom/android/server/wm/WindowContainer;

    iput-boolean p7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$6:Z

    iput-object p8, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$7:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/WindowContainer;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$3:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$4:Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$5:Lcom/android/server/wm/WindowContainer;

    iget-boolean v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$6:Z

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$7:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " Processing task="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "WindowOrganizerController"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v9, 0x0

    if-nez v7, :cond_b6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eq v7, v1, :cond_36

    goto/16 :goto_b6

    :cond_36
    if-eqz v2, :cond_62

    invoke-virtual {p1, v3, v9}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v1

    if-nez v1, :cond_62

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v1, :cond_4f

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_62

    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reparentChildrenTasksHierarchyOp non-resizeable task to multi window, task="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_62
    :goto_62
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_7b

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_7b

    goto :goto_b6

    :cond_7b
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_94

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_94

    goto :goto_b6

    :cond_94
    invoke-virtual {v0, v5, p1, v6}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_9b

    goto :goto_b6

    :cond_9b
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {p0, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a8

    :cond_a5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a8
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    move-result p1

    if-eqz p1, :cond_b6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_b6

    return p1

    :cond_b6
    :goto_b6
    return v9
.end method
