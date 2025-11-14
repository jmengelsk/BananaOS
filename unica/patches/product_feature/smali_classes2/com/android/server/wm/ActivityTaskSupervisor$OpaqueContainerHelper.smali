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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    return-void
.end method


# virtual methods
.method public final isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 5

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p1, p0, v0, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_b

    :cond_0
    :goto_0
    move p3, v0

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, p3

    :goto_2
    if-nez p2, :cond_a

    if-eqz v1, :cond_4

    goto/16 :goto_5

    :cond_4
    move p2, p3

    :goto_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_b

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0, v0, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_8

    move v3, v0

    goto :goto_4

    :cond_8
    move v3, p3

    :goto_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    new-instance v4, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    goto/16 :goto_0

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    invoke-virtual {p1, p0, v0, p4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_b

    goto/16 :goto_0

    :cond_b
    :goto_6
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    return p3
.end method

.method public final isOpaque(Lcom/android/server/wm/WindowContainer;Z)Z
    .locals 2

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoreFloatingWindow:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p0

    return p0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoreFloatingWindow:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method
