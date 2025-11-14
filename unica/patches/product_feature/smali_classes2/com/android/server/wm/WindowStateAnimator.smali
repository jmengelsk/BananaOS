.class public final Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAlpha:F

.field public mAnimationIsEntrance:Z

.field public final mAttrType:I

.field public final mContext:Landroid/content/Context;

.field public mDrawState:I

.field public mEnterAnimationPending:Z

.field public mEnteringAnimation:Z

.field public mLastAlpha:F

.field public mLastHidden:Z

.field public mPopOverAlpha:F

.field public mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSession:Lcom/android/server/wm/Session;

.field public mShownAlpha:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSurfaceShown:Z

.field public final mSystemDecorRect:Landroid/graphics/Rect;

.field public mTitle:Ljava/lang/String;

.field public final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field public final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    return-void
.end method


# virtual methods
.method public final applyAnimationLocked(IZ)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v4, v2, :cond_14

    return v5

    :cond_14
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-ne v4, v6, :cond_2f

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    if-eqz v2, :cond_2f

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_2f
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    const/4 v6, 0x0

    if-eqz v4, :cond_35

    return v6

    :cond_35
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_1ad

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v8, 0x2

    aget-boolean v9, v7, v8

    const/4 v10, 0x4

    if-eqz v9, :cond_65

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    int-to-long v11, v1

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v11, -0x67141f488b6fcf64L

    invoke-static {v13, v11, v12, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_65
    iget-object v9, v4, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v9, v9, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eqz v9, :cond_b4

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v14, v14, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v15, v14, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v3, v15, :cond_9c

    iget-object v14, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v15, 0x10000000

    and-int/2addr v14, v15

    if-eqz v14, :cond_84

    move v14, v5

    goto :goto_85

    :cond_84
    move v14, v6

    :goto_85
    invoke-virtual {v13}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v15

    if-eqz v15, :cond_91

    iget-object v9, v9, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-nez v9, :cond_91

    move v9, v5

    goto :goto_92

    :cond_91
    move v9, v6

    :goto_92
    if-nez v14, :cond_b2

    if-eqz v9, :cond_b4

    iget v9, v13, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch v9, :pswitch_data_1b8

    goto :goto_b4

    :cond_9c
    iget-object v14, v14, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v3, v14, :cond_b4

    if-eqz v13, :cond_b4

    iget v14, v13, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch v14, :pswitch_data_1c2

    goto :goto_b4

    :pswitch_a8  #0xf, 0x10, 0x11
    iget-boolean v13, v13, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v13, :cond_b0

    iget-boolean v14, v9, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    if-nez v14, :cond_b4

    :cond_b0
    iput-boolean v13, v9, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    :cond_b2
    :goto_b2
    :pswitch_b2  #0xf, 0x10, 0x11
    move v4, v12

    goto :goto_fc

    :cond_b4
    :goto_b4
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v9, :cond_cd

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v4, v9

    if-eqz v4, :cond_cd

    const-string/jumbo v4, "SPEG"

    const-string/jumbo v9, "skip animation-leash of window_animation"

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :cond_cd
    const/4 v4, 0x5

    if-ne v1, v4, :cond_fb

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_fb

    iget-boolean v9, v4, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v9, :cond_de

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    move-result v4

    if-eqz v4, :cond_fb

    :cond_de
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_b2

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mSkipExitAnimation:Z

    if-eqz v4, :cond_e9

    goto :goto_b2

    :cond_e9
    aget-boolean v4, v7, v8

    if-eqz v4, :cond_f7

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v13, -0x57024d80d683c60dL

    invoke-static {v4, v13, v14, v6, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_f7
    const v4, 0x10a0013

    goto :goto_fc

    :cond_fb
    move v4, v6

    :goto_fc
    const-wide/16 v13, 0x20

    if-eqz v4, :cond_112

    if-eq v4, v12, :cond_14e

    const-string/jumbo v8, "WSA#loadAnimation"

    invoke-static {v13, v14, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_14e

    :cond_112
    if-nez v2, :cond_131

    iget-boolean v9, v3, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v9, :cond_131

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    invoke-direct {v11, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x10e0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_14e

    :cond_131
    if-eq v1, v5, :cond_140

    if-eq v1, v8, :cond_13e

    const/4 v9, 0x3

    if-eq v1, v9, :cond_141

    if-eq v1, v10, :cond_13c

    move v8, v12

    goto :goto_141

    :cond_13c
    move v8, v9

    goto :goto_141

    :cond_13e
    move v8, v5

    goto :goto_141

    :cond_140
    move v8, v6

    :cond_141
    :goto_141
    if-ltz v8, :cond_14d

    iget-object v9, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9, v10, v8, v6}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v11

    :cond_14d
    move v12, v8

    :cond_14e
    :goto_14e
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v9, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v10

    invoke-interface {v10, v8, v9}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v9

    if-eqz v9, :cond_19a

    aget-boolean v5, v7, v5

    if-eqz v5, :cond_19a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    int-to-long v4, v4

    int-to-long v9, v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    int-to-long v6, v1

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    int-to-long v12, v1

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    filled-new-array/range {v15 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x4eab9a1deef8cebdL  # -4.617939188492293E-71

    const/16 v6, 0x3514

    invoke-static {v8, v4, v5, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_19a
    if-eqz v11, :cond_1b0

    const-string/jumbo v1, "WSA#startAnimation"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    goto :goto_1b0

    :cond_1ad
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_1b0
    :goto_1b0
    const/16 v0, 0x10

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    return v0

    :pswitch_data_1b8
    .packed-switch 0xf
        :pswitch_b2  #0000000f
        :pswitch_b2  #00000010
        :pswitch_b2  #00000011
    .end packed-switch

    :pswitch_data_1c2
    .packed-switch 0xf
        :pswitch_a8  #0000000f
        :pswitch_a8  #00000010
        :pswitch_a8  #00000011
    .end packed-switch
.end method

.method public final applyEnterAnimationLocked()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x3

    :goto_b
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-eq v2, v1, :cond_22

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v2, :cond_22

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    :cond_22
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_31
    return-void
.end method

.method public final commitFinishDrawingLocked()Z
    .registers 7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_a

    goto :goto_47

    :cond_a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x307249a35002c596L  # -1.6799098100033753E75

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_24
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_48

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v0, v0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3a

    goto :goto_3e

    :cond_3a
    move v3, v1

    goto :goto_3e

    :cond_3c
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    :goto_3e
    if-nez v3, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_47

    goto :goto_48

    :cond_47
    :goto_47
    return v1

    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result p0

    return p0
.end method

.method public final createSurfaceLocked()Landroid/view/SurfaceControl;
    .registers 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "makeSurface duration="

    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_f

    return-object v4

    :cond_f
    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v7, 0x2

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_2d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x547dcbf2e9edc413L  # -4.161234117687017E-99

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v9, v10, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2d
    const/4 v6, 0x1

    iput v6, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_35

    goto :goto_3f

    :cond_35
    invoke-virtual {v8, v6}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v8

    if-nez v8, :cond_3f

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v5, v8, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    :cond_3f
    :goto_3f
    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x4

    :try_start_42
    iget-object v10, v1, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    if-nez v10, :cond_50

    const-class v10, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    iput-object v10, v1, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    :cond_50
    iget-object v10, v1, Lcom/android/server/wm/WindowStateAnimator;->mRemoteInjection:Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    if-eqz v10, :cond_94

    iget-object v11, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7d0

    if-eq v11, v12, :cond_94

    const/16 v12, 0x7de

    if-eq v11, v12, :cond_94

    const/16 v12, 0x7e1

    if-eq v11, v12, :cond_94

    const/16 v12, 0x7e8

    if-eq v11, v12, :cond_94

    const/16 v12, 0x82f

    if-eq v11, v12, :cond_94

    const/16 v12, 0x8b2

    if-eq v11, v12, :cond_94

    const/16 v12, 0xa3d

    if-eq v11, v12, :cond_94

    const/16 v12, 0x7e3

    if-eq v11, v12, :cond_94

    const/16 v12, 0x7e4

    if-eq v11, v12, :cond_94

    packed-switch v11, :pswitch_data_1e8

    iget v11, v4, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;->isRemoteControlDisabled(I)Z

    move-result v10
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_89} :catch_8f

    if-eqz v10, :cond_94

    const v9, 0xf00004

    goto :goto_94

    :catch_8f
    const-string v10, "Exception occurred while checking for isRemoteControlDisabled"

    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    :pswitch_94  #0x961, 0x962, 0x963
    iget-object v10, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v11, 0x100000

    and-int/2addr v10, v11

    if-eqz v10, :cond_9f

    or-int/lit8 v9, v9, 0x40

    :cond_9f
    :try_start_9f
    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_a1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_9f .. :try_end_a1} :catch_db
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a1} :catch_d7

    const/high16 v12, 0x1000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_a8

    const/4 v11, -0x3

    goto :goto_aa

    :cond_a8
    :try_start_a8
    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_aa
    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/wm/WindowStateAnimator;->mTitle:Ljava/lang/String;
    :try_end_b4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a8 .. :try_end_b4} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b4} :catch_d7

    :try_start_b4
    iget-object v14, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I
    :try_end_b8
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_b4 .. :try_end_b8} :catch_1c6
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b8} :catch_d7

    :try_start_b8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15
    :try_end_bc
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_b8 .. :try_end_bc} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bc} :catch_d7

    if-eq v14, v15, :cond_df

    :try_start_be
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "$_"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_d6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_be .. :try_end_d6} :catch_db
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d6} :catch_d7

    goto :goto_df

    :catch_d7
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_1cb

    :catch_db
    move v15, v5

    const/4 v3, 0x0

    goto/16 :goto_1d4

    :cond_df
    :goto_df
    :try_start_df
    const-string/jumbo v14, "new SurfaceControl"
    :try_end_e2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_df .. :try_end_e2} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_d7

    const-wide/16 v5, 0x20

    :try_start_e4
    invoke-static {v5, v6, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v14

    move-wide/from16 v18, v5

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v7, v6}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/wm/Session;->mUid:I

    const/4 v11, 0x1

    invoke-virtual {v5, v11, v6}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/wm/Session;->mPid:I

    const/4 v11, 0x6

    invoke-virtual {v5, v11, v6}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    const-string/jumbo v6, "WindowSurfaceController"

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20
    :try_end_131
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e4 .. :try_end_131} :catch_1c6
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_131} :catch_d7

    const/4 v3, 0x0

    sub-long v10, v20, v16

    :try_start_134
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v5, v12

    if-eqz v5, :cond_150

    const/4 v5, 0x1

    goto :goto_151

    :cond_150
    const/4 v5, 0x0

    :goto_151
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowStateAnimator;->setColorSpaceAgnosticLocked(Z)V

    iget-object v5, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v10, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->surfaceType:I

    const/16 v11, 0x1e

    invoke-virtual {v6, v5, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0xa29

    if-ne v10, v11, :cond_16b

    const/4 v10, 0x1

    goto :goto_16c

    :cond_16b
    const/4 v10, 0x0

    :goto_16c
    const/16 v11, 0x1f

    invoke-virtual {v6, v5, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_17a

    const/4 v5, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v5, 0x0

    :goto_17b
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowStateAnimator;->setInternalPresentationOnly(Z)V

    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v15, 0x0

    iput v15, v4, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    iput-boolean v11, v4, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1bb

    iget-object v4, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    int-to-long v5, v0

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    int-to-long v7, v0

    int-to-long v9, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, -0x20da38cd55eccd31L  # -2.2277588461945743E150

    const/16 v6, 0x54

    invoke-static {v11, v4, v5, v6, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_1bb
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_134 .. :try_end_1bb} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_1bb} :catch_1bd

    :cond_1bb
    const/4 v11, 0x1

    goto :goto_1c1

    :catch_1bd
    move-exception v0

    goto :goto_1cb

    :catch_1bf
    :goto_1bf
    const/4 v15, 0x0

    goto :goto_1d4

    :goto_1c1
    iput-boolean v11, v1, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0

    :catch_1c6
    const/4 v3, 0x0

    goto :goto_1bf

    :catch_1c8
    const/4 v3, 0x0

    move v15, v5

    goto :goto_1d4

    :goto_1cb
    const-string v4, "Exception creating surface (parent dead?)"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v15, 0x0

    iput v15, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-object v3

    :goto_1d4
    const-string/jumbo v0, "OutOfResourcesException creating surface"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string/jumbo v2, "create"

    const/4 v11, 0x1

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    iput v15, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-object v3

    :pswitch_data_1e8
    .packed-switch 0x961
        :pswitch_94  #00000961
        :pswitch_94  #00000962
        :pswitch_94  #00000963
    .end packed-switch
.end method

.method public final destroySurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x18b40d4da5cc5d8L

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v6, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v3, :cond_58

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v3, :cond_58

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected removing wallpaper surface of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowStateAnimator;->setShown(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-void
.end method

.method public final destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    goto/16 :goto_86

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    :try_start_b
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v6, -0x3e56477d6157c702L  # -2.1576123132855982E8

    invoke-static {v5, v6, v7, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_35

    :catch_33
    move-exception p1

    goto :goto_52

    :cond_35
    :goto_35
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_3e} :catch_33

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    if-eqz p1, :cond_4e

    :try_start_42
    iget-object p1, v2, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_47

    goto :goto_48

    :cond_47
    move v1, v3

    :goto_48
    if-eqz v1, :cond_86

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    return-void

    :cond_4e
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_51} :catch_33

    return-void

    :goto_52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception thrown when destroying Window "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return-void
.end method

.method public final drawStateToString()Ljava/lang/String;
    .registers 2

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "HAS_DRAWN"

    return-object p0

    :cond_18
    const-string/jumbo p0, "READY_TO_SHOW"

    return-object p0

    :cond_1c
    const-string p0, "COMMIT_DRAW_PENDING"

    return-object p0

    :cond_1f
    const-string p0, "DRAW_PENDING"

    return-object p0

    :cond_22
    const-string/jumbo p0, "NO_SURFACE"

    return-object p0
.end method

.method public final getShown()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final hasSurface()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_5

    goto :goto_5b

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-nez v0, :cond_11

    goto :goto_5b

    :cond_11
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x2bb9bea24498c536L  # -9.507422043465715E97

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, v3, v4, v1, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2d
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setShown(Z)V

    iget-object p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz p1, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x80e9

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 16

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_193

    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_16

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_21

    goto/16 :goto_d9

    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_30

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_30

    move v5, v2

    goto :goto_31

    :cond_30
    move v5, v3

    :goto_31
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    if-eqz v5, :cond_3e

    const v5, 0x3ecccccd  # 0.4f

    div-float/2addr v6, v5

    const/high16 v5, 0x43b00000  # 352.0f

    mul-float/2addr v6, v5

    float-to-int v5, v6

    goto :goto_3f

    :cond_3e
    move v5, v3

    :goto_3f
    iget v6, v0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    if-ne v6, v5, :cond_45

    goto/16 :goto_d9

    :cond_45
    iget-wide v6, v1, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_4e

    goto :goto_50

    :cond_4e
    const-wide/16 v6, 0xc8

    :goto_50
    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v1

    sget-object v8, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceEffects$Effect$Builder;->setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v1

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_65

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v8, v10, :cond_68

    :cond_65
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->makeFullscreen()Landroid/view/SurfaceEffects$Effect$Builder;

    :cond_68
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-eqz v8, :cond_7e

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7db

    if-ne v8, v9, :cond_7e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_7e

    move v8, v2

    goto :goto_7f

    :cond_7e
    move v8, v3

    :goto_7f
    const-string/jumbo v9, "WindowManager"

    if-lez v5, :cond_a5

    sget-object v10, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v10

    sget-object v11, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    int-to-float v12, v12

    sget-object v13, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v10, v11, v3, v12, v13}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v10

    long-to-int v6, v6

    int-to-float v7, v5

    sget-object v12, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v10, v11, v6, v7, v12}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    if-eqz v8, :cond_c5

    const-string/jumbo v6, "applyBlurEffectInTransaction: Set ONCE_STAY_END blurRadius="

    invoke-static {v5, v6, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :cond_a5
    sget-object v10, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v10

    sget-object v11, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    int-to-float v12, v12

    sget-object v13, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v10, v11, v3, v12, v13}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v10

    long-to-int v6, v6

    int-to-float v7, v5

    sget-object v12, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v10, v11, v6, v7, v12}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    if-eqz v8, :cond_c5

    const-string/jumbo v6, "applyBlurEffectInTransaction: Set ONCE_DESTROY blurRadius="

    invoke-static {v5, v6, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_c5
    :goto_c5
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect;->getBytes()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v6, :cond_d4

    goto :goto_d7

    :cond_d4
    invoke-virtual {p1, v6, v1}, Landroid/view/SurfaceControl$Transaction;->startSurfaceAnimation(Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl$Transaction;

    :goto_d7
    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastBlurRadius:I

    :goto_d9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-nez v1, :cond_f7

    const-string/jumbo v1, "prepareSurfaceLocked"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    iget-boolean p1, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz p1, :cond_f1

    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-nez p1, :cond_193

    :cond_f1
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_f7
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_103

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v1, :cond_193

    :cond_103
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    aget-boolean v5, v1, v4

    if-eqz v5, :cond_13a

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v6, v6

    iget v8, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    float-to-double v8, v8

    iget v10, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    float-to-double v10, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8, v12}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x467ec3e16774cb86L  # -1.0621791365512905E-31

    const/16 v8, 0xa8

    invoke-static {v13, v6, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_13a
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_193

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v5, :cond_193

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v5, :cond_14f

    goto :goto_191

    :cond_14f
    aget-boolean v1, v1, v4

    if-eqz v1, :cond_167

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v5, 0x17e7c0d9caf63013L

    invoke-static {v4, v5, v6, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_167
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowStateAnimator;->setShown(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-boolean p1, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz p1, :cond_191

    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x80e9

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_191
    :goto_191
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    :cond_193
    :goto_193
    return-void
.end method

.method public final setColorSpaceAgnosticLocked(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x645bf57f39a3ca59L

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final setInternalPresentationOnly(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x24ec36d01c35c651L  # -5.485972922964946E130

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public final setOpaqueLocked(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x33fc50be57ec9acL  # -8.098265369414331E292

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public final setShown(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, p1, :cond_14

    goto :goto_80

    :cond_14
    iput-boolean p1, v1, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz p1, :cond_23

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aput-wide v5, v2, v4

    aput-wide v5, v2, v3

    goto :goto_30

    :cond_23
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceByTarget(Lcom/android/server/wm/WindowContainer;)V

    :goto_30
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-lt v2, v5, :cond_80

    const/16 v5, 0x7d5

    if-eq v2, v5, :cond_80

    const/16 v5, 0x7ee

    if-eq v2, v5, :cond_80

    const/16 v5, 0x7f5

    if-ne v2, v5, :cond_52

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_52

    goto :goto_80

    :cond_52
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    monitor-enter v2

    :try_start_5f
    iget-object v6, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-static {v5, p1, v6}, Lcom/android/server/wm/MirrorActiveUids;->updateCount(IZLandroid/util/SparseIntArray;)V

    iget-object v6, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    if-nez v6, :cond_78

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v7, v2, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_78
    invoke-static {v5, p1, v6}, Lcom/android/server/wm/MirrorActiveUids;->updateCount(IZLandroid/util/SparseIntArray;)V
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_7d

    monitor-exit v2

    goto :goto_80

    :catchall_7d
    move-exception p0

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p0

    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eq p0, v0, :cond_bc

    const/16 v0, 0xcd

    if-eqz p0, :cond_a3

    iget v2, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    if-nez v2, :cond_9d

    iget-object v2, p1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_9d
    iget v0, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    goto :goto_bf

    :cond_a3
    iget v2, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    if-lez v2, :cond_aa

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    :cond_aa
    iget v2, p1, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    if-nez v2, :cond_bf

    iget-object v2, p1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_bf

    :cond_bc
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_bf
    :goto_bf
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v2

    if-nez v2, :cond_cf

    const/16 v2, 0x7d8

    if-eq v0, v2, :cond_cf

    goto/16 :goto_167

    :cond_cf
    iget-boolean v2, p1, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v2, :cond_d9

    iget-boolean v2, p1, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    if-nez v2, :cond_d9

    move v2, v3

    goto :goto_da

    :cond_d9
    move v2, v4

    :goto_da
    const/16 v5, 0x7f6

    if-eqz p0, :cond_f8

    iget-object p0, p1, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-ne v0, v5, :cond_ee

    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    iget-object v5, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v5, p0, v0, v4}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_111

    :cond_ee
    if-eqz v2, :cond_111

    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v4, p0, v0, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_111

    :cond_f8
    iget-object p0, p1, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-ne v0, v5, :cond_108

    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    iget-object v5, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v5, p0, v0, v4}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    goto :goto_111

    :cond_108
    if-eqz v2, :cond_111

    iget v1, p1, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v4, p0, v0, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    :cond_111
    :goto_111
    if-eqz p0, :cond_155

    if-eqz v2, :cond_155

    iget-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_132

    iget-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_122

    goto :goto_155

    :cond_122
    iget-object v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AlertWindowNotification;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    goto :goto_155

    :cond_132
    iget-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_155

    invoke-virtual {p1}, Lcom/android/server/wm/Session;->isSatellitePointingUiPackage()Z

    move-result v0

    if-nez v0, :cond_155

    new-instance v0, Lcom/android/server/wm/AlertWindowNotification;

    iget-object v1, p1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    iget-boolean v2, p1, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    if-eqz v2, :cond_155

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AlertWindowNotification;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_155
    :goto_155
    if-eqz p0, :cond_167

    iget p0, p1, Lcom/android/server/wm/Session;->mPid:I

    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    if-eq p0, v0, :cond_167

    iget-object p0, p1, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    :cond_167
    :goto_167
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
