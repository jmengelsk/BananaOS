.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda26(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda34(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput p0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda37(Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v3

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x7848fa1e0b63cdfbL

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mObscured:Z

    const/4 v10, 0x3

    if-nez v3, :cond_32

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v5

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_0

    :cond_3
    move v5, v7

    :goto_0
    if-nez v5, :cond_4

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v6, v4, :cond_5

    :cond_4
    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->left:I

    if-gtz v11, :cond_6

    iget v11, v6, Landroid/graphics/Rect;->top:I

    if-gtz v11, :cond_6

    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v11, v12, :cond_6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v6, v5, :cond_6

    iput-object v2, v0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v8, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    :cond_6
    :goto_1
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    aget-boolean v13, v12, v7

    if-eqz v13, :cond_7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v15

    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move/from16 v16, v5

    iget-wide v4, v10, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v13, v14, v9, v15, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v13, -0x6ad75c6e4209c9faL    # -9.593013447397445E-207

    const/16 v5, 0x1fc

    invoke-static {v10, v13, v14, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    move/from16 v16, v5

    :goto_2
    if-nez v11, :cond_9

    :cond_8
    move v4, v7

    :goto_3
    const/high16 v9, 0x10000

    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_9
    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotTopDisplay(I)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8

    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_a
    move v4, v8

    goto :goto_3

    :cond_b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_d

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v13, v9, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v9, v13, v10

    if-ltz v9, :cond_d

    iget-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mDeXUserActivityTimeout:J

    cmp-long v9, v13, v10

    if-gez v9, :cond_d

    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v9, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v13, v9, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mDeXUserActivityTimeout:J

    :cond_c
    const/high16 v9, 0x10000

    const/4 v15, 0x0

    goto :goto_4

    :cond_d
    if-nez v16, :cond_c

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v13, v9, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v9, v13, v10

    if-ltz v9, :cond_c

    const/high16 v9, 0x10000

    const/4 v15, 0x0

    iget-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_e

    iput-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    aget-boolean v4, v12, v7

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v13, 0x77a4fb15be5c3accL    # 2.1648519881517276E268

    invoke-static {v4, v13, v14, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_e
    :goto_4
    if-nez v16, :cond_f

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v4, v4, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v13, v4, v10

    if-ltz v13, :cond_f

    iget-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    cmp-long v10, v13, v10

    if-gez v10, :cond_f

    iput-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    :cond_f
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v16, :cond_10

    iget-wide v10, v4, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v13, 0x146a

    cmp-long v5, v10, v13

    if-nez v5, :cond_10

    const-wide/16 v10, -0x1

    iput-wide v10, v4, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v10, v4, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_10
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_11

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    move v4, v7

    goto/16 :goto_b

    :cond_12
    :goto_5
    if-nez v16, :cond_14

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v5, v4, v15

    if-ltz v5, :cond_14

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_14

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    invoke-direct {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;-><init>()V

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->brightness:F

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->tag:Ljava/lang/CharSequence;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->screenBrightnessOverridePackage:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-virtual {v5, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    :goto_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_17

    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_17

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_15

    goto :goto_7

    :cond_15
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v4, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_7
    iput-boolean v8, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    :cond_16
    :goto_8
    move v4, v8

    goto :goto_a

    :cond_17
    if-eqz v4, :cond_19

    iget-boolean v5, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v5, :cond_16

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_18

    goto :goto_9

    :cond_18
    if-eqz v6, :cond_19

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d9

    if-ne v4, v5, :cond_19

    :goto_9
    goto :goto_8

    :cond_19
    move v4, v7

    :goto_a
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_1a

    iput-boolean v8, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    :cond_1a
    :goto_b
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1b

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v5, v1, :cond_1b

    goto :goto_c

    :cond_1b
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v5, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    :cond_1c
    :goto_c
    iget-boolean v1, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_32

    if-eqz v3, :cond_32

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1d

    iput-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v9

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ignore FLAG_KEEP_SCREEN_ON for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "SPEG"

    invoke-static {v1, v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_d

    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v1, :cond_1e

    aget-boolean v1, v12, v7

    if-eqz v1, :cond_1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x57353cd059d832daL    # 1.2768588890467934E112

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1e
    :goto_d
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d8

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x7da

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x7f8

    if-ne v1, v3, :cond_20

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v8, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    cmpl-float v3, v3, v15

    if-nez v3, :cond_21

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v4, v3, v15

    if-eqz v4, :cond_21

    iput v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    :cond_21
    iget-boolean v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v5, v4, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    or-int/2addr v3, v5

    iput-boolean v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    iget-boolean v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isHdrConversionEnabled()Z

    move-result v4

    xor-int/2addr v4, v8

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->disableHdrConversion:Z

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_22

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v4, :cond_22

    if-eqz v1, :cond_22

    iput v1, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v2, v1, v4, v7}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    :cond_22
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v3

    if-nez v3, :cond_27

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mInsetsAnimationRunning:Z

    if-eqz v3, :cond_23

    goto :goto_e

    :cond_23
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v3, :cond_24

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v3, v3, v15

    if-nez v3, :cond_24

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    move-result v3

    cmpl-float v4, v3, v15

    if-lez v4, :cond_24

    goto :goto_f

    :cond_24
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v5, v4, v15

    if-lez v5, :cond_25

    move v3, v4

    goto :goto_f

    :cond_25
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v1, :cond_27

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    if-eqz v3, :cond_26

    invoke-static {v2}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_27

    :cond_26
    iget v3, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    goto :goto_f

    :cond_27
    :goto_e
    move v3, v15

    :goto_f
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    cmpl-float v4, v4, v15

    if-nez v4, :cond_28

    cmpl-float v4, v3, v15

    if-eqz v4, :cond_28

    iput v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3, v8}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    :cond_28
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v3

    if-nez v3, :cond_29

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mInsetsAnimationRunning:Z

    if-eqz v3, :cond_2a

    :cond_29
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance(I)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_10

    :cond_2a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v3, :cond_2b

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    move-result v3

    cmpl-float v4, v3, v15

    if-lez v4, :cond_2b

    goto/16 :goto_11

    :cond_2b
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v5, v4, v15

    if-lez v5, :cond_2c

    move v3, v4

    goto/16 :goto_11

    :cond_2c
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    iget-object v4, v4, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v4, :cond_2e

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    if-eqz v5, :cond_2d

    invoke-static {v2}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_2d
    iget v3, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    goto :goto_11

    :cond_2e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    iget-object v5, v1, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_30

    iget-object v4, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iput-boolean v8, v1, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    :cond_2f
    :goto_10
    move v3, v15

    goto :goto_11

    :cond_30
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    if-eqz v4, :cond_31

    iget-object v4, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_31

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    goto :goto_11

    :cond_31
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    if-eqz v4, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    :goto_11
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    cmpl-float v4, v4, v15

    if-nez v4, :cond_32

    cmpl-float v4, v3, v15

    if-eqz v4, :cond_32

    iput v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    :cond_32
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v1

    const-string/jumbo v9, "WindowManager"

    if-nez v1, :cond_33

    goto/16 :goto_13

    :cond_33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Force report resize for pop-over w="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v8, v1, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    :cond_34
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v1, :cond_35

    goto :goto_12

    :cond_35
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_36

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x57501fc39eb53344L    # 3.877691942187174E112

    invoke-static {v3, v4, v5, v7, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_36
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v5, v4, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    invoke-virtual {v2, v10, v11, v3}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    new-instance v12, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v4, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    move v6, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v23, v4

    move v4, v1

    move-object/from16 v1, v23

    move/from16 v23, v6

    move v6, v3

    move/from16 v3, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIII)V

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v12, v1, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    const/16 v4, 0x10

    invoke-virtual {v2, v1, v12, v3, v4}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    :cond_37
    :goto_12
    invoke-static {v2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_13

    :cond_38
    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid([I)V

    :cond_39
    :try_start_0
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v10, v11}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    :goto_13
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v7, v1, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    iput-boolean v8, v2, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v3, :cond_3a

    goto/16 :goto_15

    :cond_3a
    iget-wide v3, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3c

    iput-wide v5, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iput v7, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_3b

    move v3, v8

    goto :goto_14

    :cond_3b
    move v3, v7

    :goto_14
    iput v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    :cond_3c
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v4, :cond_40

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v4

    if-eqz v4, :cond_40

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v4}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v5

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_3d

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Eval win "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": isDrawn="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isAnimationSet="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v5

    if-nez v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Not displayed: s="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " pv="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " mDrawState="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ph="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " th="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eq v2, v3, :cond_40

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_40

    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v3, :cond_40

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eq v3, v2, :cond_3e

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    :cond_3e
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {v4}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tokenMayBeDrawn: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " numInteresting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-static {v3, v4, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3f
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_40
    :goto_15
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_41

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v3, v4, :cond_41

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_41
    if-nez v0, :cond_42

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    if-eqz v3, :cond_56

    :cond_42
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-boolean v5, v4, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    iget-boolean v6, v4, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    iget-boolean v5, v4, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    invoke-virtual {v4}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    iget-boolean v4, v4, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    if-nez v4, :cond_44

    if-eqz v5, :cond_43

    goto :goto_16

    :cond_43
    move v4, v7

    goto :goto_17

    :cond_44
    :goto_16
    move v4, v8

    :goto_17
    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-nez v5, :cond_45

    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    if-nez v5, :cond_45

    move v5, v8

    goto :goto_18

    :cond_45
    move v5, v7

    :goto_18
    iget-boolean v6, v2, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    if-nez v6, :cond_46

    iget-boolean v6, v2, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v10

    if-eq v6, v10, :cond_46

    move v6, v8

    goto :goto_19

    :cond_46
    move v6, v7

    :goto_19
    iget-boolean v10, v2, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v10, :cond_47

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    move v10, v8

    goto :goto_1a

    :cond_47
    move v10, v7

    :goto_1a
    if-nez v4, :cond_49

    if-nez v5, :cond_49

    if-nez v6, :cond_49

    if-eqz v10, :cond_48

    goto :goto_1b

    :cond_48
    move v10, v7

    goto :goto_1c

    :cond_49
    :goto_1b
    move v10, v8

    :goto_1c
    if-nez v10, :cond_4a

    iget-boolean v11, v2, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-nez v11, :cond_4a

    iget v11, v2, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-gtz v11, :cond_4a

    iget-object v11, v2, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4a

    iput-boolean v8, v2, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    :cond_4a
    if-nez v10, :cond_4b

    if-nez v0, :cond_4b

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v10

    if-eqz v10, :cond_56

    :cond_4b
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    aget-boolean v11, v10, v8

    if-eqz v11, :cond_4c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    iget-object v11, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "forceReportingResized="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v13, v11, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " insetsChanged="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v13, -0x4f84b1b83b33c791L    # -3.7730774575619675E-75

    const/16 v11, 0xff0

    invoke-static {v12, v13, v14, v11, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->consumeInsetsChange()V

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v7, v0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    if-nez v5, :cond_4d

    if-eqz v6, :cond_54

    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_54

    iput v8, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4e

    iput-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_54

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_54

    iput-boolean v7, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    goto/16 :goto_1d

    :cond_4e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_WAIT_TO_HANDLE_RESIZING_FROM_CLIENT:Z

    if-eqz v3, :cond_54

    if-eqz v4, :cond_54

    if-nez v0, :cond_54

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-nez v0, :cond_54

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v0

    if-eqz v0, :cond_4f

    goto :goto_1d

    :cond_4f
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_50

    goto :goto_1d

    :cond_50
    iget v0, v2, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_51

    goto :goto_1d

    :cond_51
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_1d

    :cond_52
    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-nez v0, :cond_54

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    if-eqz v0, :cond_53

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateResizingWindowIfNeeded, Start waiting to handle resizing w="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v2, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    new-instance v0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;I)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    :cond_54
    :goto_1d
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    aget-boolean v0, v10, v8

    if-eqz v0, :cond_55

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x77db5563b0d2c405L

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v7, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_55
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    if-nez v1, :cond_57

    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_58

    :cond_57
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->updateLetterboxDirectionIfNeeded()V

    :cond_58
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda38(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/DeviceStateController$DeviceState;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation$FoldController;->foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceState;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_5

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    :cond_5
    :goto_1
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda48(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController;->mOrganizersByFeatureIds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda38(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda34(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda26(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda48(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v3, v2, :cond_0

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    if-eqz v3, :cond_3

    iget-object v2, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v3, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    :goto_0
    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_4
    return-void

    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda37(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x1

    iget-object v8, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v9, 0x7e3

    if-ne v5, v9, :cond_6

    iget-object v5, v8, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v5, v5, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v10, v8, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v10, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v11

    invoke-virtual {v5, v10, v11, v7}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v2, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v5

    const/4 v10, 0x3

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_a

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v5

    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v11, :cond_9

    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v11, :cond_8

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    move v11, v7

    :goto_3
    if-eqz v5, :cond_c

    if-nez v11, :cond_c

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->canAffectSystemUiFlags()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v11, :cond_c

    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v11, :cond_c

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v10, :cond_b

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v5, v5, Lcom/android/server/wm/SnapshotStartingData;

    if-nez v5, :cond_c

    :cond_b
    :goto_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFreeformDisallowedToControlSysUi()Z

    move-result v5

    if-nez v5, :cond_c

    move v5, v7

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v5, 0x0

    :goto_6
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v12, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    const/16 v13, 0x6e

    if-ne v12, v13, :cond_d

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x200000

    and-int/2addr v12, v13

    if-eqz v12, :cond_d

    iget-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_d

    const-wide/16 v12, 0x146a

    iput-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v14, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_d
    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-nez v12, :cond_f

    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v12, v12, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v12, v12, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v12, :cond_f

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x10000

    and-int/2addr v12, v13

    if-eqz v12, :cond_f

    iput-object v1, v11, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {}, Lcom/android/server/policy/SystemKeyManager;->getInstance()Lcom/android/server/policy/SystemKeyManager;

    move-result-object v12

    if-nez v12, :cond_e

    goto :goto_7

    :cond_e
    iput-object v1, v12, Lcom/android/server/policy/SystemKeyManager;->mFakeFocusedWindowState:Lcom/android/server/wm/WindowState;

    :cond_f
    :goto_7
    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    const/4 v13, 0x2

    if-eqz v12, :cond_16

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v14

    iget v15, v14, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_9
    iget-boolean v14, v14, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v14, :cond_16

    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v14, :cond_12

    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v14

    iget-boolean v15, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v15, :cond_11

    iget-boolean v15, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v15, :cond_10

    goto :goto_8

    :cond_10
    const/4 v15, 0x0

    goto :goto_9

    :cond_11
    :goto_8
    move v15, v7

    :goto_9
    if-eqz v14, :cond_16

    if-nez v15, :cond_16

    goto :goto_a

    :cond_12
    iget-object v14, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v14, v15, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    iget-object v15, v14, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v15, v14}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v14

    if-nez v14, :cond_16

    :goto_a
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-nez v14, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v15

    if-eqz v15, :cond_16

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v15, :cond_15

    iget-object v15, v15, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-ne v14, v7, :cond_13

    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    if-ne v14, v13, :cond_14

    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    if-eqz v14, :cond_15

    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    if-nez v14, :cond_15

    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    if-eqz v15, :cond_15

    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_b
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_16

    iput-object v1, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    :cond_16
    :goto_c
    iget-object v14, v11, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    if-eqz v15, :cond_17

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0xa2c

    if-ne v15, v9, :cond_17

    move v9, v7

    goto :goto_d

    :cond_17
    const/4 v9, 0x0

    :goto_d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v16

    if-eqz v16, :cond_18

    goto :goto_e

    :cond_18
    if-eqz v9, :cond_2c

    :goto_e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_2c

    iget-boolean v7, v13, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_2c

    iget-object v7, v14, Lcom/android/server/wm/FreeformController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v6

    move-object/from16 v18, v0

    if-eqz v6, :cond_19

    iget v0, v6, Lcom/android/server/wm/Transition;->mType:I

    move-object/from16 v19, v4

    const/16 v4, 0x455

    if-ne v0, v4, :cond_1a

    goto/16 :goto_15

    :cond_19
    move-object/from16 v19, v4

    :cond_1a
    iget-object v0, v14, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v9, :cond_1b

    iget-object v4, v13, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v13}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_f

    :cond_1b
    if-eqz v10, :cond_1c

    iget-boolean v4, v10, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    if-eqz v4, :cond_1c

    if-nez v6, :cond_21

    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    goto :goto_f

    :cond_1c
    if-eqz v9, :cond_1d

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1d

    goto :goto_f

    :cond_1d
    iget-boolean v4, v14, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    if-eqz v4, :cond_1f

    if-eqz v10, :cond_1f

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_15

    :cond_1e
    if-eqz v6, :cond_1f

    iget v4, v6, Lcom/android/server/wm/Transition;->mType:I

    const/4 v13, 0x1

    if-ne v4, v13, :cond_1f

    iget-object v4, v6, Lcom/android/server/wm/Transition;->mTriggerTask:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget v6, v10, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v4, v6, :cond_1f

    goto/16 :goto_15

    :cond_1f
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_20

    if-eqz v10, :cond_20

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto/16 :goto_15

    :cond_20
    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_2d

    if-eq v4, v1, :cond_2d

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_21

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v4, v6, :cond_2d

    :cond_21
    :goto_f
    if-eqz v9, :cond_22

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_22
    if-eqz v15, :cond_2a

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0xa48

    if-ne v4, v6, :cond_24

    :cond_23
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_24

    goto/16 :goto_13

    :cond_24
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_27

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_27

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v7, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_25

    iget-object v4, v4, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction;->isActivateDeskType()Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_10

    :cond_25
    iget-object v4, v7, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_26
    if-ge v7, v6, :cond_27

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lcom/android/server/wm/Transition;

    iget-object v9, v9, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v9, v9, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    if-eqz v9, :cond_26

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction;->isActivateDeskType()Z

    move-result v9

    if-eqz v9, :cond_26

    :goto_10
    goto :goto_13

    :cond_27
    iget-object v4, v15, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2a

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-object v6, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;)V

    iget-object v0, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v14, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    if-nez v0, :cond_29

    iget-boolean v0, v15, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    const/4 v13, 0x1

    goto :goto_11

    :cond_28
    const/4 v13, 0x1

    invoke-virtual {v14, v13, v15}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    goto :goto_12

    :cond_29
    const/4 v13, 0x1

    const/4 v0, 0x3

    :goto_11
    invoke-virtual {v14, v0, v15}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    :goto_12
    invoke-virtual {v15, v13}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "applyForceHidePolicyIfNeededLocked: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "FreeformController"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2a
    :goto_13
    const/4 v4, 0x0

    :cond_2b
    :goto_14
    const/4 v0, 0x1

    goto/16 :goto_23

    :cond_2c
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    :cond_2d
    :goto_15
    const/4 v4, 0x0

    invoke-virtual {v14, v1}, Lcom/android/server/wm/FreeformController;->releaseForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    if-eqz v12, :cond_44

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_2e

    goto/16 :goto_21

    :cond_2e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v6

    const/16 v7, 0x833

    const/16 v9, 0xa47

    const/16 v10, 0xa46

    if-eqz v6, :cond_30

    const/4 v13, 0x1

    if-eq v6, v13, :cond_43

    const/4 v13, 0x2

    if-eq v6, v13, :cond_2f

    const/16 v13, 0xa

    if-eq v6, v13, :cond_43

    goto :goto_16

    :cond_2f
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    if-eqz v6, :cond_31

    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    if-nez v6, :cond_31

    goto/16 :goto_21

    :cond_30
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d0

    if-eq v6, v13, :cond_43

    const/16 v13, 0x7d5

    if-eq v6, v13, :cond_43

    const/16 v13, 0x7dd

    if-eq v6, v13, :cond_43

    const/16 v13, 0x7f8

    if-eq v6, v13, :cond_43

    const/16 v13, 0x96b

    if-eq v6, v13, :cond_43

    const/16 v13, 0x7e3

    if-eq v6, v13, :cond_43

    const/16 v13, 0x7e4

    if-eq v6, v13, :cond_43

    if-eq v6, v10, :cond_32

    if-eq v6, v9, :cond_32

    :cond_31
    :goto_16
    iget-object v6, v12, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v6

    invoke-static {v7}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v13

    if-gt v6, v13, :cond_43

    :cond_32
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v10, :cond_35

    iget-object v0, v12, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_33
    const/4 v0, 0x0

    const/4 v13, 0x1

    goto :goto_17

    :cond_34
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->show(Z)Z

    goto/16 :goto_21

    :goto_17
    invoke-virtual {v1, v0, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto/16 :goto_21

    :cond_35
    if-eq v6, v7, :cond_37

    if-ne v6, v9, :cond_36

    goto :goto_18

    :cond_36
    const/4 v6, 0x0

    goto :goto_19

    :cond_37
    :goto_18
    const/4 v6, 0x1

    :goto_19
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v7

    const/high16 v9, 0x80000

    if-eqz v7, :cond_3b

    if-eqz v6, :cond_39

    :cond_38
    const/4 v6, 0x0

    goto :goto_1b

    :cond_39
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_3a

    const/4 v6, 0x1

    goto :goto_1a

    :cond_3a
    const/4 v6, 0x0

    :goto_1a
    iget-object v7, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eq v1, v7, :cond_38

    if-nez v6, :cond_38

    const/4 v6, 0x1

    :cond_3b
    :goto_1b
    const/high16 v7, 0x100000

    if-eqz v6, :cond_3f

    const/4 v6, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    move-result v10

    if-eqz v10, :cond_3e

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v6, v0, v7

    if-nez v6, :cond_3d

    and-int/2addr v0, v9

    if-eqz v0, :cond_3c

    goto :goto_1c

    :cond_3c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_3d
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    if-eqz v0, :cond_3e

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    :cond_3e
    const/4 v0, 0x1

    goto :goto_22

    :cond_3f
    invoke-virtual {v12}, Lcom/android/server/wm/CoverPolicy;->shouldApplyAodPolicy()Z

    move-result v6

    if-eqz v6, :cond_40

    iget-object v6, v12, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    goto :goto_1e

    :cond_40
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v6

    :goto_1e
    if-nez v6, :cond_43

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    move-result v10

    if-eqz v10, :cond_43

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v6, v0, v7

    if-nez v6, :cond_42

    and-int/2addr v0, v9

    if-eqz v0, :cond_41

    goto :goto_1f

    :cond_41
    const/4 v0, 0x0

    goto :goto_20

    :cond_42
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-eqz v0, :cond_43

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    :cond_43
    :goto_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_44

    goto/16 :goto_14

    :cond_44
    const/4 v0, 0x0

    :goto_23
    if-nez v0, :cond_52

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    iget-object v6, v2, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_50

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v0

    if-nez v0, :cond_45

    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_46

    :cond_45
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_46
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result v0

    if-eqz v0, :cond_47

    :goto_24
    const/4 v0, 0x1

    :goto_25
    const/4 v13, 0x1

    goto/16 :goto_29

    :cond_47
    :goto_26
    const/4 v0, 0x0

    goto :goto_25

    :cond_48
    if-eqz v18, :cond_49

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_49

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_26

    :cond_49
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_4a

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->shouldShowImeForExternalDesktop()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_4a

    if-nez v18, :cond_4a

    goto :goto_26

    :cond_4a
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_24

    :cond_4b
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v6, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4d

    :cond_4c
    const/16 v17, 0x1

    :goto_27
    const/4 v13, 0x1

    goto :goto_28

    :cond_4d
    const/16 v17, 0x0

    goto :goto_27

    :goto_28
    xor-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    :goto_29
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v6, :cond_4e

    iget-object v6, v8, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v6}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setFrozen(Z)V

    :cond_4e
    if-eqz v0, :cond_4f

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_2a

    :cond_4f
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    goto :goto_2a

    :cond_50
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v6, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v6}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    if-eqz v0, :cond_51

    const/4 v6, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_2a

    :cond_51
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    :cond_52
    :goto_2a
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v0, :cond_54

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_54

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v0

    if-nez v0, :cond_54

    :cond_53
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    :cond_54
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    if-nez v0, :cond_55

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_55

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    :cond_55
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    goto :goto_2b

    :cond_56
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_5d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_2c
    if-ltz v7, :cond_5d

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v9, v9, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v9}, Landroid/view/InsetsSource;->getType()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v12

    or-int/2addr v11, v12

    and-int/2addr v10, v11

    if-nez v10, :cond_57

    goto :goto_2d

    :cond_57
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_58

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_58

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_58

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_58

    goto :goto_2d

    :cond_58
    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_59

    iget v10, v9, Landroid/graphics/Insets;->left:I

    if-lez v10, :cond_59

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    :cond_59
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_5a

    iget v10, v9, Landroid/graphics/Insets;->top:I

    if-lez v10, :cond_5a

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    :cond_5a
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_5b

    iget v10, v9, Landroid/graphics/Insets;->right:I

    if-lez v10, :cond_5b

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    :cond_5b
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_5c

    iget v9, v9, Landroid/graphics/Insets;->bottom:I

    if-lez v9, :cond_5c

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    :cond_5c
    :goto_2d
    add-int/lit8 v7, v7, -0x1

    goto :goto_2c

    :cond_5d
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    if-eqz v0, :cond_5e

    iget v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    or-int/2addr v0, v6

    iput v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    :cond_5e
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    iget-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    if-eq v0, v6, :cond_62

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v6, :cond_60

    :cond_5f
    const/4 v6, 0x0

    goto :goto_2f

    :cond_60
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v6

    goto :goto_2e

    :cond_61
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v6

    :goto_2e
    if-eqz v6, :cond_5f

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez v6, :cond_5f

    const/4 v6, 0x1

    :goto_2f
    if-eqz v6, :cond_62

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    :cond_62
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x2000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_63

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    goto :goto_30

    :cond_63
    const/4 v13, 0x1

    :goto_30
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_64

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    :cond_64
    if-nez v5, :cond_65

    goto/16 :goto_41

    :cond_65
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v13, :cond_66

    const/16 v13, 0x7d0

    if-ge v0, v13, :cond_66

    const/4 v0, 0x1

    goto :goto_31

    :cond_66
    const/4 v0, 0x0

    :goto_31
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_6b

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_67

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_67

    const/4 v6, 0x1

    goto :goto_32

    :cond_67
    const/4 v6, 0x0

    :goto_32
    if-eqz v6, :cond_6a

    iget-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v6, :cond_69

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6a

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_68

    const/4 v6, 0x1

    goto :goto_33

    :cond_68
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_6a

    :cond_69
    const/4 v13, 0x1

    goto :goto_34

    :cond_6a
    const/4 v13, 0x1

    goto :goto_35

    :goto_34
    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    move v0, v13

    :goto_35
    if-eqz v0, :cond_6b

    if-nez v19, :cond_6b

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_6b

    and-int/2addr v5, v13

    if-eqz v5, :cond_6b

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    :cond_6b
    if-eqz v0, :cond_6c

    if-nez v19, :cond_6c

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v5

    if-nez v5, :cond_6d

    :cond_6c
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7ef

    if-ne v5, v6, :cond_7a

    :cond_6d
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6e

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_6e

    const/4 v0, 0x1

    goto :goto_36

    :cond_6e
    const/4 v0, 0x0

    :goto_36
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_70

    if-nez v0, :cond_70

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_6f

    const/4 v0, 0x1

    goto :goto_37

    :cond_6f
    const/4 v0, 0x0

    :goto_37
    if-nez v0, :cond_70

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :cond_70
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_73

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v6, 0x0

    goto :goto_38

    :cond_71
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    :goto_38
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_73

    if-eqz v6, :cond_73

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x8

    iget-boolean v5, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    if-eqz v5, :cond_72

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    :cond_72
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/view/AppearanceRegion;

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v6, v0, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_73

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_73
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_74

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_74

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_75

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    :cond_75
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_86

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object v1, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_79

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v3

    if-eqz v3, :cond_76

    goto :goto_3a

    :cond_76
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_77

    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_39

    :cond_77
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    :goto_39
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_3a

    :cond_78
    new-instance v13, Lcom/android/internal/statusbar/LetterboxDetails;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-direct {v13, v3, v5, v0}, Lcom/android/internal/statusbar/LetterboxDetails;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_3b

    :cond_79
    :goto_3a
    move-object v13, v4

    :goto_3b
    if-eqz v13, :cond_86

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    :cond_7a
    const/4 v13, 0x1

    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    if-eqz v3, :cond_83

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_7b

    move v3, v13

    goto :goto_3c

    :cond_7b
    const/4 v3, 0x0

    :goto_3c
    if-nez v3, :cond_83

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_82

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v3

    if-ge v3, v0, :cond_82

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x8

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_7c

    :goto_3d
    const/4 v6, 0x0

    goto/16 :goto_40

    :cond_7c
    iget-object v7, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_7d

    goto :goto_3d

    :cond_7d
    if-eqz v0, :cond_81

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_7e

    goto :goto_3f

    :cond_7e
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/view/AppearanceRegion;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v8, v0, v9}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v0, v3, :cond_80

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->left:I

    if-eq v0, v3, :cond_7f

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    invoke-direct {v3, v10, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-eq v0, v3, :cond_80

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v7, v8, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    invoke-direct {v3, v10, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_3e
    move v6, v13

    goto :goto_40

    :cond_81
    :goto_3f
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v10, 0x0

    invoke-direct {v3, v10, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_3e

    :goto_40
    if-eqz v6, :cond_82

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_82

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_82
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_86

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_86

    iget-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_83
    if-eqz v0, :cond_86

    if-nez v19, :cond_86

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_84

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_86

    :cond_84
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_85

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_85

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_85
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_86

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    :cond_86
    :goto_41
    return-void

    :pswitch_a
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/AccessibilityController;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v3, 0x400

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_87
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_88

    goto :goto_42

    :cond_88
    const/4 v0, 0x0

    :goto_42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_89

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    :cond_89
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    if-eqz v0, :cond_8a

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_45

    :catchall_0
    move-exception v0

    goto :goto_46

    :cond_8a
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_8b

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_45

    :cond_8b
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_43
    if-ltz v2, :cond_8d

    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-boolean v6, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    if-nez v6, :cond_8c

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    add-int/lit8 v2, v2, -0x1

    goto :goto_43

    :cond_8d
    iput-boolean v4, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    move v3, v4

    :goto_44
    if-ltz v2, :cond_8e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    iget-boolean v5, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    and-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_44

    :cond_8e
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_4
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    and-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_45
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_46
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
