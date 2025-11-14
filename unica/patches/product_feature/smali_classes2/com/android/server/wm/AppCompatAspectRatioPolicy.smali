.class public final Lcom/android/server/wm/AppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public mCoverLauncherMinAspectRatio:F

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

.field public mUserOrSystemMinAspectRatio:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iput-object p3, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    return-void
.end method


# virtual methods
.method public final applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v4, v4, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v4, :cond_12

    :goto_e
    const/16 v16, 0x0

    goto/16 :goto_1ec

    :cond_12
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->supportsAppCompatOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    const/high16 v11, -0x40800000  # -1.0f

    const/high16 v12, 0x3f800000  # 1.0f

    if-eqz v10, :cond_8c

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->supportsAppCompatOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_8c

    cmpg-float v13, v8, v12

    if-gez v13, :cond_7d

    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v13, v13, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_73

    iget-object v14, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v15, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v13, v13, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioPolicy;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    const/16 v16, 0x0

    sget-object v5, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    invoke-virtual {v5, v15, v14}, Lcom/android/server/wm/CompatChangeableAppsCache;->shouldRespectMinAspectRatioOverride(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_75

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v5, v5, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v5, v5, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result v5

    if-nez v5, :cond_75

    invoke-virtual {v13, v14}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getSystemMinAspectRatio(Ljava/lang/String;)F

    move-result v5

    goto :goto_76

    :cond_73
    const/16 v16, 0x0

    :cond_75
    move v5, v11

    :goto_76
    cmpl-float v13, v5, v11

    if-eqz v13, :cond_8e

    iput v5, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    goto :goto_90

    :cond_7d
    const/16 v16, 0x0

    iget-object v5, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v5, v5, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    move-result v5

    if-eqz v5, :cond_8e

    iput v8, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    goto :goto_8e

    :cond_8c
    const/16 v16, 0x0

    :cond_8e
    :goto_8e
    move/from16 v5, p4

    :goto_90
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v13, :cond_b1

    if-eqz v6, :cond_b1

    iget-boolean v14, v6, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    if-eqz v14, :cond_b1

    cmpg-float v14, v8, v12

    if-gez v14, :cond_b1

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mCoverLauncherAppCompatController:Lcom/android/server/wm/CoverLauncherAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/CoverLauncherAppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/CoverLauncherAppCompatAspectRatioPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN:Z

    if-eqz v0, :cond_1ec

    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v16

    :cond_b1
    if-eqz v7, :cond_1ec

    if-eqz v6, :cond_1ec

    cmpg-float v6, v4, v12

    if-gez v6, :cond_c1

    cmpg-float v6, v8, v12

    if-gez v6, :cond_c1

    cmpg-float v6, v5, v12

    if-ltz v6, :cond_1ec

    :cond_c1
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    const/4 v14, 0x7

    if-ne v6, v14, :cond_cd

    return v16

    :cond_cd
    if-eqz v9, :cond_d5

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_1ec

    :cond_d5
    sget-object v6, Landroid/window/DesktopModeFlags;->IGNORE_ASPECT_RATIO_RESTRICTIONS_FOR_RESIZEABLE_FREEFORM_ACTIVITIES:Landroid/window/DesktopModeFlags;

    invoke-virtual {v6}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    const/4 v9, 0x1

    if-eqz v6, :cond_11e

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    const/4 v14, 0x5

    if-ne v6, v14, :cond_11e

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v6

    if-nez v6, :cond_11e

    invoke-static {v3}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v6

    if-nez v6, :cond_f3

    goto/16 :goto_1ec

    :cond_f3
    iget-object v6, v6, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v6, :cond_1ec

    invoke-virtual {v6, v3}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v14

    if-eqz v14, :cond_1ec

    invoke-virtual {v6, v3}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    if-eq v6, v9, :cond_1ec

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v6, v6, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v6, v6, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object v14, v6, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    move v15, v11

    move/from16 v17, v12

    const-wide/32 v11, 0x13680faa

    invoke-static {v14, v11, v12}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v11

    iget-object v6, v6, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v6

    if-nez v6, :cond_1ec

    goto :goto_121

    :cond_11e
    move v15, v11

    move/from16 v17, v12

    :goto_121
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v1}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v12

    cmpg-float v14, v5, v17

    if-gez v14, :cond_132

    move v5, v12

    :cond_132
    cmpl-float v14, v4, v17

    if-ltz v14, :cond_13b

    cmpl-float v14, v5, v4

    if-lez v14, :cond_13b

    goto :goto_146

    :cond_13b
    cmpl-float v4, v8, v17

    if-ltz v4, :cond_145

    cmpg-float v4, v5, v8

    if-gez v4, :cond_145

    move v4, v8

    goto :goto_146

    :cond_145
    move v4, v5

    :goto_146
    sub-float v5, v12, v4

    const v8, 0x3a83126f  # 0.001f

    cmpl-float v5, v5, v8

    const/high16 v14, 0x3f000000  # 0.5f

    if-lez v5, :cond_178

    if-eqz v10, :cond_15b

    iget v5, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    cmpl-float v5, v5, v15

    if-eqz v5, :cond_15b

    goto/16 :goto_1ec

    :cond_15b
    if-eqz v13, :cond_169

    iget v0, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mCoverLauncherMinAspectRatio:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_169

    iget-boolean v0, v7, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    if-eqz v0, :cond_169

    goto/16 :goto_1ec

    :cond_169
    if-ge v6, v11, :cond_172

    int-to-float v0, v6

    mul-float/2addr v0, v4

    :goto_16d
    add-float/2addr v0, v14

    float-to-int v0, v0

    move v4, v0

    move v0, v6

    goto :goto_1b2

    :cond_172
    int-to-float v0, v11

    mul-float/2addr v0, v4

    :goto_174
    add-float/2addr v0, v14

    float-to-int v0, v0

    :goto_176
    move v4, v11

    goto :goto_1b2

    :cond_178
    sub-float v5, v4, v12

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1b0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v5

    if-eq v5, v9, :cond_195

    const/4 v8, 0x2

    if-eq v5, v8, :cond_192

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v5, v8, :cond_192

    goto :goto_195

    :cond_192
    move/from16 v5, v16

    goto :goto_196

    :cond_195
    :goto_195
    move v5, v9

    :goto_196
    if-eqz v13, :cond_1a9

    iget v0, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mCoverLauncherMinAspectRatio:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_1a9

    iget-boolean v0, v7, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    if-eqz v0, :cond_1a9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    :goto_1a7
    div-float/2addr v0, v4

    goto :goto_174

    :cond_1a9
    if-eqz v5, :cond_1ad

    int-to-float v0, v11

    goto :goto_1a7

    :cond_1ad
    int-to-float v0, v6

    div-float/2addr v0, v4

    goto :goto_16d

    :cond_1b0
    move v0, v6

    goto :goto_176

    :goto_1b2
    if-gt v6, v0, :cond_1b7

    if-gt v11, v4, :cond_1b7

    goto :goto_1ec

    :cond_1b7
    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v6, :cond_1c2

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    :cond_1c2
    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v1, :cond_1cd

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    :cond_1cd
    move-object/from16 v1, p1

    invoke-virtual {v1, v5, v6, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1eb

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mCompatSandboxPolicy:Lcom/android/server/wm/CompatSandboxPolicy;

    if-nez v0, :cond_1e3

    new-instance v0, Lcom/android/server/wm/CompatSandboxPolicy;

    invoke-direct {v0, v3}, Lcom/android/server/wm/CompatSandboxPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mCompatSandboxPolicy:Lcom/android/server/wm/CompatSandboxPolicy;

    :cond_1e3
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mCompatSandboxPolicy:Lcom/android/server/wm/CompatSandboxPolicy;

    iget v1, v0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    or-int/lit8 v1, v1, 0xc

    iput v1, v0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    :cond_1eb
    return v9

    :cond_1ec
    :goto_1ec
    return v16
.end method

.method public final getMaxAspectRatio()F
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v1, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p0, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    iget p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    return p0

    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    return v0

    :cond_24
    :goto_24
    return v1
.end method

.method public final getMinAspectRatio()F
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v1, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p0, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    iget p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    return p0

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1c

    goto/16 :goto_89

    :cond_1c
    iget-object v2, v2, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v2, :cond_89

    invoke-virtual {v2, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-eqz v4, :cond_89

    invoke-virtual {v2, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    if-eq v2, v3, :cond_89

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v2, v2, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object v4, v2, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v5, 0x13680faa

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v4

    iget-object v2, v2, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v2

    if-nez v2, :cond_89

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_4a

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    goto :goto_4b

    :cond_4a
    const/4 p0, 0x0

    :goto_4b
    const/high16 v2, 0x3f800000  # 1.0f

    if-nez p0, :cond_50

    goto :goto_80

    :cond_50
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz p0, :cond_7b

    invoke-virtual {p0, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {p0, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    if-eq p0, v3, :cond_7b

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object v3, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3, v5, v6}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v3

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    if-nez p0, :cond_7b

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    goto :goto_7c

    :cond_7b
    move p0, v2

    :goto_7c
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_80
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_89
    :goto_89
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    move-result p0

    return p0

    :cond_98
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v4, 0xa5faf64

    invoke-static {v2, v4, v5}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v2

    if-nez v2, :cond_c1

    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_c1

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_c0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v0

    if-eqz v0, :cond_bf

    goto :goto_c0

    :cond_bf
    return p0

    :cond_c0
    :goto_c0
    return v1

    :cond_c1
    const-wide/32 v4, 0xc2368d6

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-nez v2, :cond_d9

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_d9
    const-wide/32 v4, 0xd0d1070

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_ff

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_ff

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, v3, :cond_ff

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_ff
    const-wide/32 v2, 0xc6fb886

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_115
    const-wide/32 v2, 0xabf9183

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_12a

    const p0, 0x3fe38e39

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_12a
    const-wide/32 v2, 0xabf91bd

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_13e

    const/high16 p0, 0x3fc00000  # 1.5f

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_13e
    const-wide/32 v2, 0x14ce0124

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_153

    const p0, 0x3faaaaab

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_153
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public final isLetterboxedForFixedOrientationAndAspectRatio()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserOrSystemMinAspectRatioApplied()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    iget p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mUserOrSystemMinAspectRatio:F

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
