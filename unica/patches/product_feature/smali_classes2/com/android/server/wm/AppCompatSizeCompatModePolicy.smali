.class public final Lcom/android/server/wm/AppCompatSizeCompatModePolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public mInSizeCompatModeForBounds:Z

.field public mPreCreatedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mReturnSizeCompatBounds:Landroid/graphics/Rect;

.field public mSizeCompatBounds:Landroid/graphics/Rect;

.field public mSizeCompatScale:F

.field public mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    iput-object p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    return-void
.end method


# virtual methods
.method public final clearOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    return-object p0
.end method

.method public final clearSizeCompatMode(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object p2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object p0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p2}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final clearSizeCompatModeAttributes()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    iget v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v2, v3, v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    iget-object p0, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    iput-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-void
.end method

.method public final hasSizeCompatBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldCreateAppCompatDisplayInsets()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v1}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    return v3

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->supportsSizeChanges()I

    move-result p0

    if-eq p0, v3, :cond_13

    const/4 v1, 0x2

    if-eq p0, v1, :cond_12

    const/4 v4, 0x3

    if-eq p0, v4, :cond_12

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    const/4 v5, 0x0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_2
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_3
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_4
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {p0}, Lcom/android/server/wm/DesktopCompatPolicy;->isFullscreenBySystemModal(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {p0}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->supportsAppCompatOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    move-object p0, v5

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_8
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz p0, :cond_9

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldCreateAppCompatDisplayInsetsForRotationCompat(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v3

    goto :goto_1

    :cond_9
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz p0, :cond_a

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isUserOrSystemMinAspectRatioApplied()Z

    move-result p0

    if-eqz p0, :cond_a

    move p0, v4

    goto :goto_1

    :cond_a
    move p0, v2

    :goto_1
    if-eq p0, v3, :cond_c

    if-eq p0, v1, :cond_b

    if-eq p0, v4, :cond_b

    goto :goto_0

    :cond_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_c
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    :cond_f
    if-eqz v5, :cond_10

    if-eq v5, v0, :cond_10

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_3

    :cond_10
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result p0

    cmpl-float p0, p0, v4

    if-eqz p0, :cond_12

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_4

    :cond_12
    :goto_3
    return v2

    :cond_13
    :goto_4
    return v3
.end method

.method public final supportsSizeChanges()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    iget-object v1, v0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0xacbec0b

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v0, 0xa5faf38

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final updateAppCompatDisplayInsets()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mPreCreatedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v3, v2, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {v3}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    iget-object v2, v2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mPreCreatedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    :goto_1
    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    iput v4, v2, Landroid/content/res/Configuration;->colorMode:I

    iget v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v4}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    iput v4, v2, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, v3, Landroid/content/res/Configuration;->navigation:I

    iput v4, v2, Landroid/content/res/Configuration;->navigation:I

    iget v4, v3, Landroid/content/res/Configuration;->keyboard:I

    iput v4, v2, Landroid/content/res/Configuration;->keyboard:I

    iget v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v4, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v4, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iput v4, v2, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_3
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v4, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_4
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v2}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    if-nez v3, :cond_7

    new-instance v3, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    invoke-direct {v3, v1}, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v3, v2, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    if-nez v4, :cond_5

    iput-object v0, v3, Lcom/android/server/wm/AppCompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    goto :goto_2

    :cond_5
    iget-object v0, v3, Lcom/android/server/wm/AppCompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v3, Lcom/android/server/wm/AppCompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    :cond_6
    iget-object v0, v3, Lcom/android/server/wm/AppCompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_7
    :goto_2
    iget-object v0, v2, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    :cond_8
    if-eqz v0, :cond_9

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-void

    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    iget-object v2, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    :goto_3
    new-instance v0, Lcom/android/server/wm/AppCompatDisplayInsets;

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-nez v4, :cond_c

    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v4, 0x1

    :goto_5
    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AppCompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    :cond_d
    :goto_6
    return-void
.end method

.method public final updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v0, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    return-void
.end method
