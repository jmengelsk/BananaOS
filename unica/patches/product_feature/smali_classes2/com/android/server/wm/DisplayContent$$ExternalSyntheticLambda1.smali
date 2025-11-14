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
    .registers 3

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda26(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda34(Ljava/lang/Object;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v0, :cond_c

    goto :goto_1f

    :cond_c
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_20

    :cond_16
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    :goto_20
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    :cond_29
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
    .registers 26

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

    if-eqz v3, :cond_46

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v3

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_46

    if-eqz v3, :cond_46

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v3

    if-eqz v3, :cond_46

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_3e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x7848fa1e0b63cdfbL

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3e
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_46
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mObscured:Z

    const/4 v10, 0x3

    if-nez v3, :cond_45b

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_ae

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v5

    if-nez v5, :cond_63

    goto :goto_ae

    :cond_63
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v5

    if-eqz v5, :cond_6d

    move v5, v8

    goto :goto_6e

    :cond_6d
    move v5, v7

    :goto_6e
    if-nez v5, :cond_76

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v6, v4, :cond_80

    :cond_76
    if-eqz v5, :cond_ae

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_ae

    :cond_80
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v5

    if-nez v5, :cond_ae

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->left:I

    if-gtz v11, :cond_ae

    iget v11, v6, Landroid/graphics/Rect;->top:I

    if-gtz v11, :cond_ae

    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v11, v12, :cond_ae

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v6, v5, :cond_ae

    iput-object v2, v0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v8, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    :cond_ae
    :goto_ae
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    aget-boolean v13, v12, v7

    if-eqz v13, :cond_f2

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

    const-wide v13, -0x6ad75c6e4209c9faL  # -9.593013447397445E-207

    const/16 v5, 0x1fc

    invoke-static {v10, v13, v14, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_f4

    :cond_f2
    move/from16 v16, v5

    :goto_f4
    if-nez v11, :cond_fc

    :cond_f6
    move v4, v7

    :goto_f7
    const/high16 v9, 0x10000

    const/4 v15, 0x0

    goto/16 :goto_246

    :cond_fc
    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotTopDisplay(I)Z

    move-result v9

    if-eqz v9, :cond_122

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-nez v1, :cond_120

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_f6

    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v6, :cond_f6

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_f6

    :cond_120
    move v4, v8

    goto :goto_f7

    :cond_122
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_14e

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v13, v9, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v9, v13, v10

    if-ltz v9, :cond_14e

    iget-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mDeXUserActivityTimeout:J

    cmp-long v9, v13, v10

    if-gez v9, :cond_14e

    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v9, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v9

    if-eqz v9, :cond_14a

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v13, v9, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mDeXUserActivityTimeout:J

    :cond_14a
    const/high16 v9, 0x10000

    const/4 v15, 0x0

    goto :goto_179

    :cond_14e
    if-nez v16, :cond_14a

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v13, v9, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v9, v13, v10

    if-ltz v9, :cond_14a

    const/high16 v9, 0x10000

    const/4 v15, 0x0

    iget-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_179

    iput-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    aget-boolean v4, v12, v7

    if-eqz v4, :cond_179

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v13, 0x77a4fb15be5c3accL  # 2.1648519881517276E268

    invoke-static {v4, v13, v14, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_179
    :goto_179
    if-nez v16, :cond_18b

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v4, v4, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    cmp-long v13, v4, v10

    if-ltz v13, :cond_18b

    iget-wide v13, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    cmp-long v10, v13, v10

    if-gez v10, :cond_18b

    iput-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenDimDuration:J

    :cond_18b
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v16, :cond_19d

    iget-wide v10, v4, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v13, 0x146a

    cmp-long v5, v10, v13

    if-nez v5, :cond_19d

    const-wide/16 v10, -0x1

    iput-wide v10, v4, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v10, v4, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_19d
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_1b5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1b2

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v5, :cond_1b2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_1b2

    goto :goto_1b5

    :cond_1b2
    move v4, v7

    goto/16 :goto_246

    :cond_1b5
    :goto_1b5
    if-nez v16, :cond_1fc

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v5, v4, v15

    if-ltz v5, :cond_1fc

    const/high16 v5, 0x3f800000  # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1fc

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mDisplayBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_1fc

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1dc

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_1dc

    goto :goto_1fc

    :cond_1dc
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

    :cond_1fc
    :goto_1fc
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_222

    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_222

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_212

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_212

    goto :goto_21e

    :cond_212
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v4, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_220

    :goto_21e
    iput-boolean v8, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    :cond_220
    :goto_220
    move v4, v8

    goto :goto_23d

    :cond_222
    if-eqz v4, :cond_23c

    iget-boolean v5, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v5, :cond_220

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_231

    goto :goto_23b

    :cond_231
    if-eqz v6, :cond_23c

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d9

    if-ne v4, v5, :cond_23c

    :goto_23b
    goto :goto_220

    :cond_23c
    move v4, v7

    :goto_23d
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_246

    iput-boolean v8, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    :cond_246
    :goto_246
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    if-nez v1, :cond_262

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_25b

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v5, v1, :cond_25b

    goto :goto_262

    :cond_25b
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v5, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    :cond_262
    :goto_262
    iget-boolean v1, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_45b

    if-eqz v3, :cond_45b

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_29a

    iput-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_2be

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v9

    if-eqz v1, :cond_2be

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

    goto :goto_2be

    :cond_29a
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v1, :cond_2be

    aget-boolean v1, v12, v7

    if-eqz v1, :cond_2be

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x57353cd059d832daL  # 1.2768588890467934E112

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2be
    :goto_2be
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d8

    if-eq v1, v3, :cond_2da

    const/16 v3, 0x7da

    if-eq v1, v3, :cond_2da

    const/16 v3, 0x7f8

    if-ne v1, v3, :cond_2de

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_2de

    :cond_2da
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v8, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    :cond_2de
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    cmpl-float v3, v3, v15

    if-nez v3, :cond_2f0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v4, v3, v15

    if-eqz v4, :cond_2f0

    iput v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    :cond_2f0
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

    if-eq v3, v4, :cond_329

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v4, :cond_329

    if-eqz v1, :cond_329

    iput v1, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v3, :cond_329

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    const/high16 v4, -0x40800000  # -1.0f

    invoke-virtual {v3, v2, v1, v4, v7}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    :cond_329
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v3

    if-nez v3, :cond_375

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mInsetsAnimationRunning:Z

    if-eqz v3, :cond_33b

    goto :goto_375

    :cond_33b
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v3, :cond_350

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v3, v3, v15

    if-nez v3, :cond_350

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    move-result v3

    cmpl-float v4, v3, v15

    if-lez v4, :cond_350

    goto :goto_376

    :cond_350
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v5, v4, v15

    if-lez v5, :cond_35a

    move v3, v4

    goto :goto_376

    :cond_35a
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v1, :cond_375

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    if-eqz v3, :cond_372

    invoke-static {v2}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_375

    :cond_372
    iget v3, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    goto :goto_376

    :cond_375
    :goto_375
    move v3, v15

    :goto_376
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    cmpl-float v4, v4, v15

    if-nez v4, :cond_390

    cmpl-float v4, v3, v15

    if-eqz v4, :cond_390

    iput v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v1, :cond_390

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3, v8}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    :cond_390
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v3

    if-nez v3, :cond_3a1

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mInsetsAnimationRunning:Z

    if-eqz v3, :cond_3bb

    :cond_3a1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v3, :cond_403

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance(I)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v3

    if-eqz v3, :cond_403

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v4

    if-nez v4, :cond_3bb

    goto :goto_403

    :cond_3bb
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v3, :cond_3c9

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    move-result v3

    cmpl-float v4, v3, v15

    if-lez v4, :cond_3c9

    goto/16 :goto_440

    :cond_3c9
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v5, v4, v15

    if-lez v5, :cond_3d4

    move v3, v4

    goto/16 :goto_440

    :cond_3d4
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    iget-object v4, v4, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v4, :cond_3ef

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_VRR_IGNORE_RESTRICTED_RANGE:Z

    if-eqz v5, :cond_3ec

    invoke-static {v2}, Lcom/android/server/wm/RefreshRatePolicy;->shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-nez v5, :cond_3ef

    :cond_3ec
    iget v3, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    goto :goto_440

    :cond_3ef
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    iget-object v5, v1, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_405

    iget-object v4, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_405

    iput-boolean v8, v1, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    :cond_403
    :goto_403
    move v3, v15

    goto :goto_440

    :cond_405
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    if-eqz v4, :cond_424

    iget-object v4, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_424

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_424

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    goto :goto_440

    :cond_424
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    if-eqz v4, :cond_403

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_403

    iget-object v4, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_403

    iget-object v1, v1, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    :goto_440
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v4, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    cmpl-float v4, v4, v15

    if-nez v4, :cond_45b

    cmpl-float v4, v3, v15

    if-eqz v4, :cond_45b

    iput v3, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v1, :cond_45b

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/wm/RefreshRatePolicy;->updateLog(Lcom/android/server/wm/WindowState;IFI)V

    :cond_45b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v1

    const-string/jumbo v9, "WindowManager"

    if-nez v1, :cond_466

    goto/16 :goto_525

    :cond_466
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v1

    if-eqz v1, :cond_487

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    if-eqz v1, :cond_487

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Force report resize for pop-over w="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v8, v1, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    :cond_487
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    move-result v1

    if-eqz v1, :cond_4f8

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v1, :cond_49a

    goto :goto_4f8

    :cond_49a
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_4b2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x57501fc39eb53344L  # 3.877691942187174E112

    invoke-static {v3, v4, v5, v7, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4b2
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

    :cond_4f8
    :goto_4f8
    invoke-static {v2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_4ff

    goto :goto_525

    :cond_4ff
    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_51e

    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid([I)V

    :cond_51e
    :try_start_51e
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v10, v11}, Landroid/view/IWindow;->moved(II)V
    :try_end_523
    .catch Landroid/os/RemoteException; {:try_start_51e .. :try_end_523} :catch_523

    :catch_523
    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    :goto_525
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v7, v1, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_63a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_63a

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    iput-boolean v8, v2, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v3, :cond_53e

    goto/16 :goto_63a

    :cond_53e
    iget-wide v3, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_558

    iput-wide v5, v1, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iput v7, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_555

    move v3, v8

    goto :goto_556

    :cond_555
    move v3, v7

    :goto_556
    iput v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    :cond_558
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v4, :cond_63a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v4

    if-eqz v4, :cond_63a

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v4}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v5

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_5e8

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

    if-nez v5, :cond_5e8

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

    :cond_5e8
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eq v2, v3, :cond_63a

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_63a

    iget v3, v2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v3, :cond_63a

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eq v3, v2, :cond_5ff

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    :cond_5ff
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v3

    if-eqz v3, :cond_63a

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    add-int/2addr v3, v8

    iput v3, v1, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {v4}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v3

    if-eqz v3, :cond_62d

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

    :cond_62d
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63a

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_63a
    :goto_63a
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_652

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v3, v4, :cond_652

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v3

    if-eqz v3, :cond_660

    :cond_652
    if-nez v0, :cond_660

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v3

    if-eqz v3, :cond_7e8

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    if-eqz v3, :cond_7e8

    :cond_660
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

    if-nez v4, :cond_67d

    if-eqz v5, :cond_67b

    goto :goto_67d

    :cond_67b
    move v4, v7

    goto :goto_67e

    :cond_67d
    :goto_67d
    move v4, v8

    :goto_67e
    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-nez v5, :cond_688

    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    if-nez v5, :cond_688

    move v5, v8

    goto :goto_689

    :cond_688
    move v5, v7

    :goto_689
    iget-boolean v6, v2, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    if-nez v6, :cond_697

    iget-boolean v6, v2, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v10

    if-eq v6, v10, :cond_697

    move v6, v8

    goto :goto_698

    :cond_697
    move v6, v7

    :goto_698
    iget-boolean v10, v2, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v10, :cond_6ae

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6ae

    move v10, v8

    goto :goto_6af

    :cond_6ae
    move v10, v7

    :goto_6af
    if-nez v4, :cond_6ba

    if-nez v5, :cond_6ba

    if-nez v6, :cond_6ba

    if-eqz v10, :cond_6b8

    goto :goto_6ba

    :cond_6b8
    move v10, v7

    goto :goto_6bb

    :cond_6ba
    :goto_6ba
    move v10, v8

    :goto_6bb
    if-nez v10, :cond_6d1

    iget-boolean v11, v2, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-nez v11, :cond_6d1

    iget v11, v2, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-gtz v11, :cond_6d1

    iget-object v11, v2, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6d1

    iput-boolean v8, v2, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    :cond_6d1
    if-nez v10, :cond_6db

    if-nez v0, :cond_6db

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v10

    if-eqz v10, :cond_7e8

    :cond_6db
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    aget-boolean v11, v10, v8

    if-eqz v11, :cond_72a

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

    const-wide v13, -0x4f84b1b83b33c791L  # -3.7730774575619675E-75

    const/16 v11, 0xff0

    invoke-static {v12, v13, v14, v11, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_72a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->consumeInsetsChange()V

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v7, v0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    if-nez v5, :cond_735

    if-eqz v6, :cond_7c1

    :cond_735
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_7c1

    iput v8, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_752

    iput-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_7c1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_7c1

    iput-boolean v7, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    goto/16 :goto_7c1

    :cond_752
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_WAIT_TO_HANDLE_RESIZING_FROM_CLIENT:Z

    if-eqz v3, :cond_7c1

    if-eqz v4, :cond_7c1

    if-nez v0, :cond_7c1

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-nez v0, :cond_7c1

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v0

    if-eqz v0, :cond_76b

    goto :goto_7c1

    :cond_76b
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_770

    goto :goto_7c1

    :cond_770
    iget v0, v2, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_775

    goto :goto_7c1

    :cond_775
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-eqz v0, :cond_78a

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78a

    goto :goto_7c1

    :cond_78a
    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-nez v0, :cond_7c1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_7c1

    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    if-eqz v0, :cond_7a3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    :cond_7a3
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

    :cond_7c1
    :goto_7c1
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e8

    aget-boolean v0, v10, v8

    if-eqz v0, :cond_7e1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x77db5563b0d2c405L

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v7, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7e1
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e8
    if-nez v1, :cond_7ee

    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_7f1

    :cond_7ee
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->updateLetterboxDirectionIfNeeded()V

    :cond_7f1
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda38(Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/DeviceStateController$DeviceState;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation$FoldController;->foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceState;)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_c

    goto :goto_67

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_67

    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-nez v0, :cond_67

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

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

    :cond_60
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    :cond_67
    :goto_67
    return-void
.end method

.method private final accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda48(Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2a

    :cond_b
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

    if-eqz p0, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    if-eqz p0, :cond_2a

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_9e0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :pswitch_17  #0x9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda38(Ljava/lang/Object;)V

    return-void

    :pswitch_1b  #0x8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda34(Ljava/lang/Object;)V

    return-void

    :pswitch_1f  #0x7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda26(Ljava/lang/Object;)V

    return-void

    :pswitch_23  #0x6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda48(Ljava/lang/Object;)V

    return-void

    :pswitch_27  #0x5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda46(Ljava/lang/Object;)V

    return-void

    :pswitch_2b  #0x4
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

    if-ne v3, v4, :cond_58

    iget v3, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v3, v2, :cond_58

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_58
    return-void

    :pswitch_59  #0x3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8d

    if-eqz v3, :cond_81

    iget-object v2, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_7d

    iget v2, v3, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7b

    goto :goto_7f

    :cond_7b
    const/4 v3, 0x0

    goto :goto_7f

    :cond_7d
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    :goto_7f
    if-eqz v3, :cond_8d

    :cond_81
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v1

    if-eqz v1, :cond_8d

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_8d
    return-void

    :pswitch_8e  #0x2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->accept$com$android$server$wm$DisplayContent$$ExternalSyntheticLambda37(Ljava/lang/Object;)V

    return-void

    :pswitch_92  #0x1
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

    if-ne v5, v9, :cond_c7

    iget-object v5, v8, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v5, v5, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v10, v8, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v10, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v11

    invoke-virtual {v5, v10, v11, v7}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_c4

    move v5, v7

    goto :goto_c5

    :cond_c4
    const/4 v5, 0x0

    :goto_c5
    iput-boolean v5, v2, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    :cond_c7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v5

    const/4 v10, 0x3

    if-eqz v5, :cond_cf

    goto :goto_118

    :cond_cf
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_ea

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v5

    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v11, :cond_e4

    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v11, :cond_e2

    goto :goto_e4

    :cond_e2
    const/4 v11, 0x0

    goto :goto_e5

    :cond_e4
    :goto_e4
    move v11, v7

    :goto_e5
    if-eqz v5, :cond_118

    if-nez v11, :cond_118

    goto :goto_110

    :cond_ea
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    if-eqz v11, :cond_118

    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->canAffectSystemUiFlags()Z

    move-result v11

    if-eqz v11, :cond_118

    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v11, :cond_118

    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v11, :cond_118

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-nez v5, :cond_118

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v10, :cond_110

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v5, v5, Lcom/android/server/wm/SnapshotStartingData;

    if-nez v5, :cond_118

    :cond_110
    :goto_110
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFreeformDisallowedToControlSysUi()Z

    move-result v5

    if-nez v5, :cond_118

    move v5, v7

    goto :goto_119

    :cond_118
    :goto_118
    const/4 v5, 0x0

    :goto_119
    iget-object v11, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v12, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    const/16 v13, 0x6e

    if-ne v12, v13, :cond_13c

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x200000

    and-int/2addr v12, v13

    if-eqz v12, :cond_13c

    iget-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_13c

    const-wide/16 v12, 0x146a

    iput-wide v12, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v14, v3, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_13c
    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-nez v12, :cond_15a

    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v12, v12, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v12, v12, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v12, :cond_15a

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x10000

    and-int/2addr v12, v13

    if-eqz v12, :cond_15a

    iput-object v1, v11, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {}, Lcom/android/server/policy/SystemKeyManager;->getInstance()Lcom/android/server/policy/SystemKeyManager;

    move-result-object v12

    if-nez v12, :cond_158

    goto :goto_15a

    :cond_158
    iput-object v1, v12, Lcom/android/server/policy/SystemKeyManager;->mFakeFocusedWindowState:Lcom/android/server/wm/WindowState;

    :cond_15a
    :goto_15a
    iget-object v12, v11, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    const/4 v13, 0x2

    if-eqz v12, :cond_1de

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v14

    iget v15, v14, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch v15, :pswitch_data_9f8

    goto/16 :goto_1de

    :pswitch_16a  #0xf, 0x10, 0x11
    iget-boolean v14, v14, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v14, :cond_1de

    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v14, :cond_189

    iget-object v14, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v14

    iget-boolean v15, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v15, :cond_183

    iget-boolean v15, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v15, :cond_181

    goto :goto_183

    :cond_181
    const/4 v15, 0x0

    goto :goto_184

    :cond_183
    :goto_183
    move v15, v7

    :goto_184
    if-eqz v14, :cond_1de

    if-nez v15, :cond_1de

    goto :goto_19f

    :cond_189
    iget-object v14, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v14, v15, :cond_1de

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    iget-object v15, v14, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v15, v14}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v14

    if-nez v14, :cond_1de

    :goto_19f
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-nez v14, :cond_1de

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v14

    if-eqz v14, :cond_1de

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v15

    if-eqz v15, :cond_1de

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v15, :cond_1d4

    iget-object v15, v15, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-ne v14, v7, :cond_1bd

    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1d4

    :cond_1bd
    if-ne v14, v13, :cond_1cd

    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    if-eqz v14, :cond_1d4

    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    if-nez v14, :cond_1d4

    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1d4

    :cond_1cd
    if-eqz v15, :cond_1d4

    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1d4
    :goto_1d4
    iget-object v14, v12, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1de

    iput-object v1, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    :cond_1de
    :goto_1de
    iget-object v14, v11, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    if-eqz v15, :cond_1f5

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0xa2c

    if-ne v15, v9, :cond_1f5

    move v9, v7

    goto :goto_1f6

    :cond_1f5
    const/4 v9, 0x0

    :goto_1f6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eqz v15, :cond_203

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v16

    if-eqz v16, :cond_203

    goto :goto_205

    :cond_203
    if-eqz v9, :cond_354

    :goto_205
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_354

    iget-boolean v7, v13, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_354

    iget-object v7, v14, Lcom/android/server/wm/FreeformController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v6

    move-object/from16 v18, v0

    if-eqz v6, :cond_227

    iget v0, v6, Lcom/android/server/wm/Transition;->mType:I

    move-object/from16 v19, v4

    const/16 v4, 0x455

    if-ne v0, v4, :cond_229

    goto/16 :goto_358

    :cond_227
    move-object/from16 v19, v4

    :cond_229
    iget-object v0, v14, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v9, :cond_23c

    iget-object v4, v13, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v13}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    if-eqz v4, :cond_23c

    goto :goto_28e

    :cond_23c
    if-eqz v10, :cond_248

    iget-boolean v4, v10, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    if-eqz v4, :cond_248

    if-nez v6, :cond_28e

    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    goto :goto_28e

    :cond_248
    if-eqz v9, :cond_24f

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_24f

    goto :goto_28e

    :cond_24f
    iget-boolean v4, v14, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    if-eqz v4, :cond_270

    if-eqz v10, :cond_270

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25f

    goto/16 :goto_358

    :cond_25f
    if-eqz v6, :cond_270

    iget v4, v6, Lcom/android/server/wm/Transition;->mType:I

    const/4 v13, 0x1

    if-ne v4, v13, :cond_270

    iget-object v4, v6, Lcom/android/server/wm/Transition;->mTriggerTask:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget v6, v10, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v4, v6, :cond_270

    goto/16 :goto_358

    :cond_270
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_280

    if-eqz v10, :cond_280

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_280

    goto/16 :goto_358

    :cond_280
    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_358

    if-eq v4, v1, :cond_358

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_28e

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v4, v6, :cond_358

    :cond_28e
    :goto_28e
    if-eqz v9, :cond_2a1

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a1

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_2a1
    if-eqz v15, :cond_350

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_2bf

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-nez v4, :cond_2b7

    iget-object v4, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0xa48

    if-ne v4, v6, :cond_2bf

    :cond_2b7
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_2bf

    goto/16 :goto_350

    :cond_2bf
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_304

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_304

    if-eqz v4, :cond_304

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v4

    if-eqz v4, :cond_304

    iget-object v4, v7, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_2e6

    iget-object v4, v4, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v4, v4, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    if-eqz v4, :cond_2e6

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction;->isActivateDeskType()Z

    move-result v4

    if-eqz v4, :cond_2e6

    goto :goto_303

    :cond_2e6
    iget-object v4, v7, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_2ed
    if-ge v7, v6, :cond_304

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lcom/android/server/wm/Transition;

    iget-object v9, v9, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v9, v9, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    if-eqz v9, :cond_2ed

    invoke-virtual {v9}, Landroid/window/WindowContainerTransaction;->isActivateDeskType()Z

    move-result v9

    if-eqz v9, :cond_2ed

    :goto_303
    goto :goto_350

    :cond_304
    iget-object v4, v15, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_350

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_351

    iget-object v6, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_351

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;)V

    iget-object v0, v14, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v14, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    if-nez v0, :cond_333

    iget-boolean v0, v15, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    if-eqz v0, :cond_32e

    const/4 v0, 0x3

    const/4 v13, 0x1

    goto :goto_335

    :cond_32e
    const/4 v13, 0x1

    invoke-virtual {v14, v13, v15}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    goto :goto_338

    :cond_333
    const/4 v13, 0x1

    const/4 v0, 0x3

    :goto_335
    invoke-virtual {v14, v0, v15}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    :goto_338
    invoke-virtual {v15, v13}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "applyForceHidePolicyIfNeededLocked: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "FreeformController"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_351

    :cond_350
    :goto_350
    const/4 v4, 0x0

    :cond_351
    :goto_351
    const/4 v0, 0x1

    goto/16 :goto_46c

    :cond_354
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    :cond_358
    :goto_358
    const/4 v4, 0x0

    invoke-virtual {v14, v1}, Lcom/android/server/wm/FreeformController;->releaseForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    if-eqz v12, :cond_46b

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_368

    goto/16 :goto_466

    :cond_368
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v6

    const/16 v7, 0x833

    const/16 v9, 0xa47

    const/16 v10, 0xa46

    if-eqz v6, :cond_389

    const/4 v13, 0x1

    if-eq v6, v13, :cond_466

    const/4 v13, 0x2

    if-eq v6, v13, :cond_37f

    const/16 v13, 0xa

    if-eq v6, v13, :cond_466

    goto :goto_3ad

    :cond_37f
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    if-eqz v6, :cond_3ad

    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    if-nez v6, :cond_3ad

    goto/16 :goto_466

    :cond_389
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d0

    if-eq v6, v13, :cond_466

    const/16 v13, 0x7d5

    if-eq v6, v13, :cond_466

    const/16 v13, 0x7dd

    if-eq v6, v13, :cond_466

    const/16 v13, 0x7f8

    if-eq v6, v13, :cond_466

    const/16 v13, 0x96b

    if-eq v6, v13, :cond_466

    const/16 v13, 0x7e3

    if-eq v6, v13, :cond_466

    const/16 v13, 0x7e4

    if-eq v6, v13, :cond_466

    if-eq v6, v10, :cond_3bc

    if-eq v6, v9, :cond_3bc

    :cond_3ad
    :goto_3ad
    iget-object v6, v12, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v6

    invoke-static {v7}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v13

    if-gt v6, v13, :cond_466

    :cond_3bc
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v10, :cond_3e7

    iget-object v0, v12, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v0

    if-eqz v0, :cond_3d9

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v0

    if-nez v0, :cond_3dc

    :cond_3d9
    const/4 v0, 0x0

    const/4 v13, 0x1

    goto :goto_3e2

    :cond_3dc
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->show(Z)Z

    goto/16 :goto_466

    :goto_3e2
    invoke-virtual {v1, v0, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto/16 :goto_466

    :cond_3e7
    if-eq v6, v7, :cond_3ee

    if-ne v6, v9, :cond_3ec

    goto :goto_3ee

    :cond_3ec
    const/4 v6, 0x0

    goto :goto_3ef

    :cond_3ee
    :goto_3ee
    const/4 v6, 0x1

    :goto_3ef
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v7

    const/high16 v9, 0x80000

    if-eqz v7, :cond_410

    if-eqz v6, :cond_3ff

    :cond_3fd
    const/4 v6, 0x0

    goto :goto_410

    :cond_3ff
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_408

    const/4 v6, 0x1

    goto :goto_409

    :cond_408
    const/4 v6, 0x0

    :goto_409
    iget-object v7, v12, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eq v1, v7, :cond_3fd

    if-nez v6, :cond_3fd

    const/4 v6, 0x1

    :cond_410
    :goto_410
    const/high16 v7, 0x100000

    if-eqz v6, :cond_435

    const/4 v6, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    move-result v10

    if-eqz v10, :cond_433

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v6, v0, v7

    if-nez v6, :cond_42d

    and-int/2addr v0, v9

    if-eqz v0, :cond_42b

    goto :goto_42d

    :cond_42b
    const/4 v0, 0x0

    goto :goto_42e

    :cond_42d
    :goto_42d
    const/4 v0, 0x1

    :goto_42e
    if-eqz v0, :cond_433

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    :cond_433
    const/4 v0, 0x1

    goto :goto_467

    :cond_435
    invoke-virtual {v12}, Lcom/android/server/wm/CoverPolicy;->shouldApplyAodPolicy()Z

    move-result v6

    if-eqz v6, :cond_442

    iget-object v6, v12, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    goto :goto_446

    :cond_442
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v6

    :goto_446
    if-nez v6, :cond_466

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    move-result v10

    if-eqz v10, :cond_466

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v6, v0, v7

    if-nez v6, :cond_460

    and-int/2addr v0, v9

    if-eqz v0, :cond_45e

    goto :goto_460

    :cond_45e
    const/4 v0, 0x0

    goto :goto_461

    :cond_460
    :goto_460
    const/4 v0, 0x1

    :goto_461
    if-eqz v0, :cond_466

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    :cond_466
    :goto_466
    const/4 v0, 0x0

    :goto_467
    if-eqz v0, :cond_46b

    goto/16 :goto_351

    :cond_46b
    const/4 v0, 0x0

    :goto_46c
    if-nez v0, :cond_53d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    iget-object v6, v2, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_51f

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v0

    if-nez v0, :cond_480

    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_48a

    :cond_480
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_49c

    :cond_48a
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_49a

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result v0

    if-eqz v0, :cond_49a

    :goto_496
    const/4 v0, 0x1

    :goto_497
    const/4 v13, 0x1

    goto/16 :goto_506

    :cond_49a
    :goto_49a
    const/4 v0, 0x0

    goto :goto_497

    :cond_49c
    if-eqz v18, :cond_4b5

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_4b5

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    if-eqz v0, :cond_4b5

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_49a

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-nez v0, :cond_4b5

    goto :goto_49a

    :cond_4b5
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_4d4

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v0

    if-eqz v0, :cond_4d4

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->shouldShowImeForExternalDesktop()Z

    move-result v0

    if-eqz v0, :cond_4d4

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_4d4

    if-nez v18, :cond_4d4

    goto :goto_49a

    :cond_4d4
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4e1

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result v0

    if-eqz v0, :cond_4e1

    goto :goto_496

    :cond_4e1
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v6, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_4ff

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_4fb

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4ff

    :cond_4fb
    const/16 v17, 0x1

    :goto_4fd
    const/4 v13, 0x1

    goto :goto_502

    :cond_4ff
    const/16 v17, 0x0

    goto :goto_4fd

    :goto_502
    xor-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    :goto_506
    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v6, :cond_513

    iget-object v6, v8, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v6}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setFrozen(Z)V

    :cond_513
    if-eqz v0, :cond_51a

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_53d

    :cond_51a
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    goto :goto_53d

    :cond_51f
    invoke-virtual {v11, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_53d

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v6, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v6}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    if-eqz v0, :cond_539

    const/4 v6, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v13}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_53d

    :cond_539
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->show(Z)Z

    :cond_53d
    :goto_53d
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v0, :cond_564

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_564

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_564

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_55b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v0

    if-nez v0, :cond_564

    :cond_55b
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_564

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    :cond_564
    iget-boolean v0, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    if-nez v0, :cond_58b

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_58b

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_58b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_58b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_58b

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_58b

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    :cond_58b
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz v0, :cond_591

    const/4 v0, 0x1

    goto :goto_592

    :cond_591
    const/4 v0, 0x0

    :goto_592
    if-eqz v0, :cond_600

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_5a4
    if-ltz v7, :cond_600

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

    if-nez v10, :cond_5bf

    goto :goto_5fd

    :cond_5bf
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_5d0

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_5d0

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_5d0

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_5d0

    goto :goto_5fd

    :cond_5d0
    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_5df

    iget v10, v9, Landroid/graphics/Insets;->left:I

    if-lez v10, :cond_5df

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    :cond_5df
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_5e9

    iget v10, v9, Landroid/graphics/Insets;->top:I

    if-lez v10, :cond_5e9

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    :cond_5e9
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_5f3

    iget v10, v9, Landroid/graphics/Insets;->right:I

    if-lez v10, :cond_5f3

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    :cond_5f3
    iget-object v10, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_5fd

    iget v9, v9, Landroid/graphics/Insets;->bottom:I

    if-lez v9, :cond_5fd

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    :cond_5fd
    :goto_5fd
    add-int/lit8 v7, v7, -0x1

    goto :goto_5a4

    :cond_600
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    if-eqz v0, :cond_60f

    iget v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    or-int/2addr v0, v6

    iput v0, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    :cond_60f
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    iget-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    if-eq v0, v6, :cond_642

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v6, :cond_61f

    :cond_61d
    const/4 v6, 0x0

    goto :goto_635

    :cond_61f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v6

    if-eqz v6, :cond_62a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v6

    goto :goto_62e

    :cond_62a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v6

    :goto_62e
    if-eqz v6, :cond_61d

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez v6, :cond_61d

    const/4 v6, 0x1

    :goto_635
    if-eqz v6, :cond_642

    if-eqz v0, :cond_642

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_642

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    :cond_642
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x2000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_653

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_653

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    goto :goto_654

    :cond_653
    const/4 v13, 0x1

    :goto_654
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_65e

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    :cond_65e
    if-nez v5, :cond_662

    goto/16 :goto_925

    :cond_662
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v13, :cond_66c

    const/16 v13, 0x7d0

    if-ge v0, v13, :cond_66c

    const/4 v0, 0x1

    goto :goto_66d

    :cond_66c
    const/4 v0, 0x0

    :goto_66d
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_6af

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_680

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_680

    const/4 v6, 0x1

    goto :goto_681

    :cond_680
    const/4 v6, 0x0

    :goto_681
    if-eqz v6, :cond_69b

    iget-boolean v6, v2, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v6, :cond_699

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_69b

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_696

    const/4 v6, 0x1

    goto :goto_697

    :cond_696
    const/4 v6, 0x0

    :goto_697
    if-eqz v6, :cond_69b

    :cond_699
    const/4 v13, 0x1

    goto :goto_69d

    :cond_69b
    const/4 v13, 0x1

    goto :goto_6a0

    :goto_69d
    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    move v0, v13

    :goto_6a0
    if-eqz v0, :cond_6af

    if-nez v19, :cond_6af

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_6af

    and-int/2addr v5, v13

    if-eqz v5, :cond_6af

    iput-boolean v13, v2, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    :cond_6af
    if-eqz v0, :cond_6b9

    if-nez v19, :cond_6b9

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v5

    if-nez v5, :cond_6bf

    :cond_6b9
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7ef

    if-ne v5, v6, :cond_7f7

    :cond_6bf
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6ca

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_6ca

    const/4 v0, 0x1

    goto :goto_6cb

    :cond_6ca
    const/4 v0, 0x0

    :goto_6cb
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_6f9

    if-nez v0, :cond_6f9

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v0

    if-nez v0, :cond_6f9

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6f4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6f4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_6f4

    const/4 v0, 0x1

    goto :goto_6f5

    :cond_6f4
    const/4 v0, 0x0

    :goto_6f5
    if-nez v0, :cond_6f9

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :cond_6f9
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_77b

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_77b

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_77b

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_727

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_727

    const/4 v6, 0x0

    goto :goto_732

    :cond_727
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    :goto_732
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_77b

    if-eqz v6, :cond_77b

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x8

    iget-boolean v5, v2, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    if-eqz v5, :cond_75a

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    :cond_75a
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

    if-eqz v0, :cond_77b

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_77b
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_796

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_790

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_790

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_790
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_796

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    :cond_796
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_925

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object v1, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_7ed

    if-eqz v1, :cond_7ed

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v3

    if-eqz v3, :cond_7b6

    goto :goto_7ed

    :cond_7b6
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_7d1

    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7d4

    :cond_7d1
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    :goto_7d4
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7ed

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e1

    goto :goto_7ed

    :cond_7e1
    new-instance v13, Lcom/android/internal/statusbar/LetterboxDetails;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-direct {v13, v3, v5, v0}, Lcom/android/internal/statusbar/LetterboxDetails;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_7ee

    :cond_7ed
    :goto_7ed
    move-object v13, v4

    :goto_7ee
    if-eqz v13, :cond_925

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_925

    :cond_7f7
    const/4 v13, 0x1

    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    if-eqz v3, :cond_8f2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_80f

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_80f

    move v3, v13

    goto :goto_810

    :cond_80f
    const/4 v3, 0x0

    :goto_810
    if-nez v3, :cond_8f2

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8dc

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v3

    if-ge v3, v0, :cond_8dc

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

    if-nez v7, :cond_845

    :goto_842
    const/4 v6, 0x0

    goto/16 :goto_8d1

    :cond_845
    iget-object v7, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_84e

    goto :goto_842

    :cond_84e
    if-eqz v0, :cond_8bb

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_859

    goto :goto_8bb

    :cond_859
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/view/AppearanceRegion;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v8, v0, v9}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v0, v3, :cond_8b4

    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->left:I

    if-eq v0, v3, :cond_896

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

    :cond_896
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-eq v0, v3, :cond_8b4

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

    :cond_8b4
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_8b9
    move v6, v13

    goto :goto_8d1

    :cond_8bb
    :goto_8bb
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v10, 0x0

    invoke-direct {v3, v10, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_8b9

    :goto_8d1
    if-eqz v6, :cond_8dc

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8dc

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8dc
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_925

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_925

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_925

    iget-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_925

    :cond_8f2
    if-eqz v0, :cond_925

    if-nez v19, :cond_925

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8fe

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_925

    :cond_8fe
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_925

    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_91f

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_91f

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_91f
    iget-object v0, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_925

    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    :cond_925
    :goto_925
    return-void

    :pswitch_926  #0x0
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/wm/AccessibilityController;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v3, 0x400

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_93d

    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_93d
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_945
    iget-object v3, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_950

    goto :goto_951

    :cond_950
    const/4 v0, 0x0

    :goto_951
    monitor-exit v2
    :try_end_952
    .catchall {:try_start_945 .. :try_end_952} :catchall_9da

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_95b

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    :cond_95b
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_963
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    if-eqz v0, :cond_96e

    monitor-exit v3
    :try_end_968
    .catchall {:try_start_963 .. :try_end_968} :catchall_96c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9ce

    :catchall_96c
    move-exception v0

    goto :goto_9d5

    :cond_96e
    :try_start_96e
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_97f

    monitor-exit v3
    :try_end_97b
    .catchall {:try_start_96e .. :try_end_97b} :catchall_96c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9ce

    :cond_97f
    :try_start_97f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_98c
    if-ltz v2, :cond_9a0

    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-boolean v6, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    if-nez v6, :cond_99d

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_99d
    add-int/lit8 v2, v2, -0x1

    goto :goto_98c

    :cond_9a0
    iput-boolean v4, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    monitor-exit v3
    :try_end_9a3
    .catchall {:try_start_97f .. :try_end_9a3} :catchall_96c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    move v3, v4

    :goto_9ac
    if-ltz v2, :cond_9bd

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindows(Z)V

    iget-boolean v5, v5, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    and-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_9ac

    :cond_9bd
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_9c5
    iget-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    and-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/wm/AccessibilityController;->mAllObserversInitialized:Z

    monitor-exit v2
    :try_end_9cb
    .catchall {:try_start_9c5 .. :try_end_9cb} :catchall_9cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_9ce
    return-void

    :catchall_9cf
    move-exception v0

    :try_start_9d0
    monitor-exit v2
    :try_end_9d1
    .catchall {:try_start_9d0 .. :try_end_9d1} :catchall_9cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_9d5
    :try_start_9d5
    monitor-exit v3
    :try_end_9d6
    .catchall {:try_start_9d5 .. :try_end_9d6} :catchall_96c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9da
    move-exception v0

    :try_start_9db
    monitor-exit v2
    :try_end_9dc
    .catchall {:try_start_9db .. :try_end_9dc} :catchall_9da

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_data_9e0
    .packed-switch 0x0
        :pswitch_926  #00000000
        :pswitch_92  #00000001
        :pswitch_8e  #00000002
        :pswitch_59  #00000003
        :pswitch_2b  #00000004
        :pswitch_27  #00000005
        :pswitch_23  #00000006
        :pswitch_1f  #00000007
        :pswitch_1b  #00000008
        :pswitch_17  #00000009
    .end packed-switch

    :pswitch_data_9f8
    .packed-switch 0xf
        :pswitch_16a  #0000000f
        :pswitch_16a  #00000010
        :pswitch_16a  #00000011
    .end packed-switch
.end method
