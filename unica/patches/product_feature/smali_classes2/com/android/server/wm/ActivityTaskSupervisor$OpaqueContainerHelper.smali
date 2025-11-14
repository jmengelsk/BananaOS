.class public final Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final mEnableMultipleDesktopsBackend:Z

.field public mIgnoreFloatingWindow:Z

.field public mIgnoringInvisibleActivity:Z

.field public mIgnoringKeyguard:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    return-void
.end method


# virtual methods
.method public final isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 10

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_16

    invoke-virtual {p1, p0, v0, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_c0

    :cond_13
    :goto_13
    move p3, v0

    goto/16 :goto_c0

    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_1e

    move p2, v0

    goto :goto_1f

    :cond_1e
    move p2, p3

    :goto_1f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_30

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v1

    if-eqz v1, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, p3

    :goto_31
    if-nez p2, :cond_b8

    if-eqz v1, :cond_37

    goto/16 :goto_b8

    :cond_37
    move p2, p3

    :goto_38
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_c0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_13

    :cond_4f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_74
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_b5

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_84

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_b5

    :cond_84
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_b5

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0, v0, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_a1

    move v3, v0

    goto :goto_a2

    :cond_a1
    move v3, p3

    :goto_a2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    new-instance v4, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v3, :cond_b5

    if-eqz v1, :cond_b5

    goto/16 :goto_13

    :cond_b5
    add-int/lit8 p2, p2, 0x1

    goto :goto_38

    :cond_b8
    :goto_b8
    invoke-virtual {p1, p0, v0, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_c0

    goto/16 :goto_13

    :cond_c0
    :goto_c0
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    return p3
.end method

.method public final isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z
    .registers 5

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoreFloatingWindow:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p0

    return p0
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    if-eqz v0, :cond_12

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v1, :cond_2b

    :cond_12
    if-nez v0, :cond_19

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v0, :cond_19

    goto :goto_2b

    :cond_19
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoreFloatingWindow:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method
