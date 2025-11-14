.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAbsoluteBounds:Landroid/graphics/Rect;

.field public mAffordanceTargetFreeformTask:Z

.field public mChangeLeash:Landroid/view/SurfaceControl;

.field public mChangeTransitFlags:I

.field public mChangeTransitMode:I

.field public mCommonAncestor:Lcom/android/server/wm/WindowContainer;

.field public final mContainer:Lcom/android/server/wm/WindowContainer;

.field public final mDisplayId:I

.field public mEndParent:Lcom/android/server/wm/WindowContainer;

.field public mExistenceChanged:Z

.field public mFlags:I

.field public mForceChangeSplitTask:Z

.field public mForceChanged:Z

.field public mForceHidingTransit:I

.field public final mFreezeOutsets:Landroid/graphics/Rect;

.field public mHideWhileTwoHandDragging:Z

.field public final mIsDeskLaunchRootTask:Z

.field public mKnownConfigChanges:I

.field public mMinimizeAnimState:I

.field public final mMinimizePoint:Landroid/graphics/PointF;

.field public mMovingDisplayForDesktop:Z

.field public mReadyFlags:I

.field public mReadyMode:I

.field public final mRestoringTransientHide:Z

.field public mResumedAffordance:Z

.field public final mRotation:I

.field public final mShowWallpaper:Z

.field public mSnapshot:Landroid/view/SurfaceControl;

.field public mSnapshotLuma:F

.field public final mStartParent:Lcom/android/server/wm/WindowContainer;

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mIsDeskLaunchRootTask:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    iput-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    invoke-static {p1}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getActivatedDesktopTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mIsDeskLaunchRootTask:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    iput-boolean p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    return-void
.end method


# virtual methods
.method public final getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 3

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mMovingDisplayForDesktop:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getActivatedDesktopTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    if-ne v0, p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mIsDeskLaunchRootTask:Z

    if-eq p0, v2, :cond_6

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_6
    const/4 p0, 0x6

    return p0

    :cond_7
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_9

    if-eqz v0, :cond_8

    return v2

    :cond_8
    :goto_2
    const/4 p0, 0x2

    return p0

    :cond_9
    if-eqz v0, :cond_a

    :goto_3
    const/4 p0, 0x3

    return p0

    :cond_a
    :goto_4
    const/4 p0, 0x4

    return p0
.end method

.method public final hasChanged()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v0}, Landroid/hardware/display/DisplayManager;->isExternalDesktopDisplay(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_10

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_10

    :cond_1
    iget v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_10

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v4

    :goto_1
    if-eqz v3, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne v0, v3, :cond_7

    if-nez v3, :cond_7

    goto/16 :goto_3

    :cond_7
    if-ne v0, v3, :cond_10

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v0, v3, :cond_10

    :cond_8
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-ne v3, v0, :cond_10

    invoke-static {v2}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    if-ne v2, v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mHideWhileTwoHandDragging:Z

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_2

    :cond_c
    move v2, v4

    :goto_2
    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v2, :cond_e

    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    if-eqz p0, :cond_e

    goto :goto_4

    :cond_e
    const/high16 p0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_f

    goto :goto_4

    :cond_f
    :goto_3
    return v4

    :cond_10
    :goto_4
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "ChangeInfo{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
