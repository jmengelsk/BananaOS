.class public final Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mParentAppBoundsOverride:Landroid/graphics/Rect;

.field public mParentBoundsOverride:Landroid/graphics/Rect;

.field public mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mTmpOverrideConfigOrientation:I

.field public mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mUseOverrideInsetsForConfig:Z


# virtual methods
.method public final resolveTmpOverrides(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Z)V
    .registers 13

    if-eqz p4, :cond_4

    move-object v0, p4

    goto :goto_f

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_f
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    if-eqz p4, :cond_15

    move-object v0, p4

    goto :goto_20

    :cond_15
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_20
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v0, :cond_4b

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object p2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2, v2}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    move-object p2, v0

    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    if-eqz p1, :cond_86

    invoke-static {v3}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-static {v0}, Lcom/android/server/wm/DesktopCompatPolicy;->shouldExcludeCaptionFromAppBounds(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v6, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v3

    goto :goto_6f

    :cond_6e
    move v3, v1

    :goto_6f
    if-lez v3, :cond_7a

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, v5, Landroid/graphics/Rect;->top:I

    goto :goto_86

    :cond_7a
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_86
    :goto_86
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v3, 0x2

    if-eqz p4, :cond_9f

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-lt p1, p2, :cond_9a

    goto :goto_9b

    :cond_9a
    move v2, v3

    :goto_9b
    iput v2, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    goto/16 :goto_115

    :cond_9f
    iget-boolean p4, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-nez p4, :cond_a5

    if-eqz p5, :cond_115

    :cond_a5
    if-eqz p1, :cond_115

    iget-object p4, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p4

    invoke-static {p4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result p4

    if-nez p4, :cond_115

    iget-object p4, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p4

    const/4 p5, -0x1

    if-ne p4, p5, :cond_c2

    if-nez p3, :cond_c2

    iget-object p3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget p4, p3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    :cond_c2
    if-eq p4, v2, :cond_c7

    const/4 p3, 0x3

    if-ne p4, p3, :cond_c8

    :cond_c7
    move v1, v2

    :cond_c8
    if-eqz v1, :cond_cd

    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_cf

    :cond_cd
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_cf
    if-eqz v1, :cond_d4

    iget p5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_d6

    :cond_d4
    iget p5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_d6
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1, p4, p3, p5}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p1

    iget-object p3, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p5

    if-le p4, p5, :cond_ea

    move p4, v3

    goto :goto_eb

    :cond_ea
    move p4, v2

    :goto_eb
    iput p4, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p4, p2, p5, p3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->orientationRespectedWithBounds(IIII)Z

    move-result p3

    if-eqz p3, :cond_10f

    if-gt p4, p2, :cond_10c

    goto :goto_10d

    :cond_10c
    move v2, v3

    :goto_10d
    iput v2, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    :cond_10f
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    :cond_115
    :goto_115
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method
