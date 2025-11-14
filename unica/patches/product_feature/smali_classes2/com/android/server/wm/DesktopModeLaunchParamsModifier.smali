.class public final Lcom/android/server/wm/DesktopModeLaunchParamsModifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLogBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final varargs appendLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p0

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p0, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p0

    if-eq p0, v0, :cond_5

    :cond_3
    iget p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p0, :cond_4

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public final onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DesktopModeLaunchParamsModifier: task="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " activity="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v9, v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    const-string/jumbo v1, "desktop mode is not enabled, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_0
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v1, "non-desktop, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_2
    sget-object v9, Landroid/window/DesktopModeFlags;->DISABLE_DESKTOP_LAUNCH_PARAMS_OUTSIDE_DESKTOP_BUG_FIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v9}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0, v1, v5, v7}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string/jumbo v1, "not entering desktop mode, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_4

    const-string/jumbo v1, "has created-by-organizer-task, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v1, "not standard or undefined activity type, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_5
    const/4 v11, 0x1

    if-ge v6, v11, :cond_6

    const-string/jumbo v1, "not in windowing mode or bounds phase, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_6
    invoke-virtual {v8, v7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_8

    invoke-virtual {v9}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v4, 0x5

    iput v4, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const-string/jumbo v4, "freeform window mode applied to task trampoline"

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v12}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    iput v4, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "inherit-from-source="

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v12}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_0
    const/4 v12, 0x2

    if-ne v6, v11, :cond_a

    :cond_9
    move v10, v12

    goto/16 :goto_b

    :cond_a
    iget-object v4, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v1, "currentParams has bounds set, not overriding"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_e

    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v9}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_1
    move v10, v11

    goto/16 :goto_b

    :cond_d
    const-string/jumbo v1, "current task has bounds set, not overriding"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_e
    sget-object v4, Landroid/window/DesktopModeFlags;->INHERIT_TASK_BOUNDS_FOR_TRAMPOLINE_TASK_LAUNCHES:Landroid/window/DesktopModeFlags;

    invoke-virtual {v4}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v4

    const-string/jumbo v7, "final desktop mode task bounds set to %s"

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostVisibleFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_14

    if-nez v3, :cond_f

    goto :goto_2

    :cond_f
    iget-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v6, :cond_14

    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v6, :cond_10

    iget-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mAliasChild:Z

    if-eqz v6, :cond_10

    goto :goto_2

    :cond_10
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string/jumbo v4, "skip to inherit exiting task bounds"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_11
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-ne v6, v9, :cond_14

    iget v6, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-eq v6, v12, :cond_12

    const/4 v9, 0x3

    if-eq v6, v9, :cond_12

    const/4 v9, 0x4

    if-ne v6, v9, :cond_14

    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v9, 0x8000

    and-int/2addr v9, v6

    if-nez v9, :cond_13

    const/high16 v9, 0x8000000

    and-int/2addr v6, v9

    if-nez v6, :cond_14

    :cond_13
    const-string/jumbo v1, "inheriting bounds from existing closing instance"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    :goto_2
    sget v4, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    if-eqz v3, :cond_15

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v6, v6, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v6, v6, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {v6}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v6

    if-eqz v6, :cond_15

    move v6, v11

    goto :goto_3

    :cond_15
    move v6, v10

    :goto_3
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result v9

    if-eqz v9, :cond_16

    if-nez v6, :cond_16

    move v9, v11

    goto :goto_4

    :cond_16
    move v9, v10

    :goto_4
    if-eqz v9, :cond_17

    sget-object v6, Landroid/window/DesktopModeFlags;->ENABLE_CASCADING_WINDOWS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v6}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    if-eqz v6, :cond_17

    move v5, v11

    goto :goto_5

    :cond_17
    move v5, v10

    :goto_5
    if-eqz v3, :cond_18

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v13

    iget-boolean v14, v3, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    invoke-static {v6, v13, v14}, Lcom/android/internal/policy/DesktopModeCompatUtils;->shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;)I

    move-result v6

    goto :goto_6

    :cond_18
    move v6, v10

    :goto_6
    if-eqz p5, :cond_19

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_19

    if-nez v9, :cond_19

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "inherit-from-options="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_19
    const-string/jumbo v13, "respecting option bounds cascaded position="

    if-eqz v2, :cond_20

    iget v14, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v15, v14, 0x70

    and-int/lit8 v14, v14, 0x7

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v16

    if-eqz v16, :cond_1e

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget v3, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-int v3, v13

    new-instance v13, Landroid/util/Size;

    invoke-direct {v13, v5, v3}, Landroid/util/Size;-><init>(II)V

    sget-object v3, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v16

    iget v11, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-lez v11, :cond_1a

    if-ge v11, v3, :cond_1a

    goto :goto_7

    :cond_1a
    iget v11, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v19, v11, v18

    if-lez v19, :cond_1b

    cmpg-float v19, v11, v17

    if-gez v19, :cond_1b

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    move v11, v3

    goto :goto_7

    :cond_1b
    move/from16 v11, v16

    :goto_7
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v13, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v13, :cond_1c

    if-ge v13, v5, :cond_1c

    move v3, v13

    goto :goto_8

    :cond_1c
    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v13, v2, v18

    if-lez v13, :cond_1d

    cmpg-float v13, v2, v17

    if-gez v13, :cond_1d

    int-to-float v3, v5

    mul-float/2addr v3, v2

    float-to-int v3, v3

    :cond_1d
    :goto_8
    invoke-virtual {v1, v10, v10, v11, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v15, v14, v1, v4}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "layout specifies sizes, inheriting size and applying gravity"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_1e
    if-gtz v15, :cond_1f

    if-lez v14, :cond_21

    :cond_1f
    iget-object v11, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v15, v14, v1, v3}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "layout specifies gravity, applying desired bounds and gravity"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_20
    move-object v3, v4

    iget-object v11, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "layout not specified, applying desired bounds"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :goto_9
    if-eqz v9, :cond_22

    if-eqz v6, :cond_22

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->top:I

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "excluding caption height from app bounds"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    iput v1, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v10, 0x1

    goto :goto_b

    :cond_23
    :goto_a
    const-string/jumbo v1, "task null, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    iget-object v0, v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method
